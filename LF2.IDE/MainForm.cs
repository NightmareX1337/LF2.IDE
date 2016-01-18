using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Net;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Windows.Forms;

namespace LF2.IDE
{
	public partial class MainForm : Form
	{
		string[] args;
		public static Stopwatch stopWatch;

		public MainForm(string[] args)
		{
			Application.ThreadException += new System.Threading.ThreadExceptionEventHandler(this.UnhandledError);
			InitializeComponent();

			this.args = args;

			bool isLoaded = false;

			DesignSettings();

			if (File.Exists(Program.dockingPath))
			{
				try
				{
					dockPanel.LoadFromXml(Program.dockingPath, new WeifenLuo.WinFormsUI.Docking.DeserializeDockContent(DockingDeserializer));
					isLoaded = true;
				}
				catch (ArgumentException)
				{
					File.Delete(Program.dockingPath);
					if (File.Exists(Program.nearDockingPath))
					{
						try
						{
							dockPanel.LoadFromXml(Program.nearDockingPath, new WeifenLuo.WinFormsUI.Docking.DeserializeDockContent(DockingDeserializer));
							isLoaded = true;
						}
						catch (ArgumentException)
						{
							try
							{
								File.Delete(Program.nearDockingPath);
							}
							catch { }
						}
					}
				}
			}
			else if (File.Exists(Program.nearDockingPath))
			{
				try
				{
					dockPanel.LoadFromXml(Program.nearDockingPath, new WeifenLuo.WinFormsUI.Docking.DeserializeDockContent(DockingDeserializer));
					isLoaded = true;
				}
				catch (ArgumentException)
				{
					try
					{
						File.Delete(Program.nearDockingPath);
					}
					catch { }
				}
			}

			bool formEventLogLoaded = isLoaded,
				formDesignLoaded = isLoaded,
				formFrameLoaded = isLoaded,
				formShapeLoaded = isLoaded,
				solutionExplorerLoaded = isLoaded,
				mediaLoaded = isLoaded;

			if (formEventLog == null)
			{
				formEventLogLoaded = false;
				formEventLog = new FormEventLog();
			}
			if (formDesign == null)
			{
				formDesignLoaded = false;
				formDesign = new FormDesign(this);
			}
			if (formFrame == null)
			{
				formFrameLoaded = false;
				formFrame = new FormFrame(this);
			}
			if (formShape == null)
			{
				formShapeLoaded = false;
				formShape = new FormShape(this);
			}
			if (solutionExplorer == null)
			{
				solutionExplorerLoaded = false;
				solutionExplorer = new SolutionExplorer(this);
			}
			if (media == null)
			{
				mediaLoaded = false;
				media = new MediaPanel();
			}

			try
			{
				OpenWithImage(args, false);
			}
			catch (Exception ex)
			{
				formEventLog.Error(ex, "Startup Error");
			}

			if (!formDesignLoaded)
			{
				formDesign.Show(dockPanel);
				formDesign.AutoHidePortion = 550;
			}
			if (!formFrameLoaded)
			{
				formFrame.Show(dockPanel);
				formFrame.AutoHidePortion = 350;
			}
			if (!formShapeLoaded)
			{
				formShape.Show(dockPanel);
				formShape.AutoHidePortion = 300;
			}
			if (!mediaLoaded)
			{
				media.Show(dockPanel);
				media.AutoHidePortion = 300;
			}
			if (!formEventLogLoaded)
			{
				formEventLog.Show(dockPanel);
				formEventLog.AutoHidePortion = 250;
			}
			if (!solutionExplorerLoaded)
			{
				solutionExplorer.Show(dockPanel);
				solutionExplorer.AutoHidePortion = 300;
			}

			formDesign.checkBoxLinkage.Checked = Settings.Current.syncDesign;

			this.Bounds = Settings.Current.window;
			this.WindowState = Settings.Current.windowState;

			formEventLog.Log("Initialized: " + stopWatch.Elapsed, true);
			stopWatch.Restart();
		}

		public FormDesign formDesign;
		public FormFrame formFrame;
		public FormShape formShape;
		public SolutionExplorer solutionExplorer;
		public MediaPanel media;
		public FormEventLog formEventLog;

		public static Plugger<Plugin> Plugins = new Plugger<Plugin>();
		public static object PluginLock = new object();

		private void MainForm_Load(object sender, EventArgs e)
		{
			if (Settings.Current.checkUpdatesAuto)
			{
				backgroundWorker_UpdateChecker.RunWorkerAsync(false);
				checkForUpdatesToolStripMenuItem.Text = "Checking for Updates...";
			}

			if (Directory.Exists(Program.templateDir))
				foreach (string file in Directory.GetFiles(Program.templateDir))
					newToolStripButton.DropDownItems.Add(new ToolStripMenuItem(Path.GetFileNameWithoutExtension(file), null, TemplateClicked, Path.GetFullPath(file)));

			if (ActiveDocument != null)
			{
				lastActiveFrame = (lastActiveDoc = ActiveDocument).frames;
				if (lastActiveFrame != null && lastActiveFrame.Length > 0)
				{
					formDesign.numericUpDown_ImageIndex.Maximum =
					formFrame.numericUpDown_pic.Maximum =
					formShape.numericUpDown_ImageIndex.Maximum = lastActiveFrame.Length - 1;
					formDesign.tagBox.Image =
					formFrame.drawBox.Image =
					formShape.drawBox.Image = lastActiveFrame[0];
				}
				ActiveDocument.Scintilla.Focus();
				this.Activate();
			}
			if (File.Exists(Settings.Current.lfPath))
			{
				solutionExplorer.refreshToolStripButton.DisplayStyle = ToolStripItemDisplayStyle.Text;
				solutionExplorer.PopulateTreeView(solutionExplorer.DestinationFolder);
				formDesign.stopWatch.Start();
				formDesign.StartCaching();
			}

			formDesign.checkBoxLinkage.Checked = Settings.Current.syncDesign;

			formEventLog.Log("MainForm Loaded: " + stopWatch.Elapsed, true);
			stopWatch.Reset();

			backgroundWorker_Util.RunWorkerAsync();
			backgroundWorker_Plugin.RunWorkerAsync();
		}

		public WeifenLuo.WinFormsUI.Docking.DockPanel DockPanel { get { return dockPanel; } }

		private void DesignSettings()
		{
			try
			{
				Settings.Current.Reload();
				checkUpdatesAutoToolStripMenuItem.Checked = Settings.Current.checkUpdatesAuto;
				updateHistory();
			}
			catch (Exception ex)
			{
				formEventLog = new FormEventLog();
				formEventLog.Error(ex, "Settings Designer Error");
			}
		}

		readonly string felPersist = typeof(FormEventLog).FullName,
			ftPersist = typeof(FormDesign).FullName,
			ffPersist = typeof(FormFrame).FullName,
			fsPersist = typeof(FormShape).FullName,
			sePersist = typeof(SolutionExplorer).FullName,
			mpPersist = typeof(MediaPanel).FullName,
			docPersist = typeof(DocumentForm).FullName;

		WeifenLuo.WinFormsUI.Docking.DockContent DockingDeserializer(string persistString)
		{
			if (persistString == felPersist)
				return formEventLog = new FormEventLog();
			else if (persistString == ftPersist)
				return formDesign = new FormDesign(this);
			else if (persistString == ffPersist)
				return formFrame = new FormFrame(this);
			else if (persistString == fsPersist)
				return formShape = new FormShape(this);
			else if (persistString == sePersist)
				return solutionExplorer = new SolutionExplorer(this);
			else if (persistString == mpPersist)
				return media = new MediaPanel();
			else if (persistString == docPersist && Settings.Current.saveDocStates && docLoop < Settings.Current.documentSettings.Count)
			{
				DocSet ds = Settings.Current.documentSettings[docLoop++];
				if (!File.Exists(ds.filePath))
					return null;
				DocumentForm df = Open(ds.filePath, true);
				df.Scintilla.LineWrapping.Mode = ds.lineWrappingMode;
				df.Scintilla.Selection.Start = ds.selectionStart;
				df.Scintilla.Selection.End = ds.selectionEnd;
				df.Scintilla.EndOfLine.IsVisible = ds.showEndOfLineChars;
				df.Scintilla.Whitespace.Mode = ds.showWhiteSpaces ? ScintillaNET.WhitespaceMode.VisibleAlways : ScintillaNET.WhitespaceMode.Invisible;
				df.Scintilla.Lines.FirstVisibleIndex = ds.firstVisibleLine;
				return df;
			}
			else
				return null;
		}
		int docLoop = 0;

