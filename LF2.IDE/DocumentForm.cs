using ScintillaNET;
using System;
using System.Linq;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.Globalization;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows.Forms;
using System.Threading;
using WeifenLuo.WinFormsUI.Docking;
using System.Diagnostics;

namespace LF2.IDE
{
	public sealed partial class DocumentForm : DockContent
	{
		private string _filePath;
		private bool _issaved;
		private DocumentType documentType = DocumentType.Default;
		private System.Timers.Timer syncTimer = new System.Timers.Timer(1000) { AutoReset = true };
		public bool justEdited = false;
		public object syncLock = new object();

		public List<SpriteSheet> spriteList = new List<SpriteSheet>(0);
		public Bitmap[] frames;
		public int frameIndexTag;
		public int frameIndexFrame;
		public int frameIndexShape;

		private MainForm mainForm;

		public DocumentType DocumentType
		{
			get { return documentType; }
		}

		public string FilePath
		{
			get { return _filePath; }
			set { _filePath = value; }
		}


		public bool Issaved
		{
			get { return _issaved; }
			set { _issaved = value; }
		}


		public Scintilla Scintilla
		{
			get
			{
				return scintilla;
			}
		}


		#region Methods

		private void AddOrRemoveAsteric()
		{
			if (Scintilla.Modified)
			{
				if (!TabText.EndsWith(" *"))
					TabText += " *";
			}
			else
			{
				if (TabText.EndsWith(" *"))
					TabText = TabText.Substring(0, TabText.Length - 2);
			}
		}


		private void DocumentForm_FormClosing(object sender, FormClosingEventArgs e)
		{
			if (Scintilla.Modified)
			{
				// Prompt if not saved
				string message = String.Format(
					CultureInfo.CurrentCulture,
					"The data in the {0} file has changed.{1}{2}Do you want to save the changes?",
					TabText.TrimEnd(' ', '*'),
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
					e.Cancel = !Save();
					return;
				}
			}

			// Close as normal
		}


		public bool ExportAsHtml()
		{
			using (SaveFileDialog dialog = new SaveFileDialog())
			{
				string fileName = (Text.EndsWith(" *") ? Text.Substring(0, Text.Length - 2) : Text);
				dialog.Filter = "HTML Files (*.html;*.htm)|*.html;*.htm|All Files (*.*)|*.*";
				dialog.FileName = fileName + ".html";
				if (dialog.ShowDialog() == DialogResult.OK)
				{
					scintilla.Lexing.Colorize(); // Make sure the document is current
					using (StreamWriter sw = new StreamWriter(dialog.FileName))
						scintilla.ExportHtml(sw, fileName, false);

					return true;
				}
			}

			return false;
		}


		public bool Save()
		{
			if (String.IsNullOrEmpty(_filePath))
				return SaveAs();

			return Save(_filePath);
		}

		public bool Save(string filePath)
		{
			if (filePath.EndsWith(".dat"))
				LF2DataUtils.Encrypt(Scintilla.Text, filePath);
			else
				File.WriteAllText(filePath, Scintilla.Text, Encoding.Default);

			scintilla.Modified = false;
			return true;
		}

		public bool SaveAs()
		{
			string tabText = TabText.TrimEnd(' ', '*');
			if (!string.IsNullOrEmpty(_filePath))
			{
				saveFileDialog.FileName = Path.GetFileName(_filePath);
				saveFileDialog.InitialDirectory = Path.GetDirectoryName(_filePath);
			}
			else
			{
				saveFileDialog.FileName = tabText;
			}
			switch (Path.GetExtension(tabText))
			{
				case ".dat":
					saveFileDialog.FilterIndex = 2;
					break;
				case ".txt":
					saveFileDialog.FilterIndex = 3;
					break;
				case ".as":
					saveFileDialog.FilterIndex = 4;
					break;
				case ".xml":
					saveFileDialog.FilterIndex = 5;
					break;
				case ".html":
				case ".htm":
					saveFileDialog.FilterIndex = 6;
					break;
				case ".cs":
					saveFileDialog.FilterIndex = 7;
					break;
				default:
					saveFileDialog.FilterIndex = 1;
					break;
			}
			if (saveFileDialog.ShowDialog() == DialogResult.OK)
			{
				ToolTipText = _filePath = saveFileDialog.FileName;
				TabText = Path.GetFileName(_filePath);

				SetLanguage();

				return Save(_filePath);
			}

			return false;
		}


