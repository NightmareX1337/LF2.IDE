using System;
using System.Diagnostics;
using System.Drawing;
using System.Text.RegularExpressions;
using System.Windows.Forms;

namespace LF2.IDE
{
	public partial class FormEventLog : WeifenLuo.WinFormsUI.Docking.DockContent
	{
		public FormEventLog()
		{
			InitializeComponent();
		}

		public void Error(Exception ex, string title)
		{
			string error = ex.ToString();

			if (this.InvokeRequired)
				this.BeginInvoke((Action)(() => MessageBox.Show(error, "[Async] " + title, MessageBoxButtons.OK, MessageBoxIcon.Error)));
			else
				MessageBox.Show(error, title, MessageBoxButtons.OK, MessageBoxIcon.Error);
			try
			{
				Log(error, title, true);
			}
			catch { }
		}

		public void Log(string logMessage, string logTitle, bool stepCaret = true)
		{
			Action act = (Action)(() =>
				{
					int caret = scintilla.Lines.Count - 1;
					Log(logTitle, false);
					scintilla.AppendText(scintilla.EndOfLine.EolString + logMessage);
					StepCaret(stepCaret);
					StepCaret(caret, stepCaret);
					scintilla.Lines.Current.Next.AddMarker(scintilla.Markers.Folder);
				});

			try
			{
				if (this.InvokeRequired)
					this.BeginInvoke(act);
				else
					act();
			}
			catch (AccessViolationException) { }
		}

		public void Log(string logMessage, bool stepCaret = true)
		{
			Action<string> act = (Action<string>)((string msg) =>
				{
					if (!string.IsNullOrEmpty(scintilla.Text))
						scintilla.AppendText(scintilla.EndOfLine.EolString);
					scintilla.AppendText(msg);
					StepCaret(stepCaret);
				});

			try
			{
				if (scintilla.InvokeRequired)
					scintilla.BeginInvoke(act, logMessage);
				else
					act(logMessage);
			}
			catch (AccessViolationException) { }
		}

		private void StepCaret(bool condition = true)
		{
			if (condition)
			{
				scintilla.Caret.LineNumber = scintilla.Lines.Count - 1;
				scintilla.Caret.EnsureVisible();
				scintilla.Update();
				scintilla.Refresh();
			}
		}

		private void StepCaret(int caretLine, bool condition = true)
		{
			if (condition)
			{
				scintilla.Caret.LineNumber = caretLine;
				scintilla.Caret.EnsureVisible();
				scintilla.Update();
				scintilla.Refresh();
			}
		}

		public void Clean()
		{
			scintilla.IsReadOnly = false;
			scintilla.ResetText();
			scintilla.Update();
			scintilla.Refresh();
			scintilla.IsReadOnly = true;
		}

		void scintilla_LinkClicked(object sender, LinkClickedEventArgs e)
		{
			Process.Start(e.LinkText);
		}

		void ScintillaZoomChanged(object sender, EventArgs e)
		{
			SetMarginAuto();
		}

		void ScintillaTextChanged(object sender, EventArgs e)
		{
			SetMarginAuto();
		}

		public void SetMarginAuto()
		{
			int last_measure_lines = -1;
			int lines = scintilla.Lines.Count;
			if (lines != last_measure_lines)
			{
				last_measure_lines = lines;
				scintilla.Margins[0].Width = TextRenderer.MeasureText(lines.ToString(), scintilla.Font).Width + scintilla.Zoom * 3;
			}
		}

		private void scintilla_MouseDoubleClick(object sender, MouseEventArgs e)
		{
			string link = scintilla.Lines.Current.Text.Trim('\r', '\n', ' ', '\t');
			if (link.StartsWith("http://"))
				scintilla_LinkClicked(scintilla, new LinkClickedEventArgs(link));
		}

		private void scintilla_KeyDown(object sender, KeyEventArgs e)
		{
			if (!(e.Control && e.KeyCode == Keys.C))
				e.SuppressKeyPress = e.Handled = true;
		}

		private void contextMenuStrip_Opening(object sender, System.ComponentModel.CancelEventArgs e)
		{
			//e.Cancel = true;
		}

		private void copySelectedToolStripMenuItem_Click(object sender, EventArgs e)
		{
			scintilla.Clipboard.Copy(true);
		}

		private void copyAllToolStripMenuItem_Click(object sender, EventArgs e)
		{
			scintilla.Clipboard.Copy(0, scintilla.TextLength);
		}
	}
}