		public DocumentForm ActiveDocument { get { return dockPanel.ActiveDocument as DocumentForm; } }

		private void UnhandledError(object sender, System.Threading.ThreadExceptionEventArgs e)
		{
			formEventLog.Error(e.Exception, "UNHANDLED ERROR");
		}

		public void ErrorBlast(object sender, EventArgs e)
		{
			ErrorBlast(0);
		}

		private void ErrorBlast(int i)
		{
			if (i < 15)
				ErrorBlast(i + 1);
			else
				throw new ApplicationException("Debug purpose exception");
		}

		private void TemplateClicked(object sender, EventArgs e)
		{
			ToolStripMenuItem item = sender as ToolStripMenuItem;
			string file = item.Name;
			if (!File.Exists(file))
				newToolStripButton.DropDownItems.Remove(item);
			else
				OpenWithText(File.ReadAllText(file, Encoding.Default), Path.GetFileName(file));
		}

		private void openRecent(object sender, EventArgs e)
		{
			string fns = (sender as ToolStripMenuItem).Text;
			if (!File.Exists(fns))
			{
				MessageBox.Show("File '" + fns + "' not exists in target path", Program.Title);
				Settings.Current.recentFileHistory.Remove(fns);
				updateHistory();
			}
			else
				Open(fns, true);
		}

		private void exitToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.Close();
		}

		List<DocumentForm> toClose;
		private void MainForm_Closing(object sender, FormClosingEventArgs e)
		{
			toClose = new List<DocumentForm>(16);
			foreach (DocumentForm doc in dockPanel.Documents)
			{
				if (doc.Scintilla.Modified)
				{
					// Prompt if not saved
					string message = String.Format(
						CultureInfo.CurrentCulture,
						"The data in the {0} file has changed.{1}{2}Do you want to save the changes?",
						doc.TabText.TrimEnd(' ', '*'),
						Environment.NewLine,
						Environment.NewLine);

					DialogResult dr = MessageBox.Show(this, message, Program.Title, MessageBoxButtons.YesNoCancel, MessageBoxIcon.Exclamation);
					if (dr == DialogResult.Cancel)
					{
						// Stop closing
						e.Cancel = true;
						return;
					}
					else if (dr == DialogResult.Yes)
					{
						// Try to save before closing
						e.Cancel = !doc.Save();
						if (e.Cancel)
							return;
					}
					//else if(dr == DialogResult.No)
					//{
					//	toClose.Add(doc);
					//}
				}
				else if(!File.Exists(doc.FilePath))
				{
					toClose.Add(doc);
				}
			}
		}

		private void selectalltoolStripButton_Click(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
				ActiveDocument.Scintilla.Selection.SelectAll();
		}

		private void cutToolStripButton_Click(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
				ActiveDocument.Scintilla.Clipboard.Cut();
		}

		private void copyToolStripButton_Click(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
				ActiveDocument.Scintilla.Clipboard.Copy();
		}

		private void pasteToolStripButton_Click(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
				ActiveDocument.Scintilla.Selection.Text = Clipboard.GetText(TextDataFormat.Text);
		}

		private void undotoolStripButton_Click(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
				ActiveDocument.Scintilla.UndoRedo.Undo();
		}

		private void redotoolStripButton_Click(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
				ActiveDocument.Scintilla.UndoRedo.Redo();
		}

		public void addToHistory(string file)
		{
			if (!Settings.Current.recentFileHistory.Contains(file))
				Settings.Current.recentFileHistory.Add(file);
			else
			{
				Settings.Current.recentFileHistory.Remove(file);
				Settings.Current.recentFileHistory.Add(file);
			}
			if (Settings.Current.recentFileHistory.Count > 30)
				for (int i = Settings.Current.recentFileHistory.Count - 30; i >= 0; i--)
					Settings.Current.recentFileHistory.RemoveAt(i);
		}

		public void updateHistory()
		{
			openRecentToolStripMenuItem.DropDownItems.Clear();
			foreach (string rf in Settings.Current.recentFileHistory)
			{
				ToolStripMenuItem tsmi = new ToolStripMenuItem(rf);
				tsmi.Click += new EventHandler(openRecent);
				openRecentToolStripMenuItem.DropDownItems.Insert(0, tsmi);
			}
			openRecentToolStripMenuItem.Enabled = clearRecentHistoryToolStripMenuItem.Enabled = openRecentToolStripMenuItem.DropDownItems.Count > 0;
		}

		private void openToolStripButton_Click(object sender, EventArgs e)
		{
			if (openFileDialogData.ShowDialog() == DialogResult.OK)
				Open(openFileDialogData.FileNames);
			updateHistory();
		}

		FormWindowState lastWindowState = FormWindowState.Maximized;

		public void NewInstance(ReadOnlyCollection<string> argmeter)
		{
			OpenWithImage(argmeter, true);
			this.Activate();
			this.WindowState = lastWindowState;
		}

		private void saveToolStripButton_Click(object sender, EventArgs e)
		{
			if (ActiveDocument != null && (ActiveDocument.Scintilla.Modified || string.IsNullOrEmpty(ActiveDocument.FilePath)))
				ActiveDocument.Save();
		}

		private void erasetoolStripButton_Click(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
			{
				ActiveDocument.Scintilla.Selection.SelectAll();
				ActiveDocument.Scintilla.Selection.Text = "";
			}
		}

		private void saveasToolStripButton_Click(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
				ActiveDocument.SaveAs();
		}

		void FindtoolStripButton_Click(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
			{
				ActiveDocument.Scintilla.FindReplace.ShowFind();
			}
		}

		void CutToolStripMenuItem_Click(object sender, System.EventArgs e)
		{
			cutToolStripButton.PerformClick();
		}

		void CopyToolStripMenuItem_Click(object sender, EventArgs e)
		{
			copyToolStripButton.PerformClick();
		}

		void PasteToolStripMenuItem_Click(object sender, EventArgs e)
		{
			pasteToolStripButton.PerformClick();
		}

		void SaveToolStripMenuItem_Click(object sender, EventArgs e)
		{
			saveAllToolStripButton.PerformClick();
		}

		void SettingsToolStripButton_Click(object sender, EventArgs e)
		{
			FormSettings fs = new FormSettings();
			fs.ShowDialog();
		}

		void NewToolStripButton_Click(object sender, EventArgs e)
		{
			OpenWithText("", null);
		}

		void saveAllToolStripButton_Click(object sender, EventArgs e)
		{
			foreach (DocumentForm doc in dockPanel.Documents)
			{
				if (doc.Scintilla.Modified)
					doc.Save();
			}
		}

		void ReplaceToolStripButton_Click(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
			{
				ActiveDocument.Scintilla.FindReplace.ShowReplace();
			}
		}

		void DebugToolStripMenuItemClick(object sender, EventArgs e)
		{
			string lfpath = Settings.Current.lfPath;
			if (File.Exists(lfpath))
			{
				lfProc = ExecuteLF2(true);
			}
		}

		void RestartToolStripMenuItemClick(object sender, EventArgs e)
		{
			foreach (Process prc in Process.GetProcessesByName(Path.GetFileNameWithoutExtension(Settings.Current.lfPath)))
			{
				if (!prc.HasExited)
				{
					prc.CloseMainWindow();
					ProcessStartInfo psi = new ProcessStartInfo(Settings.Current.lfPath);
					psi.WorkingDirectory = Path.GetDirectoryName(Settings.Current.lfPath);
					Process.Start(psi);
				}
			}
		}

		[DllImport("user32.dll", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Winapi)]
		public static extern BOOL SetWindowPos(IntPtr hWnd, IntPtr hWndInsertAfter, int X, int Y, int cx, int cy, uint uFlags);

		[DllImport("user32.dll", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Winapi)]
		public static extern BOOL GetWindowRect(IntPtr hWnd, ref RECT lpRect);

		[DllImport("user32.dll", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Winapi)]
		public static extern BOOL SetCursorPos(int X, int Y);

		[DllImport("user32.dll", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Winapi)]
		public static extern IntPtr SendMessage(IntPtr hWnd, WM Msg, IntPtr wParam, IntPtr lParam);

		[StructLayout(LayoutKind.Sequential)]
		public struct RECT
		{
			public int left;
			public int top;
			public int right;
			public int bottom;
		}

		public enum WM : int
		{
			MOUSEMOVE = 512,
			LBUTTONDOWN = 513,
			LBUTTONUP = 514
		}