		private void scintilla_ModifiedChanged(object sender, EventArgs e)
		{
			//if (!File.Exists(FilePath))
			//	Scintilla.Modified = true;
			AddOrRemoveAsteric();
		}

		public DocumentForm(MainForm main)
		{
			syncTimer.Elapsed += syncTimer_Elapsed;
			mainForm = main;
			InitializeComponent();
			scintilla.DocumentNavigation.MaxHistorySize = 20;
			scintilla.DocumentNavigation.NavigationPointTimeout = 500;
		}

		void DocumentFormActivated(object sender, EventArgs e)
		{
			Scintilla.Focus();
		}

		void DocumentFormLoad(object sender, EventArgs e)
		{
			ToolTipText = _filePath ?? TabText;
			SetLanguage();
			scintilla.NativeInterface.SendMessageDirect(2516, true);
			SetMarginAuto();

			if (Settings.Current.lfPath == null || !File.Exists(Settings.Current.lfPath))
				return;

			if (TabText.TrimEnd(' ', '*').EndsWith(".dat"))
				try
				{
					ParseFiles(Path.GetDirectoryName(Settings.Current.lfPath));
					ParseFrames();
				}
				catch (Exception ex)
				{
					mainForm.formEventLog.Error(ex, "Parsing Error");
				}
		}

		public void ParseFiles(string lfdir)
		{
			spriteList.Clear();
			string dat = scintilla.Text;
			int begin = dat.IndexOf("<bmp_begin>"), end = dat.IndexOf("<bmp_end>", begin + 11);
			if (begin < 0 || end < 0) return;
			string script = dat.Substring(begin + 11, end - begin);
			MatchCollection matches = Regex.Matches(script, SpriteSheet.regexPattern);
			if (matches.Count < 1) return;
			for (int i = 0; i < matches.Count; i++)
			{
				string path = lfdir + "\\" + matches[i].Groups[3].Value.Trim();
				Bitmap img = (Bitmap)Image.FromFile(path);
				img.Tag = Path.GetFileName(path);
				int si = int.Parse(matches[i].Groups[1].Value.Trim()),
					ei = int.Parse(matches[i].Groups[2].Value.Trim()),
					w = int.Parse(matches[i].Groups[4].Value.Trim()),
					h = int.Parse(matches[i].Groups[5].Value.Trim()),
					r = int.Parse(matches[i].Groups[6].Value.Trim()),
					c = int.Parse(matches[i].Groups[7].Value.Trim());
				SpriteSheet fm = new SpriteSheet(si, ei, img.Tag as string, img, w, h, c, r);
				spriteList.Add(fm);
			}
		}

		public void ParseFrames()
		{
			var frames = new List<Bitmap>(256);

			for (int i = 0; i < spriteList.Count; i++)
			{
				SpriteSheet fm = spriteList[i];

				for (int r = 0; r < fm.row; r++)
				{
					for (int c = 0; c < fm.col; c++)
					{
						Bitmap btm = new Bitmap(fm.w, fm.h, PixelFormat.Format32bppRgb);
						using (Graphics g = Graphics.FromImage(btm))
							g.DrawImage(fm.sprite, new Rectangle(0, 0, fm.w, fm.h), new Rectangle(c * (fm.w + 1), r * (fm.h + 1), fm.w, fm.h), GraphicsUnit.Pixel);
						frames.Add(btm);
					}
				}
			}
			this.frames = frames.ToArray();
		}

		bool auto = false, smart = false;

		public void SetLanguage()
		{
			SetLanguageByExtension(Path.GetExtension(TabText.TrimEnd('*', ' ')));
		}

		public void SetLanguageByExtension(string ext)
		{
			switch (ext)
			{
				case ".dat":
					SetLanguage("dat");
					break;
				case ".txt":
					SetLanguage("txt");
					break;
				case ".as":
					SetLanguage("as");
					break;
				case ".xml":
					SetLanguage("xml");
					break;
				case ".html":
				case ".htm":
					SetLanguage("html");
					break;
				case ".cs":
					SetLanguage("cs");
					break;
				default:
					SetLanguage("default");
					break;
			}
		}

		public void SetLanguage(string language)
		{
			language = language.ToLowerInvariant();
			{
				this.Scintilla.Snippets.List.Clear();
				this.Scintilla.AutoComplete.List.Clear();
				this.Scintilla.ConfigurationManager.Language = "default";
				documentType = DocumentType.Default;
				switch(language)
				{
					case "dat":
						Scintilla.Indentation.UseTabs = false;
						if (Scintilla.Text.Contains("<stage>"))
						{
							Scintilla.Indentation.TabWidth = 8;
							this.Scintilla.ConfigurationManager.Language = "stage_dat";
							documentType = DocumentType.StageData;
						}
						else if (Scintilla.Text.Contains("zboundary:"))
						{
							Scintilla.Indentation.TabWidth = 2;
							this.Scintilla.ConfigurationManager.Language = "bg_dat";
							documentType = DocumentType.BgData;
						}
						else
						{
							Scintilla.Indentation.TabWidth = 3;
							this.Scintilla.ConfigurationManager.Language = "object_dat";
							documentType = DocumentType.ObjectData;
						}
						Scintilla.EndOfLine.Mode = EndOfLineMode.LF;
						this.Icon = Properties.Resources.DocumentDAT;
						auto = true;
						smart = true;
						break;
					case "default":
						goto default;
					case "txt":
						if (TabText.TrimEnd(' ', '*') != "data.txt")
							goto default;
						Scintilla.Indentation.UseTabs = false;
						Scintilla.Indentation.TabWidth = 4;
						Scintilla.EndOfLine.Mode = EndOfLineMode.Crlf;
						this.Icon = Properties.Resources.DocumentDAT;
						auto = true;
						smart = true;
						this.Scintilla.ConfigurationManager.Language = "data_txt";
						documentType = DocumentType.DataTxt;
						break;
					case "as":
						Scintilla.Indentation.UseTabs = true;
						Scintilla.Indentation.TabWidth = 4;
						Scintilla.EndOfLine.Mode = EndOfLineMode.Crlf;
						this.Icon = Properties.Resources.DocumentAS;
						auto = false;
						smart = true;
						this.Scintilla.ConfigurationManager.Language = language;
						documentType = DocumentType.AngelScript;
						break;
					case "cs":
						Scintilla.Indentation.UseTabs = true;
						Scintilla.Indentation.TabWidth = 4;
						Scintilla.EndOfLine.Mode = EndOfLineMode.Crlf;
						this.Icon = Properties.Resources.DocumentCS;
						auto = false;
						smart = true;
						this.Scintilla.ConfigurationManager.Language = language;
						documentType = DocumentType.CSharp;
						break;
					case "html":
					case "xml":
						Scintilla.Indentation.UseTabs = false;
						Scintilla.Indentation.TabWidth = 2;
						Scintilla.EndOfLine.Mode = EndOfLineMode.Crlf;
						this.Icon = Properties.Resources.DocumentXML;
						auto = false;
						smart = true;
						this.Scintilla.ConfigurationManager.Language = language;
						documentType = DocumentType.XML;
						break;
					default:
						Scintilla.Indentation.UseTabs = true;
						Scintilla.Indentation.TabWidth = 4;
						Scintilla.EndOfLine.Mode = EndOfLineMode.Crlf;
						this.Icon = Properties.Resources.Document;
						documentType = DocumentType.Default;
						auto = false;
						smart = false;
						break;
				}
				Scintilla.AutoComplete.List.Sort();
			}
		}

		void ScintillaCharAdded(object sender, CharAddedEventArgs e)
		{
			if (auto && Settings.Current.autoComplete)
			{
				if (scintilla.Lexing.WordChars.Contains(e.Ch.ToString()))
				{
					string word = scintilla.GetWordFromPosition(scintilla.Caret.Position);
					foreach (string str in scintilla.AutoComplete.List)
					{
						try { if (str[0] > word[0]) break; }
						catch { }

						if (str.StartsWith(word))
						{
							scintilla.AutoComplete.Show();
							break;
						}
					}
				}
			}
			if (Scintilla.EndOfLine.EolString[Scintilla.EndOfLine.EolString.Length - 1] == e.Ch && smart)
			{
				scintilla.Lines.Current.Indentation = scintilla.Lines.Current.Previous.Indentation;
				scintilla.CurrentPos = scintilla.Lines.Current.IndentPosition;
			}
		}