		public const BOOL FALSE = BOOL.FALSE;
		public const BOOL TRUE = BOOL.TRUE;

		public enum BOOL : int
		{
			FALSE,
			TRUE
		}

		/// <summary>
		/// Sends left mouse button click message to given window handle at {X=400, Y=230} 
		/// LF2 somehow does not respond to WM_LBUTTONDOWN x,y coordinates so the function 
		/// manually put cursor into the right place.
		/// </summary>
		bool SendGameStartMsg(IntPtr window)
		{
			RECT rect = new RECT();
			if(GetWindowRect(window, ref rect) == FALSE)
				return false;

			//SendMessageA(window, WM_MOUSEMOVE, 15073680, 1); // Not working
			IntPtr xy = new IntPtr(400 | (230 << 16));
			if (SetCursorPos(rect.left + 400, rect.top + 25 + 230) == TRUE)
				SendMessage(window, WM.LBUTTONDOWN, xy, IntPtr.Zero);
			else
				return false;

			return true;
		}

		void StartToolStripMenuItemClick(object sender, EventArgs e)
		{
			string lfpath = Settings.Current.lfPath;
			if (File.Exists(lfpath))
			{
				ExecuteLF2(false);
			}
		}

		public Process ExecuteLF2(bool startTheGame)
		{
			ProcessStartInfo psi = new ProcessStartInfo();
			psi.FileName = Settings.Current.lfPath;
			psi.WorkingDirectory = Path.GetDirectoryName(Settings.Current.lfPath);
			Process lfp = Process.Start(psi);
			Thread.Sleep(500);
			SetWindowPos(lfp.MainWindowHandle, IntPtr.Zero, (Screen.PrimaryScreen.WorkingArea.Width - 800) / 2, (Screen.PrimaryScreen.WorkingArea.Height - 578) / 2, 800, 578, 0);
			if (startTheGame)
			{
				Thread.Sleep(500);
				SendGameStartMsg(lfp.MainWindowHandle);
			}
			return lfp;
		}

		public static Process lfProc = null;

		void CloseAllToolStripMenuItemClick(object sender, EventArgs e)
		{
			foreach (Process prc in Process.GetProcessesByName(Path.GetFileNameWithoutExtension(Settings.Current.lfPath)))
			{
				if (!prc.HasExited)
					prc.Kill();
			}
		}

		void CloseToolStripMenuItemClick(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
			{
				ActiveDocument.Close();
			}
		}

		void MainForm_FormClosed(object sender, FormClosedEventArgs e)
		{
			closed = true;
			foreach (DocumentForm doc in toClose)
			{
				doc.Scintilla.Modified = false;
				doc.Close();
			}
			if(Settings.Current.saveDocStates)
			{
				Settings.Current.documentSettings = new List<DocSet>(dockPanel.DocumentsCount);
				foreach (var doc in dockPanel.Documents)
				{
					DocumentForm df = doc as DocumentForm;
					if (!File.Exists(df.FilePath))
						continue;
					Settings.Current.documentSettings.Add(
						new DocSet()
						{
							filePath = df.FilePath,
							firstVisibleLine = df.Scintilla.Lines.FirstVisibleIndex,
							lineWrappingMode = df.Scintilla.LineWrapping.Mode,
							selectionStart = df.Scintilla.Selection.Start,
							selectionEnd = df.Scintilla.Selection.End,
							showEndOfLineChars = df.Scintilla.EndOfLine.IsVisible,
							showWhiteSpaces = df.Scintilla.Whitespace.Mode == ScintillaNET.WhitespaceMode.VisibleAlways
						});
				}
			}
			Settings.Current.windowState = lastWindowState;
			Settings.Current.window = this.WindowState != FormWindowState.Normal ? this.RestoreBounds : this.Bounds;
			Settings.Current.Save();
			try
			{
				dockPanel.SaveAsXml(Program.dockingPath);
			}
			catch (Exception ex)
			{
				formEventLog.Error(ex, "Xml Serialization Error");
			}
			try
			{
				foreach (string plugin in Settings.Current.activePlugins)
					Plugins[plugin].OnExit(e.CloseReason);
			}
			catch (Exception ex)
			{
				formEventLog.Error(ex, "Plugin Manager Error");
			}
		}

		public Bitmap[] lastActiveFrame;
		public DocumentForm lastActiveDoc;
		bool closed = false;

		void DockPanel_ActiveDocumentChanged(object sender, EventArgs e)
		{
			if (closed) return;
			if (fidl != null && fidl.Visible)
				fidl.FreshLoad();
			if (ActiveDocument != null)
			{
				if (ActiveDocument.Scintilla.LineWrapping.Mode == ScintillaNET.LineWrappingMode.None)
				{
					textWrapToolStripButton.Checked = false;
				}
				else
				{
					textWrapToolStripButton.Checked = true;
				}
				textWrapToolStripButton.ToolTipText = "Wrap: " + ActiveDocument.Scintilla.LineWrapping.Mode.ToString();
				showAllCharsToolStripButton.Checked = ActiveDocument.Scintilla.EndOfLine.IsVisible || ActiveDocument.Scintilla.Whitespace.Mode == ScintillaNET.WhitespaceMode.VisibleAlways;

				toolStripIncrementalSearcher.Scintilla = ActiveDocument.Scintilla;
				if (ActiveDocument.frames != null)
				{
					lastActiveDoc = ActiveDocument;
					lastActiveFrame = lastActiveDoc.frames;
					formDesign.EditIn();
					formDesign.numericUpDown_ImageIndex.Maximum = 
					formFrame.numericUpDown_pic.Maximum = 
					formShape.numericUpDown_ImageIndex.Maximum = lastActiveFrame.Length - 1;
					formDesign.EditOut();
					formFrame.numericUpDown_pic.Value = lastActiveDoc.frameIndexFrame;
					formShape.numericUpDown_ImageIndex.Value = lastActiveDoc.frameIndexShape;
					formDesign.tagBox.Image = lastActiveFrame[lastActiveDoc.frameIndexTag];
					formFrame.drawBox.Image = lastActiveFrame[lastActiveDoc.frameIndexFrame];
					formShape.drawBox.Image = lastActiveFrame[lastActiveDoc.frameIndexShape];
				}
				ActiveDocument.SyncToDesign(true);
			}
			else
				toolStripIncrementalSearcher.Scintilla = null;
		}

		void ToolStripLabelIndex_Click(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
			{
				if (frameIndexToolStripTextBox.Text.Trim() == "") return;
				ScintillaNET.Range rng = ActiveDocument.Scintilla.FindReplace.Find(new Regex("(<frame>) (" + frameIndexToolStripTextBox.Text + " )"));
				if (rng != null)
				{
					ActiveDocument.Scintilla.GoTo.Position(rng.Start);
					ActiveDocument.Scintilla.GoTo.Line(ActiveDocument.Scintilla.Lines.Current.Number + 1);
					ActiveDocument.Activate();
					ActiveDocument.Scintilla.Focus();
				}
			}
		}

		void ToolStripLabelCaption_Click(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
			{
				if (frameCaptionToolStripComboBox.Text.Trim() == "") return;
				ScintillaNET.Range rng = ActiveDocument.Scintilla.FindReplace.Find(new Regex(@"(<frame>) ([1-3][0-9][0-9]|[1-9][0-9]|[0-9]) (" + frameCaptionToolStripComboBox.Text + ")(\n)")) == null ? ActiveDocument.Scintilla.FindReplace.Find(new Regex(@"(<frame>) ([1-3][0-9][0-9]|[1-9][0-9]|[0-9]) (" + frameCaptionToolStripComboBox.Text + ")(\r\n)")) : ActiveDocument.Scintilla.FindReplace.Find(new Regex(@"(<frame>) ([1-3][0-9][0-9]|[1-9][0-9]|[0-9]) (" + frameCaptionToolStripComboBox.Text + ")(\n)"));
				if (rng != null)
				{
					ActiveDocument.Scintilla.GoTo.Position(rng.Start);
					ActiveDocument.Scintilla.GoTo.Line(ActiveDocument.Scintilla.Lines.Current.Number + 1);
					ActiveDocument.Activate();
					ActiveDocument.Scintilla.Focus();
				}
			}
		}

		void ToolStripButtonLine_Click(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
			{
				int o;
				if (!int.TryParse(lineNumberToolStripTextBox.Text, out o)) return;
				ActiveDocument.Scintilla.GoTo.Line(o - 1);
				ActiveDocument.Activate();
				ActiveDocument.Scintilla.Focus();
			}
		}