		void ScintillaKeyPress(object sender, KeyPressEventArgs e)
		{
			if (auto && Settings.Current.autoComplete)
				if (e.KeyChar == ':' || e.KeyChar == '>')
				{
					e.Handled = true;
					scintilla.AutoComplete.Accept();
					scintilla.Selection.Text = e.KeyChar.ToString();
				}
		}

		void ScintillaZoomChanged(object sender, EventArgs e)
		{
			SetMarginAuto();
		}

		void ScintillaTextChanged(object sender, EventArgs e)
		{
			if (Monitor.TryEnter(syncLock))
			{
				justEdited = true;
				SetMarginAuto();
				syncTimer.Start();
			}
			else
				syncTimer.Stop();
		}

		public void SetMarginAuto()
		{
			int last_measure_lines = -1;
			int lines = scintilla.Lines.Count;
			if (lines != last_measure_lines)
			{
				last_measure_lines = lines;
				Scintilla.Margins[0].Width = TextRenderer.MeasureText(lines.ToString(), Scintilla.Font).Width + Scintilla.Zoom * 3;
			}
		}

		#endregion Methods

		private void scintilla_SelectionChanged(object sender, EventArgs e)
		{
			toolStripStatusLabel_Line.Text = (scintilla.Lines.Current.Number + 1).ToString();
			toolStripStatusLabel_Col.Text = (scintilla.GetColumn(scintilla.Caret.Position) + 1).ToString();
			toolStripStatusLabel_Ch.Text = (scintilla.Caret.Position - scintilla.Lines.Current.StartPosition + 1).ToString();
			toolStripStatusLabel_SelLen.Text = (scintilla.Selection.Length).ToString();
			int sel = scintilla.Selection.Range.EndingLine.Number - scintilla.Selection.Range.StartingLine.Number;
			toolStripStatusLabel_SelLines.Text = (scintilla.Selection.Length > 0 ? sel + 1 : 0).ToString();
			if (!justEdited)
			{
				SyncToDesign(auto : true);
			}
			mainForm.UpdateNavigationControls();
		}

		private void scintilla_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.KeyCode == Keys.Insert)
				toolStripStatusLabel_InsOvr.Text = scintilla.OverType ? "INS" : "OVR";
			else if (e.KeyCode == Keys.Z && e.Modifiers == (Keys.Control | Keys.Shift))
			{
				scintilla.UndoRedo.Redo();
				e.Handled = true;
				e.SuppressKeyPress = true;
			}
		}

		// God save us from ever needing to write this kind of creepy code
		public bool SyncToDesign(bool auto = false)
		{
			if (documentType != DocumentType.ObjectData || auto && !mainForm.formDesign.checkBoxLinkage.Checked || !Monitor.TryEnter(syncLock))
				return false;
			try
			{
				Monitor.Enter(syncLock);
				int fs = Scintilla.Text.LastIndexOf("<frame>", Scintilla.Lines.Current.EndPosition);
				if (fs < 0)
					return false;
				int fe = Scintilla.Text.IndexOf("<frame_end>", fs + 7);
				if (fe < 0 || fe + 11 < Scintilla.CurrentPos)
					return false;
				var fr = Scintilla.GetRange(fs, fe + 11);
				{
					var frame = LF2DataUtils.ReadFrame(fr.Text);
					mainForm.formDesign.EditIn();
					if (frame.pic.HasValue && frame.pic.Value <= mainForm.formDesign.numericUpDown_ImageIndex.Maximum)
						mainForm.formDesign.numericUpDown_ImageIndex.Value = frame.pic.Value;
					mainForm.formDesign.textBox_caption.Text = frame.caption;
					if (frame.bdys != null)
					{
						var bi = mainForm.formDesign.tagBox.ActiveBdyIndex;
						mainForm.formDesign.tagBox.BdyTags = new List<TagBox.Bdy>(frame.bdys.Select<LF2DataUtils.Bdy, TagBox.Bdy>((LF2DataUtils.Bdy bdy) => (TagBox.Bdy)bdy));
						if (mainForm.formDesign.tagBox.BdyTags.Count == 1)
							mainForm.formDesign.tagBox.ActiveBdyIndex = 0;
						else if (bi.HasValue && bi.Value < mainForm.formDesign.tagBox.BdyTags.Count)
							mainForm.formDesign.tagBox.ActiveBdyIndex = bi;
						else
							mainForm.formDesign.tagBox.ActiveBdyIndex = null;
						if (mainForm.formDesign.tagBox.ActiveBdyIndex.HasValue)
						{
							LF2DataUtils.Bdy bdy = frame.bdys[mainForm.formDesign.tagBox.ActiveBdyIndex.Value];
							if (bdy != null)
							{
								mainForm.formDesign.bdy_h.Text = bdy.h.HasValue ? bdy.h.ToString() : "";
								mainForm.formDesign.bdy_kind.Text = bdy.kind.HasValue ? bdy.kind.ToString() : "";
								mainForm.formDesign.bdy_w.Text = bdy.w.HasValue ? bdy.w.ToString() : "";
								mainForm.formDesign.bdy_x.Text = bdy.x.HasValue ? bdy.x.ToString() : "";
								mainForm.formDesign.bdy_y.Text = bdy.y.HasValue ? bdy.y.ToString() : "";
							}
						}
					}
					else
					{
						mainForm.formDesign.tagBox.ClearBdyList();
						mainForm.formDesign.bdy_h.Text = 
						mainForm.formDesign.bdy_kind.Text = 
						mainForm.formDesign.bdy_w.Text = 
						mainForm.formDesign.bdy_x.Text = 
						mainForm.formDesign.bdy_y.Text = "";
					}
					if (frame.itrs != null)
					{
						var ti = mainForm.formDesign.tagBox.ActiveItrIndex;
						mainForm.formDesign.tagBox.ItrTags = new List<TagBox.Itr>(frame.itrs.Select<LF2DataUtils.Itr, TagBox.Itr>((LF2DataUtils.Itr itr) => (TagBox.Itr)itr));
						if (mainForm.formDesign.tagBox.ItrTags.Count == 1)
							mainForm.formDesign.tagBox.ActiveItrIndex = 0;
						else if (ti.HasValue && ti.Value < mainForm.formDesign.tagBox.ItrTags.Count)
							mainForm.formDesign.tagBox.ActiveItrIndex = ti;
						else
							mainForm.formDesign.tagBox.ActiveItrIndex = null;
						if (mainForm.formDesign.tagBox.ActiveItrIndex.HasValue)
						{
							LF2DataUtils.Itr itr = frame.itrs[mainForm.formDesign.tagBox.ActiveItrIndex.Value];
							if (itr != null)
							{
								mainForm.formDesign.itr_arest.Text = itr.arest.HasValue ? itr.arest.ToString() : "";
								mainForm.formDesign.itr_bdefend.Text = itr.bdefend.HasValue ? itr.bdefend.ToString() : "";
								mainForm.formDesign.itr_catchingact1.Text = itr.catchingact1.HasValue ? itr.catchingact1.ToString() : "";
								mainForm.formDesign.itr_catchingact2.Text = itr.catchingact2.HasValue ? itr.catchingact2.ToString() : "";
								mainForm.formDesign.itr_caughtact1.Text = itr.caughtact1.HasValue ? itr.caughtact1.ToString() : "";
								mainForm.formDesign.itr_caughtact2.Text = itr.caughtact2.HasValue ? itr.caughtact2.ToString() : "";
								mainForm.formDesign.itr_dvx.Text = itr.dvx.HasValue ? itr.dvx.ToString() : "";
								mainForm.formDesign.itr_dvy.Text = itr.dvy.HasValue ? itr.dvy.ToString() : "";
								mainForm.formDesign.itr_effect.Text = itr.effect.HasValue ? itr.effect.ToString() : "";
								mainForm.formDesign.itr_fall.Text = itr.fall.HasValue ? itr.fall.ToString() : "";
								mainForm.formDesign.itr_h.Text = itr.h.HasValue ? itr.h.ToString() : "";
								mainForm.formDesign.itr_injury.Text = itr.injury.HasValue ? itr.injury.ToString() : "";
								mainForm.formDesign.itr_kind.Text = itr.kind.HasValue ? itr.kind.ToString() : "";
								mainForm.formDesign.itr_vrest.Text = itr.vrest.HasValue ? itr.vrest.ToString() : "";
								mainForm.formDesign.itr_w.Text = itr.w.HasValue ? itr.w.ToString() : "";
								mainForm.formDesign.itr_x.Text = itr.x.HasValue ? itr.x.ToString() : "";
								mainForm.formDesign.itr_y.Text = itr.y.HasValue ? itr.y.ToString() : "";
								mainForm.formDesign.itr_zwidth.Text = itr.zwidth.HasValue ? itr.zwidth.ToString() : "";
							}
						}
					}
					else
					{
						mainForm.formDesign.tagBox.ClearItrList();
					}
					if (frame.centerx.HasValue && frame.centery.HasValue)
					{
						mainForm.formDesign.tagBox.TagData.center = new Point(frame.centerx.Value, frame.centery.Value);
					}
					else
					{
						mainForm.formDesign.tagBox.TagData.center = null;
					}
					if (frame.bpoint != null)
					{
						mainForm.formDesign.tagBox.TagData.bpoint = (Point)frame.bpoint;
					}
					else
					{
						mainForm.formDesign.tagBox.TagData.bpoint = null;
					}
					if (frame.cpoint != null)
					{
						mainForm.formDesign.tagBox.TagData.cpoint = (TagBox.CPoint)frame.cpoint;
					}
					else
					{
						mainForm.formDesign.tagBox.TagData.cpoint = null;
					}
					if (frame.opoint != null)
					{
						mainForm.formDesign.tagBox.TagData.opoint = (TagBox.OPoint)frame.opoint;
					}
					else
					{
						mainForm.formDesign.tagBox.TagData.opoint = null;
					}
					if (frame.wpoint != null)
					{
						mainForm.formDesign.tagBox.TagData.wpoint = (TagBox.WPoint)frame.wpoint;
					}
					else
					{
						mainForm.formDesign.tagBox.TagData.wpoint = null;
					}
					mainForm.formDesign.RefreshAllTextBoxes();
				}
				mainForm.formDesign.EditReset();
				mainForm.formDesign.tagBox.Refresh();
				return true;
			}
			catch
			{
				mainForm.formDesign.EditReset();
				mainForm.formDesign.tagBox.Invalidate();
				return false;
			}
			finally
			{
				Monitor.Exit(syncLock);
			}
		}

		private void syncTimer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
		{
			Action func = (Action)(() =>
			{
				justEdited = false;
				syncTimer.Stop();
				SyncToDesign(true);
			});
			if (this.InvokeRequired)
				this.BeginInvoke(func);
			else
				func();
		}

		private void saveToolStripMenuItem_Click(object sender, EventArgs e)
		{
			Save();
		}

		private void closeToolStripMenuItem_Click(object sender, EventArgs e)
		{
			Close();
		}

		private void closeAllButThisToolStripMenuItem_Click(object sender, EventArgs e)
		{
			var doc = this.DockPanel.DocumentsToArray();
			for (int i = this.DockPanel.DocumentsCount - 1; i >= 0; i--)
			{
				if (doc[i] != this)
					(doc[i] as DocumentForm).Close();
			}
		}

		private void closeAllToolStripMenuItem_Click(object sender, EventArgs e)
		{
			var doc = this.DockPanel.DocumentsToArray();
			for (int i = this.DockPanel.DocumentsCount - 1; i >= 0; i--)
			{
				if (doc[i] != this)
					(doc[i] as DocumentForm).Close();
			}
			Close();
		}

		private void copyFullPathToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (_filePath != null)
				System.Windows.Forms.Clipboard.SetText(_filePath, TextDataFormat.UnicodeText);
		}

		private void copyFileNameToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (_filePath != null)
				System.Windows.Forms.Clipboard.SetText(Path.GetFileName(_filePath), TextDataFormat.UnicodeText);
		}

		private void copyFileItselfToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (File.Exists(_filePath))
			{
				var fdl = new System.Collections.Specialized.StringCollection();
				fdl.Add(_filePath);
				System.Windows.Forms.Clipboard.SetFileDropList(fdl);
			}
		}

		private void openInExplorerToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (File.Exists(_filePath))
			{
				Process.Start("explorer", "/select, " + _filePath);
			}
		}

		private void scintilla_TextDeleted(object sender, TextModifiedEventArgs e)
		{
			scintilla.AutoComplete.Cancel();
		}
	}

	public enum DocumentType
	{
		Default,
		ObjectData,
		StageData,
		BgData,
		DataTxt,
		AngelScript,
		CSharp,
		XML
	}
}