		void LanguageSettingsToolStripMenuItemClick(object sender, EventArgs e)
		{
			foreach (DocumentForm pth in dockPanel.Documents)
			{
				if (pth.FilePath == Program.langPath)
				{
					pth.Activate();
					pth.Focus();
					return;
				}
			}
			if (File.Exists(Program.langPath))
				Open(Program.langPath, true);
		}

		static Regex dummyRgx = new Regex("<frame> *?399.*?<frame_end>", RegexOptions.Singleline | RegexOptions.RightToLeft);

		void DummyToolStripButtonClick(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
			{
				Match wew = dummyRgx.Match(ActiveDocument.Scintilla.Text);
				if (wew.Success)
					ActiveDocument.Scintilla.Selection.Text = wew.Value;
			}
		}

		void ToolStripButtonReopenClick(object sender, EventArgs e)
		{
			if (ActiveDocument == null || string.IsNullOrEmpty(ActiveDocument.FilePath)) return;

			string fns = ActiveDocument.FilePath;
			if (!File.Exists(fns))
			{
				MessageBox.Show("File '" + fns + "' not exists in target path", Program.Title);
				ActiveDocument.Scintilla.Modified = true;
				updateHistory();
			}
			else if (ActiveDocument.Scintilla.Modified)
			{
				string message = String.Format(
					"The data in the {0} file has changed.{1}{2}Do you want to discard the changes?",
					ActiveDocument.TabText.TrimEnd(' ', '*'),
					Environment.NewLine,
					Environment.NewLine);

				DialogResult dr = MessageBox.Show(this, message, Program.Title, MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation);
				if (dr == DialogResult.No)
					return;
				else
					Reopen(ActiveDocument);
			}
			else
				Reopen(ActiveDocument);
		}

		void Reopen(DocumentForm doc)
		{
			string file = doc.FilePath;
			if (file.EndsWith(".dat"))
			{
				doc.Scintilla.Text = "";
				doc.Scintilla.AppendText(LF2DataUtils.Decrypt(file));
				doc.Scintilla.UndoRedo.EmptyUndoBuffer();
				doc.Scintilla.Modified = false;
			}
			else
			{
				doc.Scintilla.Text = "";
				doc.Scintilla.AppendText(File.ReadAllText(file, Encoding.Default));
				doc.Scintilla.UndoRedo.EmptyUndoBuffer();
				doc.Scintilla.Modified = false;
			}
			doc.SetLanguage();
		}

		void AboutToolStripButtonClick(object sender, EventArgs e)
		{
			AboutForm af = new AboutForm();
			af.ShowDialog();
		}

		void ExitToolStripMenuItemClick(object sender, EventArgs e)
		{
			Close();
		}

		void SelectAllToolStripMenuItemClick(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
				ActiveDocument.Scintilla.Selection.SelectAll();
		}

		void SearchToolStripMenuItemClick(object sender, EventArgs e)
		{
			Process.Start(Program.webPage);
		}

		void AlgorithmToolStripMenuItemClick(object sender, EventArgs e)
		{
			OpenWithText(Properties.Resources.DataAlgorithm, "DataAlgorithm.cs");
		}
		void ToolStripButtonzinClick(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
				ActiveDocument.Scintilla.Zoom = Math.Min(Math.Max(-7, ActiveDocument.Scintilla.Zoom + 1), 20);
		}

		void ToolStripButtonzoutClick(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
				ActiveDocument.Scintilla.Zoom = Math.Min(Math.Max(-7, ActiveDocument.Scintilla.Zoom - 1), 20);
		}

		void ToolStripButtonwwClick(object sender, EventArgs e)
		{
			if (ActiveDocument.Scintilla.LineWrapping.Mode == ScintillaNET.LineWrappingMode.None)
			{
				ActiveDocument.Scintilla.LineWrapping.Mode = ScintillaNET.LineWrappingMode.Word;
				textWrapToolStripButton.Checked = true;
			}
			else
			{
				ActiveDocument.Scintilla.LineWrapping.Mode = ScintillaNET.LineWrappingMode.None;
				textWrapToolStripButton.Checked = false;
			}
			textWrapToolStripButton.ToolTipText = "Wrap: " + ActiveDocument.Scintilla.LineWrapping.Mode.ToString();
		}

		void ToolStripButtoneolClick(object sender, EventArgs e)
		{
			ActiveDocument.Scintilla.Whitespace.Mode = showAllCharsToolStripButton.Checked ? ScintillaNET.WhitespaceMode.VisibleAlways : ScintillaNET.WhitespaceMode.Invisible;
			ActiveDocument.Scintilla.EndOfLine.IsVisible = showAllCharsToolStripButton.Checked;
		}

		void ToolStripButtonFClick(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
			{
				foreach (ScintillaNET.Line linear in ActiveDocument.Scintilla.Lines)
				{
					if (linear.IsFoldPoint && linear.FoldExpanded && linear.Text.Contains(toolStripComboBoxF.Text))
					{
						linear.ToggleFoldExpanded();
					}
				}
			}
		}

		void ToolStripButtonUFClick(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
			{
				foreach (ScintillaNET.Line linear in ActiveDocument.Scintilla.Lines)
				{
					if (linear.IsFoldPoint && !linear.FoldExpanded && linear.Text.Contains(toolStripComboBoxUF.Text))
					{
						linear.ToggleFoldExpanded();
					}
				}
			}
		}

		void ShowMediaWindowToolStripMenuItemClick(object sender, EventArgs e)
		{
			try
			{
				if ((media.DockState & (WeifenLuo.WinFormsUI.Docking.DockState.DockBottomAutoHide | WeifenLuo.WinFormsUI.Docking.DockState.DockLeftAutoHide | WeifenLuo.WinFormsUI.Docking.DockState.DockRightAutoHide | WeifenLuo.WinFormsUI.Docking.DockState.DockTopAutoHide)) != 0)
					dockPanel.ActiveAutoHideContent = media;
			}
			catch (InvalidOperationException) { }
			media.Show();
		}

		void ShowSolutionWindowToolStripMenuItemClick(object sender, EventArgs e)
		{
			try
			{
				if ((solutionExplorer.DockState & (WeifenLuo.WinFormsUI.Docking.DockState.DockBottomAutoHide | WeifenLuo.WinFormsUI.Docking.DockState.DockLeftAutoHide | WeifenLuo.WinFormsUI.Docking.DockState.DockRightAutoHide | WeifenLuo.WinFormsUI.Docking.DockState.DockTopAutoHide)) != 0)
					dockPanel.ActiveAutoHideContent = solutionExplorer;
			}
			catch (InvalidOperationException) { }
			solutionExplorer.Show();
		}

		void ShowTagWindowToolStripMenuItemClick(object sender, EventArgs e)
		{
			try
			{
				if ((formDesign.DockState & (WeifenLuo.WinFormsUI.Docking.DockState.DockBottomAutoHide | WeifenLuo.WinFormsUI.Docking.DockState.DockLeftAutoHide | WeifenLuo.WinFormsUI.Docking.DockState.DockRightAutoHide | WeifenLuo.WinFormsUI.Docking.DockState.DockTopAutoHide)) != 0)
					dockPanel.ActiveAutoHideContent = formDesign;
			}
			catch (InvalidOperationException) { }
			formDesign.Show();
		}

		void ShowFrameWindowToolStripMenuItemClick(object sender, EventArgs e)
		{
			try
			{
				if ((formFrame.DockState & (WeifenLuo.WinFormsUI.Docking.DockState.DockBottomAutoHide | WeifenLuo.WinFormsUI.Docking.DockState.DockLeftAutoHide | WeifenLuo.WinFormsUI.Docking.DockState.DockRightAutoHide | WeifenLuo.WinFormsUI.Docking.DockState.DockTopAutoHide)) != 0)
					dockPanel.ActiveAutoHideContent = formFrame;
			}
			catch (InvalidOperationException) { }
			formFrame.Show();
		}

		void ShowShapeWindowToolStripMenuItemClick(object sender, EventArgs e)
		{
			try
			{
				if ((formShape.DockState & (WeifenLuo.WinFormsUI.Docking.DockState.DockBottomAutoHide | WeifenLuo.WinFormsUI.Docking.DockState.DockLeftAutoHide | WeifenLuo.WinFormsUI.Docking.DockState.DockRightAutoHide | WeifenLuo.WinFormsUI.Docking.DockState.DockTopAutoHide)) != 0)
					dockPanel.ActiveAutoHideContent = formShape;
			}
			catch (InvalidOperationException) { }
			formShape.Show();
		}

		void ErrorLogToolStripMenuItemClick(object sender, EventArgs e)
		{
			if ((formEventLog.DockState & (WeifenLuo.WinFormsUI.Docking.DockState.DockBottomAutoHide | WeifenLuo.WinFormsUI.Docking.DockState.DockLeftAutoHide | WeifenLuo.WinFormsUI.Docking.DockState.DockRightAutoHide | WeifenLuo.WinFormsUI.Docking.DockState.DockTopAutoHide)) != 0)
				dockPanel.ActiveAutoHideContent = formEventLog;
			formEventLog.Show();
		}

		void ToolStripButtonQuickCheckedChanged(object sender, EventArgs e)
		{
			toolStripIncrementalSearcher.Enabled = quickToolStripButton.Checked;
		}


		void ResetCurrentZoomToolStripMenuItemClick(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
				ActiveDocument.Scintilla.Zoom = 0;
		}

		void ResetAllDocumentsZoomingToolStripMenuItemClick(object sender, EventArgs e)
		{
			foreach (DocumentForm doc in dockPanel.Documents)
			{
				doc.Scintilla.Zoom = 0;
			}
		}

		void DownloadPageToolStripMenuItemClick(object sender, EventArgs e)
		{
			Process.Start(Program.downloadPage);
		}

		void ToolStripButtonExportToHtmlClick(object sender, EventArgs e)
		{
			if (ActiveDocument != null)
				OpenWithText(ActiveDocument.Scintilla.ExportHtml(), Path.GetFileNameWithoutExtension(ActiveDocument.TabText.TrimEnd(' ', '*')) + ".html");
		}

		void RefreshAllToolStripMenuItemClick(object sender, EventArgs e)
		{
			if (Settings.Current.lfPath == null || !File.Exists(Settings.Current.lfPath))
			{
				FormSettings f = new FormSettings();
			re:
				if (f.ShowDialog(this) == DialogResult.OK)
				{
					if (Settings.Current.lfPath == null || !File.Exists(Settings.Current.lfPath))
						goto re;
				}
				else
					return;
			}
			try
			{
				foreach (DocumentForm doc in dockPanel.Documents)
				{
					if (doc.TabText.TrimEnd(' ', '*').EndsWith(".dat"))
					{
						doc.ParseFiles(Path.GetDirectoryName(Settings.Current.lfPath));
						doc.ParseFrames();
					}
				}
				lastActiveFrame = ActiveDocument.frames;
				if (lastActiveFrame != null && lastActiveFrame.Length > 0)
				{
					formDesign.numericUpDown_ImageIndex.Maximum =
					formFrame.numericUpDown_pic.Maximum =
					formShape.numericUpDown_ImageIndex.Maximum = lastActiveFrame.Length - 1;
					formDesign.numericUpDown_ImageIndex.Value = formFrame.numericUpDown_pic.Value = formShape.numericUpDown_ImageIndex.Value = 0;
					formDesign.tagBox.Image =
					formFrame.drawBox.Image =
					formShape.drawBox.Image = lastActiveFrame[0];
				}
			}
			catch (Exception ex)
			{
				formEventLog.Error(ex, "Parsing Error");
			}
		}

		void RefreshCurrentToolStripMenuItemClick(object sender, EventArgs e)
		{
			if (Settings.Current.lfPath == null || !File.Exists(Settings.Current.lfPath))
			{
				FormSettings f = new FormSettings();
			re:
				if (f.ShowDialog(this) == DialogResult.OK)
				{
					if (Settings.Current.lfPath == null || !File.Exists(Settings.Current.lfPath))
						goto re;
				}
				else
					return;
			}
			try
			{
				ActiveDocument.ParseFiles(Path.GetDirectoryName(Settings.Current.lfPath));
				ActiveDocument.ParseFrames();
				lastActiveFrame = ActiveDocument.frames;
				if (lastActiveFrame != null && lastActiveFrame.Length > 0)
				{
					formDesign.numericUpDown_ImageIndex.Maximum =
					formFrame.numericUpDown_pic.Maximum =
					formShape.numericUpDown_ImageIndex.Maximum = lastActiveFrame.Length - 1;
					formDesign.numericUpDown_ImageIndex.Value = formFrame.numericUpDown_pic.Value = formShape.numericUpDown_ImageIndex.Value = 0;
					formDesign.tagBox.Image =
					formFrame.drawBox.Image =
					formShape.drawBox.Image = lastActiveFrame[0];
				}
			}
			catch (Exception ex)
			{
				formEventLog.Error(ex, "Parsing Error");
			}
		}

		void MainFormResize(object sender, EventArgs e)
		{
			if (this.WindowState != FormWindowState.Minimized)
				lastWindowState = this.WindowState;
		}

		//void BackgroundWorkerLF2RecorderDoWork(object sender, System.ComponentModel.DoWorkEventArgs e)
		//{
		//	Process lfp = (Process)e.Argument;
		//	while (lfp.MainWindowHandle == IntPtr.Zero)
		//		if (backgroundWorkerLF2Recorder.CancellationPending)
		//		{
		//			e.Cancel = true;
		//			return;
		//		}
		//	while (lfp.MainWindowHandle != IntPtr.Zero)
		//		record.Enqueue(CaptureWindow(lfp.MainWindowHandle));
		//}

		//void BackgroundWorkerLF2RecorderRunWorkerCompleted(object sender, System.ComponentModel.RunWorkerCompletedEventArgs e)
		//{

		//}

		//static Random randomizer = new Random();

		//void BackgroundWorkerRecordStreamerDoWork(object sender, System.ComponentModel.DoWorkEventArgs e)
		//{
		//	string file = e.Argument + "record" + randomizer.Next() + ".avi";
		//	AviUtils.AviManager avi = new AviUtils.AviManager(file, true);
		//}

		//void BackgroundWorkerRecordStreamerRunWorkerCompleted(object sender, System.ComponentModel.RunWorkerCompletedEventArgs e)
		//{

		//}

		private void argsTransClick(object sender, EventArgs e)
		{
			FormTransparencyTools ftt = new FormTransparencyTools(openFileDialog_Image.FileName, this);
			ftt.Show(this);
		}

		private void argsPixClick(object sender, EventArgs e)
		{
			FormImageSaver fis = new FormImageSaver(openFileDialog_Image.FileName, true, this);
			fis.ShowDialog(this);
		}

		private void argsMirClick(object sender, EventArgs e)
		{
			FormSpriteMirrorer fsm = new FormSpriteMirrorer(openFileDialog_Image.FileName, this);
			fsm.Show(this);
		}

		void TransparencyToolToolStripMenuItemClick(object sender, EventArgs e)
		{
			if (openFileDialog_Image.ShowDialog() == DialogResult.OK)
			{
				FormTransparencyTools ftt = new FormTransparencyTools(openFileDialog_Image.FileName, this);
				ftt.Show(this);
			}
		}

		void PixelFormatterToolStripMenuItemClick(object sender, EventArgs e)
		{
			if (openFileDialog_Image.ShowDialog() == DialogResult.OK)
			{
				FormImageSaver fis = new FormImageSaver(openFileDialog_Image.FileName, true, this);
				fis.ShowDialog(this);
			}
		}

		void SpriteMirrorerToolStripMenuItemClick(object sender, EventArgs e)
		{
			if (openFileDialog_Image.ShowDialog() == DialogResult.OK)
			{
				FormSpriteMirrorer fsm = new FormSpriteMirrorer(openFileDialog_Image.FileName, this);
				fsm.Show(this);
			}
		}

		private void mirrorAllSpritesInADirectoryToolStripMenuItem_Click(object sender, EventArgs e)
		{
			folderBrowserDialog_Sprite.SelectedPath = Path.GetDirectoryName(Settings.Current.lfPath);
			if(folderBrowserDialog_Sprite.ShowDialog() == DialogResult.OK)
			{
				string path = folderBrowserDialog_Sprite.SelectedPath;
				try
				{
					var fs = Directory.EnumerateFiles(path, "*.bmp", Directory.Exists(path + "\\" + "sys") ? SearchOption.AllDirectories : SearchOption.TopDirectoryOnly);
					foreach (string sprite in fs)
					{
						string fileName = Path.GetFileNameWithoutExtension(sprite), 
							fileDir = Path.GetDirectoryName(sprite), 
							file = Path.GetFileName(sprite), 
							mirrored = fileDir + "\\" + fileName + "_mirror.bmp";

						if (file.EndsWith("_mirror.bmp") || File.Exists(mirrored) || file.EndsWith("_s.bmp") || file.EndsWith("_f.bmp") || file == "s.bmp" || file == "face.bmp")
							continue;
						using (Bitmap bmp = new Bitmap(sprite))
						{
							bmp.RotateFlip(RotateFlipType.RotateNoneFlipX);
							bmp.Save(mirrored, System.Drawing.Imaging.ImageFormat.Bmp);
						}
					}
				}
				catch(Exception ex)
				{
					formEventLog.Error(ex, "Sprite Mirroring Error");
				}
			}
		}

		void MainFormDragEnter(object sender, DragEventArgs e)
		{
			if (e.Data.GetDataPresent(DataFormats.FileDrop))
				e.Effect = DragDropEffects.Copy;
			else
				e.Effect = DragDropEffects.None;
		}

		public void MainFormDragDrop(object sender, DragEventArgs e)
		{
			if (!e.Data.GetDataPresent(DataFormats.FileDrop))
				return;

			OpenWithImage(e.Data.GetData(DataFormats.FileDrop) as string[], false);
		}

		public DocumentForm Open(string file, bool updateHistory)
		{
			DocumentForm doc;
			if (file.EndsWith(".dat"))
			{
				doc = new DocumentForm(this);
				doc.Scintilla.AppendText(LF2DataUtils.Decrypt(file));
				doc.Scintilla.UndoRedo.EmptyUndoBuffer();
				doc.Scintilla.Modified = false;
				doc.TabText = Path.GetFileName(file);
				doc.FilePath = file;
				doc.Show(dockPanel);
			}
			else
			{
				doc = new DocumentForm(this);
				doc.FilePath = file;
				doc.TabText = Path.GetFileName(file);
				doc.Scintilla.AppendText(File.ReadAllText(file, Encoding.Default));
				doc.Scintilla.UndoRedo.EmptyUndoBuffer();
				doc.Scintilla.Modified = false;
				doc.Show(dockPanel);
			}
			addToHistory(file);
			if (updateHistory)
				this.updateHistory();
			return doc;
		}

		public void Open(IEnumerable<string> files)
		{
			foreach (string file in files)
				Open(file, false);

			updateHistory();
		}

		public bool OpenWithImage(string file, bool updateHistory)
		{
			bool arg = false;
			if (file.EndsWith(".dat"))
			{
				DocumentForm doc = new DocumentForm(this);
				doc.Scintilla.AppendText(LF2DataUtils.Decrypt(file));
				doc.Scintilla.UndoRedo.EmptyUndoBuffer();
				doc.Scintilla.Modified = false;
				doc.TabText = Path.GetFileName(file);
				doc.FilePath = file;
				doc.Show(dockPanel);
			}
			else if (file.EndsWith(".bmp") || file.EndsWith(".dib") || file.EndsWith(".png") || file.EndsWith(".jpg") || file.EndsWith(".jpeg") || file.EndsWith(".jpe") || file.EndsWith(".jfif") || file.EndsWith(".gif") || file.EndsWith(".emf") || file.EndsWith(".tif") || file.EndsWith(".tiff") || file.EndsWith(".wmf"))
			{
				ToolStripMenuItem item = new ToolStripMenuItem(Path.GetFileName(file)),
				trans = new ToolStripMenuItem("Make Transparent"),
				pix = new ToolStripMenuItem("Change Pixel Format"),
				mir = new ToolStripMenuItem("Make Mirrored");
				item.Tag = file;
				trans.Click += new EventHandler(argsTransClick);
				pix.Click += new EventHandler(argsPixClick);
				mir.Click += new EventHandler(argsMirClick);
				item.DropDownItems.Add(trans);
				item.DropDownItems.Add(pix);
				item.DropDownItems.Add(mir);
				argsToolStripMenuItem.DropDownItems.Add(item);
				arg = true;
			}
			else
			{
				DocumentForm doc = new DocumentForm(this);
				doc.Scintilla.AppendText(File.ReadAllText(file, Encoding.Default));
				doc.Scintilla.UndoRedo.EmptyUndoBuffer();
				doc.Scintilla.Modified = false;
				doc.TabText = Path.GetFileName(file);
				doc.FilePath = file;
				doc.Show(dockPanel);
			}
			if (!arg) addToHistory(file);
			if (updateHistory) this.updateHistory();
			return arg;
		}

		public void OpenWithImage(IEnumerable<string> files, bool skipFirst)
		{
			bool arg = false;
			IEnumerator<string> filer = files.GetEnumerator();

			if (skipFirst) filer.MoveNext();

			while (filer.MoveNext())
				arg |= OpenWithImage(filer.Current, false);

			updateHistory();

			this.Activate();
			if (arg) argsToolStripMenuItem.ShowDropDown();
		}

		public void OpenWithText(string text, string title, bool modified = false)
		{
			DocumentForm doc = new DocumentForm(this);

			doc.FilePath = null;

			if (!string.IsNullOrEmpty(title))
				doc.TabText = title;

			doc.Scintilla.AppendText(text);
			doc.Scintilla.UndoRedo.EmptyUndoBuffer();

			if (!string.IsNullOrEmpty(text))
				doc.Scintilla.Modified = modified;

			doc.Show(dockPanel);
		}

		void CheckForUpdatesToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (backgroundWorker_UpdateChecker.IsBusy)
				MessageBox.Show("Still checking for updates...");
			else
				backgroundWorker_UpdateChecker.RunWorkerAsync(true);

			checkForUpdatesToolStripMenuItem.Text = "&Checking for Updates...";
		}

		public class Updater
		{
			public UpdateState state;
			public string
				version,
				currentVersion,
				preVersion,
				downloadPage,
				webPage;
		}

		public enum UpdateState : byte
		{
			None,
			Release,
			PreRelease,
			ReleaseAndPre,
			Developer,
			DeveloperPre
		}

		char[] liner = { '\r', '\n' };

		public Updater CheckForUpdates()
		{
			WebClient wc = new WebClient();
			string[] wer = wc.DownloadString(Program.updateInfoLink).Split(liner, StringSplitOptions.RemoveEmptyEntries);
			string ver = wer[0],
				prever = wer[2],
				down = wer[5],
				web = wer[4],
				verS = wer[1],
				preverS = wer[3],
				curS = Application.ProductVersion;

			string vs = AboutForm.AssemblyVersion;
			
			Version version = new Version(ver),
				preversion = new Version(prever),
				current = new Version(vs.Substring(0, vs.LastIndexOf('.')));

			Updater up = new Updater() { downloadPage = down, version = verS, preVersion = preverS, currentVersion = curS, webPage = web };

			if (current > version)
			{
				if (current < preversion)
				{
					up.state = UpdateState.DeveloperPre;
				}
				else if (current == preversion)
				{
					if (Program.preRelease)
						up.state = UpdateState.None;
					else
						up.state = UpdateState.PreRelease;
				}
				else
					up.state = UpdateState.Developer;
				return up;
			}
			else if (current == version)
			{
				if (current < preversion)
				{
					up.state = UpdateState.PreRelease;
				}
				else if (current == preversion)
				{
					if (Program.preRelease)
						up.state = UpdateState.None;
					else
						up.state = UpdateState.PreRelease;
				}
				else
					up.state = UpdateState.None;
				return up;
			}
			else
			{
				if (current < preversion)
				{
					up.state = UpdateState.ReleaseAndPre;
				}
				else
				{
					up.state = UpdateState.Release;
				}
				return up;
			}
		}

		abstract class Notificable
		{
			public bool notify;
		}

		class UpdateInfo : Notificable
		{
			public Updater update;

			public UpdateInfo(bool notify, Updater update)
			{
				this.notify = notify;
				this.update = update;
			}
		}

		class UpdateError : Notificable
		{
			public Exception ex;

			public UpdateError(bool notify, Exception ex)
			{
				this.notify = notify;
				this.ex = ex;
			}
		}

		void BackgroundUpdater_DoWork(object sender, DoWorkEventArgs e)
		{
			bool n = (bool)e.Argument;
			try
			{
				if (!n)
					Thread.Sleep(1000);
				e.Result = new UpdateInfo(n, CheckForUpdates());
			}
			catch (Exception ex)
			{
				e.Result = new UpdateError(n, ex);
			}
		}

		void BackgroundUpdater_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
		{
			if (closed || formEventLog.Disposing || formEventLog.IsDisposed)
				return;
			checkForUpdatesToolStripMenuItem.Text = "&Check for Updates";
			bool notify = ((Notificable)e.Result).notify;
			if (e.Result is UpdateError)
			{
				Exception error = ((UpdateError)e.Result).ex;
				if (notify)
					formEventLog.Error(error, "Update Checking Error");
				else
					formEventLog.Log("Update Check Failed", true);
			}
			else if (e.Result is UpdateInfo)
			{
				UpdateInfo updateInfo = (UpdateInfo)e.Result;
				switch (updateInfo.update.state)
				{
					case UpdateState.None:
						if (updateInfo.notify)
							MessageBox.Show(this, "I believe you have the latest version :)", Program.Title);
						else
							formEventLog.Log("Everthing looks up-to-date", true);
						break;
					case UpdateState.Release:
						formEventLog.Log("\tCurrent Version: " + updateInfo.update.currentVersion + "\r\n\tLatest Version: " + updateInfo.update.version + "\r\n" + updateInfo.update.webPage + "\r\n" + updateInfo.update.downloadPage, "Update Found!", true);
						MessageBox.Show(this, "New update available!", Program.Title, MessageBoxButtons.OK, MessageBoxIcon.Information);
						formEventLog.Show();
						dockPanel.ActiveAutoHideContent = formEventLog;
						formEventLog.Activate();
						break;
					case UpdateState.PreRelease:
						formEventLog.Log("\tCurrent Version: " + updateInfo.update.currentVersion + "\r\n\tLatest Version: " + updateInfo.update.version + "\r\n\tLatest Pre-Release Version: " + updateInfo.update.preVersion + "\r\n" + updateInfo.update.webPage + "\r\n" + updateInfo.update.downloadPage, "Update Found! (Pre-Release)", true);
						if (updateInfo.notify)
						{
							MessageBox.Show(this, "There is a pre-release update", Program.Title, MessageBoxButtons.OK, MessageBoxIcon.Information);
							formEventLog.Show();
							dockPanel.ActiveAutoHideContent = formEventLog;
							formEventLog.Activate();
						}
						break;
					case UpdateState.ReleaseAndPre:
						formEventLog.Log("\tCurrent Version: " + updateInfo.update.currentVersion + "\r\n\tLatest Version: " + updateInfo.update.version + "\r\n\tLatest Pre-Release Version: " + updateInfo.update.preVersion + "\r\n" + updateInfo.update.webPage + "\r\n" + updateInfo.update.downloadPage, "Update Found!", true);
						if (updateInfo.notify)
							MessageBox.Show(this, "New update available!", Program.Title, MessageBoxButtons.OK, MessageBoxIcon.Information);
						formEventLog.Show();
						dockPanel.ActiveAutoHideContent = formEventLog;
						formEventLog.Activate();
						break;
					case UpdateState.Developer:
						formEventLog.Log("Somehow, it appears that your current version is even higher than the latest one\r\n\tCurrent Version: " + updateInfo.update.currentVersion + "\r\n\tLatest Version: " + updateInfo.update.version + "\r\n" + updateInfo.update.webPage, "WTF!", true);
						if (updateInfo.notify)
							MessageBox.Show(this, "Somehow, it appears that your current version is even higher than the latest one", Program.Title);
						break;
					case UpdateState.DeveloperPre:
						formEventLog.Log("Somehow, it appears that your current version is even higher than the latest one but still there is a pre-release available\r\n\tCurrent Version: " + updateInfo.update.currentVersion + "\r\n\tLatest Version: " + updateInfo.update.version + "\r\n\tLatest Pre-Release Version: " + updateInfo.update.preVersion + "\r\n" + updateInfo.update.webPage, "WTF!", true);
						if (updateInfo.notify)
							MessageBox.Show(this, "Somehow, it appears that your current version is even higher than the latest one but still there is a pre-release available", Program.Title);
						break;
				}
			}
		}

		void CheckUpdatesAutoToolStripMenuItem_CheckedChanged(object sender, EventArgs e)
		{
			Settings.Current.checkUpdatesAuto = checkUpdatesAutoToolStripMenuItem.Checked;
		}

		private void clearRecentHistoryToolStripMenuItem_Click(object sender, EventArgs e)
		{
			Settings.Current.recentFileHistory.Clear();
			updateHistory();
		}

		private void toolStripButtonFold_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.KeyData == Keys.Enter)
			{
				e.SuppressKeyPress = e.Handled = true;
				toolStripButtonFold.PerformClick();
			}
		}

		private void toolStripButtonUnfold_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.KeyData == Keys.Enter)
			{
				e.SuppressKeyPress = e.Handled = true;
				toolStripButtonUnfold.PerformClick();
			}
		}

		private void frameIndexToolStripButton_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.KeyData == Keys.Enter)
			{
				e.SuppressKeyPress = e.Handled = true;
				frameIndexToolStripButton.PerformClick();
			}
		}

		private void frameCaptionToolStripButton_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.KeyData == Keys.Enter)
			{
				e.SuppressKeyPress = e.Handled = true;
				frameCaptionToolStripButton.PerformClick();
			}
		}

		private void lineNumberToolStripButton_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.KeyData == Keys.Enter)
			{
				e.SuppressKeyPress = e.Handled = true;
				lineNumberToolStripButton.PerformClick();
			}
		}

		private void MainForm_Shown(object sender, EventArgs e)
		{
			if (!Settings.Current.ignoreIncorrectLfPath && !File.Exists(Settings.Current.lfPath))
			{
				if (MessageBox.Show("Seems like LF2 path is not set or incorrect.\r\n" + Program.Title + "'s cool features rely on this setting, " + 
									"do you want to set it now?\r\nYou can do this anytime later on settings window.", 
									Program.Title, MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.OK)
				{
					var sett = new FormSettings(forceCorrectLfPath : true);
					if (sett.ShowDialog(this) == System.Windows.Forms.DialogResult.OK)
					{
						Settings.Current.ignoreIncorrectLfPath = false;
						Application.Restart();
					}
					else
						Settings.Current.ignoreIncorrectLfPath = true;
				}
				else
					Settings.Current.ignoreIncorrectLfPath = true;
			}
			if (argsToolStripMenuItem.DropDownItems.Count > 0)
				argsToolStripMenuItem.ShowDropDown();
		}

		private void backgroundWorker_Util_DoWork(object sender, DoWorkEventArgs e)
		{
			Stopwatch sw = Stopwatch.StartNew();
			if (Directory.Exists(Program.utilDir))
				UtilManager.GetUtils(Program.utilDir);
			e.Result = sw.Elapsed;
			sw.Reset();
		}

		private void backgroundWorker_Util_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
		{
			if (closed || formEventLog.Disposing || formEventLog.IsDisposed)
				return;
			TimeSpan ts = (TimeSpan)e.Result;
			formEventLog.Log("Data Utils Loaded: " + ts, true);
		}

		private void backgroundWorker_Plugin_DoWork(object sender, DoWorkEventArgs e)
		{
			Stopwatch sw = Stopwatch.StartNew();
			lock (PluginLock)
			{
				if (Directory.Exists(Program.plugDir))
					Plugins.PlugOn(Program.plugDir);
			}
			e.Result = sw.Elapsed;
			sw.Reset();
		}

		private void backgroundWorker_Plugin_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
		{
			if (closed || formEventLog.Disposing || formEventLog.IsDisposed)
				return;
			TimeSpan ts = (TimeSpan)e.Result;
			try
			{
				formEventLog.Log("Plugins Loaded: " + ts, true);
				foreach (string plugin in Settings.Current.activePlugins)
				{
					try
					{
						Plugins[plugin].Register();
					}
					catch (Exception ex)
					{
						formEventLog.Error(ex, "[" + plugin + "] : Plugin Registration Error");
					}
				}
			}
			catch (Exception ex)
			{
				formEventLog.Error(ex, "Plugin-List Registration Error");
			}
		}

		private void jumpToToolStripButton_CheckedChanged(object sender, EventArgs e)
		{
			jumpToToolStrip.Visible = jumpToToolStripButton.Checked;
		}

		private void toolStripButtonFolding_CheckedChanged(object sender, EventArgs e)
		{
			toolStrip_Fold.Visible = toolStripButtonFolding.Checked;
		}

		private void MainForm_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.Control)
			{
				if (e.Modifiers == Keys.Control && (e.KeyCode == Keys.F4 || e.KeyCode == Keys.W))
				{
					if (ActiveDocument != null)
						ActiveDocument.Close();
				}
				else if (e.Modifiers == Keys.Control && e.KeyCode == Keys.B)
				{
					if (ActiveDocument != null)
					{
						var range = ActiveDocument.Scintilla.FindReplace.Find(ActiveDocument.Scintilla.CurrentPos + 1, ActiveDocument.Scintilla.TextLength, "<frame>", ScintillaNET.SearchFlags.MatchCase);
						if (range != null)
						{
							ActiveDocument.Scintilla.CurrentPos = range.Start;
							ActiveDocument.Scintilla.Lines.FirstVisibleIndex = ActiveDocument.Scintilla.Lines.Current.Number - ActiveDocument.Scintilla.Lines.VisibleCount / 3;
						}
					}
				}
				else if (e.Modifiers == (Keys.Control | Keys.Shift) && e.KeyCode == Keys.B)
				{
					if (ActiveDocument != null)
					{
						var range = ActiveDocument.Scintilla.FindReplace.Find(0, ActiveDocument.Scintilla.CurrentPos, new Regex("<frame>"), true);
						if (range != null)
						{
							ActiveDocument.Scintilla.CurrentPos = range.Start;
							ActiveDocument.Scintilla.Lines.FirstVisibleIndex = ActiveDocument.Scintilla.Lines.Current.Number - ActiveDocument.Scintilla.Lines.VisibleCount / 3;
						}
					}
				}
				else if (e.Modifiers == Keys.Control && e.KeyCode == Keys.Tab)
				{
					var docs = dockPanel.DocumentsToArray();
					if (docs.Length < 2)
						return;
					int a = 0;
					for (int i = 0; i < docs.Length; i++)
					{
						if (docs[i] == dockPanel.ActiveDocument)
						{
							a = i + 1;
							break;
						}
					}
					((DocumentForm)docs[a % docs.Length]).Activate();
				}
				else if (e.Modifiers == (Keys.Control | Keys.Shift) && e.KeyCode == Keys.Tab)
				{
					var docs = dockPanel.DocumentsToArray();
					if (docs.Length < 2)
						return;
					int a = 0;
					for (int i = 0; i < docs.Length; i++)
					{
						if (docs[i] == dockPanel.ActiveDocument)
						{
							a = i - 1;
							break;
						}
					}
					((DocumentForm)docs[(a < 0 ? docs.Length + (a % docs.Length) : (a % docs.Length))]).Activate();
				}
			}
		}

		private void closeAllDocumentsToolStripMenuItem_Click(object sender, EventArgs e)
		{
			var doc = dockPanel.DocumentsToArray();
			for (int i = dockPanel.DocumentsCount - 1; i >= 0; i--)
			{
				(doc[i] as DocumentForm).Close();
			}
		}

		FormIDL fidl = null;

		private void toolStripSplitButtonIDL_ButtonClick(object sender, EventArgs e)
		{
			if (fidl == null || fidl.IsDisposed)
				fidl = new FormIDL(this);

			if (ActiveDocument != null)
			{
				if (!fidl.Visible)
					fidl.Show(this);
				else
					fidl.Activate();
			}
		}

		private void autoLoadToolStripMenuItem_Click(object sender, EventArgs e)
		{
			DocumentForm doc = ActiveDocument;
			if(doc == null)
			{
				return;
			}
			int objId = -1;
			int dataType = -1;
			int objType = -1;
			int bgId = -1;

			Process[] procs = Process.GetProcessesByName("lf2");
			Process lfp = null;
			if(Settings.Current.lfPath != null)
				foreach (Process proc in procs)
					if(string.Equals(proc.MainModule.FileName, Settings.Current.lfPath, StringComparison.InvariantCultureIgnoreCase))
					{
						lfp = proc;
						break;
					}
			if (lfp == null)
				return;

			switch (doc.DocumentType)
			{
				case DocumentType.ObjectData:
					dataType = 0;
					break;
				case DocumentType.StageData:
					dataType = 1;
					break;
				case DocumentType.BgData:
					dataType = 2;
					break;
				default:
					return;
			}
			string lfDir = Path.GetDirectoryName(Settings.Current.lfPath), dataTxtFile = lfDir + "\\data\\data.txt";
			if (!File.Exists(dataTxtFile))
			{
				MessageBox.Show("'data.txt' could not found. Make sure you set 'LF2 Path' correct in the settings menu.", Program.Title);
				this.Close();
				return;
			}
			DateTime modification = File.GetLastWriteTime(dataTxtFile);
			if (modification > FormIDL.dataTxtLastModification)
			{
				dataTxtFile = File.ReadAllText(dataTxtFile);
				if (IDL.ReadDataTxt(dataTxtFile, dataTxtFile.Length, ref FormIDL.dataTxt.objects, ref FormIDL.dataTxt.objCount, ref FormIDL.dataTxt.backgrounds, ref FormIDL.dataTxt.bgCount, this.Handle) != 0)
					return;

				FormIDL.dataTxtLastModification = modification;
			}

			for (int i = 0; i < FormIDL.dataTxt.objCount; i++)
			{
				if (doc.FilePath != null ? doc.FilePath.EndsWith(FormIDL.dataTxt.objects[i].file, StringComparison.InvariantCultureIgnoreCase) : doc.TabText.EndsWith(FormIDL.dataTxt.objects[i].file, StringComparison.InvariantCultureIgnoreCase))
				{
					objId = i;
					objType = (int)FormIDL.dataTxt.objects[i].type;
					dataType = 0;
					break;
				}
			}

			for (int i = 0; i < FormIDL.dataTxt.bgCount; i++)
			{
				if (doc.FilePath != null ? doc.FilePath.EndsWith(FormIDL.dataTxt.backgrounds[i].file, StringComparison.InvariantCultureIgnoreCase) : doc.TabText.EndsWith(FormIDL.dataTxt.backgrounds[i].file, StringComparison.InvariantCultureIgnoreCase))
				{
					bgId = i;
					dataType = 2;
					break;
				}
			}
			if (dataType == (int)DataType.Char && objId < 0 || dataType == (int)DataType.Background && bgId < 0 || dataType < 0)
				return;

			int result = int.MinValue;
			try
			{
				string dat = ActiveDocument.Scintilla.Text;

				Process p = lfp;
				if (p.HasExited)
					return;

				int[] threads = new int[p.Threads.Count];
				for (int i = 0; i < threads.Length; i++)
				{
					threads[i] = p.Threads[i].Id;
				}

				int suspendResult;
				var suspend = (int[])threads.Clone();
				var resume = (int[])threads.Clone();
				try
				{
					if ((suspendResult = IDL.SuspendThreadList(suspend, threads.Length, 1)) != 0)
					{
						throw new ApplicationException("Failed to suspend LF2 process: " + p.Id);
					}
					result = IDL.InstantLoad(dat, dat.Length,
						p.Id,
						(DataType)dataType,
						dataType == 0 ? objId :
							dataType == 1 ? (-1) : // not to be used
							bgId,
						dataType == 0 ? (ObjectType)objType : ObjectType.Invalid,
						this.Handle,
						null);
					if (result == 0)
					{
						FormIDL.SetForegroundWindow(new HandleRef(p, p.MainWindowHandle));
					}
				}
				finally
				{
					IDL.SuspendThreadList(resume, threads.Length, 0);
				}
			}
			catch (DllNotFoundException)
			{
				MessageBox.Show("'IDL.dll' could not be found, it's required to make instant data loading possible.\r\n" +
					"If you think it supposed to come with the download please contact me (the developer) at LFE Forums (Help/Web...) or report a bug at GitHub:\r\n" +
					Program.githubPage,
					Program.Title, MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
			catch (ApplicationException ex)
			{
				MessageBox.Show(ex.ToString(), "Instant Data Loading Error");
			}
			catch (Exception ex)
			{
				formEventLog.Error(ex, "Instant Data Loading Error");
			}
		}

		private void toolStripButton_DataTxt_Click(object sender, EventArgs e)
		{
			try
			{
				string dataTxtPath = Path.GetDirectoryName(Settings.Current.lfPath) + "\\data\\data.txt";
				if (File.Exists(dataTxtPath))
				{
					DocumentForm ready = null;
					foreach (var dc in dockPanel.Documents)
					{
						DocumentForm df = (DocumentForm)dc;
						if(string.Compare(df.FilePath, dataTxtPath, StringComparison.InvariantCultureIgnoreCase) == 0)
						{
							ready = df;
							break;
						}
					}
					if (ready != null)
						ready.Activate();
					else
						Open(dataTxtPath, true);
				}
			}
			catch { }
		}
	}
}
