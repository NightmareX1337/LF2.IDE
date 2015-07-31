using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Media;
using System.Diagnostics;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Globalization;
using System.Runtime.Serialization.Formatters.Binary;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters;
using System.Text.RegularExpressions;
using System.Threading;
using Microsoft.Win32;
using ScintillaNET;

namespace LF2.IDE
{
	public partial class FormFrame : WeifenLuo.WinFormsUI.Docking.DockContent
	{
		public FormFrame(MainForm main)
		{
			mainForm = main;
			InitializeComponent();
		}

		MainForm mainForm;

		void ImageIndexChanged(object sender, EventArgs e)
		{
			if (mainForm.lastActiveFrame != null)
				drawBox.Image = mainForm.lastActiveFrame[mainForm.lastActiveDoc.frameIndexFrame = (int)numericUpDown_pic.Value];

			numericUpDown_pic.Refresh();
			drawBox.Refresh();
		}

		private void Insert(object sender, EventArgs e)
		{
			if (mainForm.ActiveDocument != null)
				mainForm.ActiveDocument.Scintilla.Selection.Text = richTextBox.Text;
			mainForm.ActiveDocument.Scintilla.EndOfLine.ConvertAllLines(mainForm.ActiveDocument.Scintilla.EndOfLine.Mode);
		}

		private void Generate(object sender, EventArgs e)
		{
			int nextStep; int.TryParse(textBox_next.Text.Trim(), out nextStep);
			StringBuilder str = new StringBuilder().AppendFormat("<frame> {0} {1}\r\n   pic: {2}  state: {3}  wait: {4}  next: {5}  dvx: {6}  dvy: {7}{8}  centerx: {9}  centery: {10}", numericUpDown_frameIndex.Value, comboBox_caption.Text.Trim(), numericUpDown_pic.Value, comboBox_state.Text.Trim(), textBox_wait.Text.Trim(), textBox_next.Text.Trim(), textBox_dvx.Text.Trim(), textBox_dvy.Text.Trim(), (textBox_dvz.Text != "" ? "  dvz: " + textBox_dvz.Text.Trim() : ""), textBox_centerx.Text.Trim(), textBox_centery.Text.Trim());
			str.Append(textBox_hit_a.Text.Trim() == "" ? "" : "  hit_a: " + textBox_hit_a.Text.Trim());
			str.Append(textBox_hit_d.Text.Trim() == "" ? "" : "  hit_d: " + textBox_hit_d.Text.Trim());
			str.Append(textBox_hit_j.Text.Trim() == "" ? "" : "  hit_j: " + textBox_hit_j.Text.Trim());
			str.Append(textBox_hit_Fa.Text.Trim() == "" ? "" : "  hit_Fa: " + textBox_hit_Fa.Text.Trim());
			str.Append(textBox_hit_Ua.Text.Trim() == "" ? "" : "  hit_Ua: " + textBox_hit_Ua.Text.Trim());
			str.Append(textBox_hit_Da.Text.Trim() == "" ? "" : "  hit_Da: " + textBox_hit_Da.Text.Trim());
			str.Append(textBox_hit_Fj.Text.Trim() == "" ? "" : "  hit_Fj: " + textBox_hit_Fj.Text.Trim());
			str.Append(textBox_hit_Uj.Text.Trim() == "" ? "" : "  hit_Uj: " + textBox_hit_Uj.Text.Trim());
			str.Append(textBox_hit_Dj.Text.Trim() == "" ? "" : "  hit_Dj: " + textBox_hit_Dj.Text.Trim());
			str.Append(textBox_hit_ja.Text.Trim() == "" ? "" : "  hit_ja: " + textBox_hit_ja.Text.Trim());
			str.Append(textBox_sound.Text.Trim() == "" ? "" : "\r\n  sound: " + textBox_sound.Text.Trim());
			
			string tags = mainForm.formTag.Generate();

			if (checkBox_AddTags.Checked && tags != "")
				str.Append("\r\n" + tags);
			str.Append("\r\n<frame_end>");

			for (int i = 1; i < frameCount.Value; i++)
			{
				str.AppendFormat("\r\n\r\n<frame> {0} {1}\r\n   pic: {2}  state: {3}  wait: {4}  next: {5}  dvx: {6}  dvy: {7}{8}  centerx: {9}  centery: {10}", numericUpDown_frameIndex.Value, comboBox_caption.Text.Trim(), numericUpDown_pic.Value, comboBox_state.Text.Trim(), textBox_wait.Text.Trim(), textBox_next.Text.Trim(), textBox_dvx.Text.Trim(), textBox_dvy.Text.Trim(), (textBox_dvz.Text != "" ? "  dvz: " + textBox_dvz.Text.Trim() : ""), textBox_centerx.Text.Trim(), textBox_centery.Text.Trim());
				str.Append(textBox_hit_a.Text.Trim() == "" ? "" : "  hit_a: " + textBox_hit_a.Text.Trim());
				str.Append(textBox_hit_d.Text.Trim() == "" ? "" : "  hit_d: " + textBox_hit_d.Text.Trim());
				str.Append(textBox_hit_j.Text.Trim() == "" ? "" : "  hit_j: " + textBox_hit_j.Text.Trim());
				str.Append(textBox_hit_Fa.Text.Trim() == "" ? "" : "  hit_Fa: " + textBox_hit_Fa.Text.Trim());
				str.Append(textBox_hit_Ua.Text.Trim() == "" ? "" : "  hit_Ua: " + textBox_hit_Ua.Text.Trim());
				str.Append(textBox_hit_Da.Text.Trim() == "" ? "" : "  hit_Da: " + textBox_hit_Da.Text.Trim());
				str.Append(textBox_hit_Fj.Text.Trim() == "" ? "" : "  hit_Fj: " + textBox_hit_Fj.Text.Trim());
				str.Append(textBox_hit_Uj.Text.Trim() == "" ? "" : "  hit_Uj: " + textBox_hit_Uj.Text.Trim());
				str.Append(textBox_hit_Dj.Text.Trim() == "" ? "" : "  hit_Dj: " + textBox_hit_Dj.Text.Trim());
				str.Append(textBox_hit_ja.Text.Trim() == "" ? "" : "  hit_ja: " + textBox_hit_ja.Text.Trim());
				str.Append(textBox_sound.Text.Trim() == "" ? "" : "\r\n  sound: " + textBox_sound.Text.Trim());
				if (checkBox_AddTags.Checked && tags != "")
					str.Append("\r\n" + tags);
				str.Append("\r\n<frame_end>");
			}

			if (string.IsNullOrEmpty(richTextBox.Text))
				richTextBox.Text = str.ToString();
			else
				richTextBox.Text += "\r\n\r\n" + str.ToString();

			richTextBox.SelectionStart = richTextBox.Text.Length;
			richTextBox.ScrollToCaret();
		}

		private void NextMinus(object sender, EventArgs e)
		{
			textBox_next.Text = nextMinus.Text;
		}

		private void NextPlus(object sender, EventArgs e)
		{
			textBox_next.Text = nextPlus.Text;
		}

		void RichTextBoxKeyDown(object sender, KeyEventArgs e)
		{
			if (e.KeyCode == Keys.V && e.Control)
			{
				(sender as RichTextBox).Paste(DataFormats.GetFormat(DataFormats.UnicodeText));
				e.Handled = true;
			}
		}

		void CopyToClipboard(object sender, EventArgs e)
		{
			if (richTextBox.Text != "")
				System.Windows.Forms.Clipboard.SetText(richTextBox.Text);
		}

		void NewLine(object sender, EventArgs e)
		{
			if (mainForm.ActiveDocument != null)
				mainForm.ActiveDocument.Scintilla.Selection.Text = mainForm.ActiveDocument.Scintilla.EndOfLine.EolString;
		}

		void FormFrame_Closing(object sender, FormClosingEventArgs e)
		{

		}

		void Clear(object sender, EventArgs e)
		{
			richTextBox.Text = "";
		}

		void FrameIndexChanged(object sender, EventArgs e)
		{
			nextMinus.Text = (numericUpDown_frameIndex.Value - 1).ToString();
			nextPlus.Text = (numericUpDown_frameIndex.Value + 1).ToString();
		}

		struct Frame
		{
			public int indexStart, indexEnd;
			public string data;
		}

		public List<Range> GetFrames(ScintillaNET.Scintilla sci)
		{
			List<Range> frames = new List<Range>(400);
			for (int i = sci.Text.IndexOf("<frame>"); i >= 0; i = sci.Text.IndexOf("<frame>", i + 7))
			{
				int j = sci.Text.IndexOf("<frame_end>", i + 7);
				if (j < 0)
					return frames;
				frames.Add(sci.GetRange(i, j + 11));
			}
			return frames;
		}

		static class Pattern
		{
			public const string frame = @"<frame>\s*(\d*)\s*(\w*)",
				pic = @"pic:\s*(\d*)",
				state = @"state:\s*(\d*)",
				wait = @"wait:\s*(\d*)",
				next = @"next:\s*(\d*)",
				dvx = @"dvx:\s*(\d*)",
				dvy = @"dvx:\s*(\d*)",
				dvz = @"dvz:\s*(\d*)",
				centerx = @"cenrex:\s*(\d*)",
				centery = @"cenrey:\s*(\d*)",
				hit_Fa = @"hit_Fa:\s*(\d*)",
				hit_Ua = @"hit_Ua:\s*(\d*)",
				hit_Da = @"hit_Da:\s*(\d*)",
				hit_Fj = @"hit_Fj:\s*(\d*)",
				hit_Uj = @"hit_Uj:\s*(\d*)",
				hit_Dj = @"hit_Dj:\s*(\d*)",
				hit_ja = @"hit_ja:\s*(\d*)",
				hit_a = @"hit_a:\s*(\d*)",
				hit_d = @"hit_d:\s*(\d*)",
				hit_j = @"hit_j:\s*(\d*)",
				sound = @"sound:\s*(.*)";
		}

		class UndoHandler : IDisposable
		{
			Scintilla sci;

			public UndoHandler(Scintilla sci)
			{
				(this.sci = sci).UndoRedo.BeginUndoAction();
			}

			public void Dispose()
			{
				sci.UndoRedo.EndUndoAction();
			}
		}

		char[] sep = { ' ', '\r', '\n', '\t' };

		private void Merge(object sender, EventArgs e)
		{
			DocumentForm doc = mainForm.ActiveDocument as DocumentForm;
			if(doc == null)
				return;
			int index = (int)numericUpDown_frameIndex.Value,
				next,
				pic = (int)numericUpDown_pic.Value;
			int.TryParse(textBox_next.Text, out next);
			List<Range> frames = GetFrames(doc.Scintilla);
			using (UndoHandler undoHandler = new UndoHandler(doc.Scintilla))
			{
				foreach (Range frame in frames)
				{
					GroupCollection match = Regex.Match(frame.Text, Pattern.frame).Groups;
					int num = int.Parse(match[1].Value);
					if (num >= numericUpDown_rangeStart.Value && num <= numericUpDown_rangeEnd.Value)
					{
						string dat = frame.Text;
						dat = Regex.Replace(dat, Pattern.frame, "<frame> " + (checkBoxMerge_index.Checked ? index.ToString() : match[1].Value) + (checkBoxMerge_caption.Checked ? match[2].Value : (" " + comboBox_caption.Text)));
						if (checkBoxMerge_pic.CheckState == CheckState.Checked)
							dat = Regex.Replace(dat, Pattern.pic, "pic: " + pic);
						else if (checkBoxMerge_pic.CheckState == CheckState.Indeterminate && !Regex.IsMatch(dat, Pattern.pic))
						{
							string[] split = dat.Split(sep, StringSplitOptions.RemoveEmptyEntries);
							// TODO: find a way to not write shit-like code
						}
						if (checkBoxMerge_state.Checked)
							dat = Regex.Replace(dat, Pattern.state, "state: " + comboBox_state.Text);
						if (checkBoxMerge_wait.Checked)
							dat = Regex.Replace(dat, Pattern.wait, "wait: " + textBox_wait.Text);
						if (checkBoxMerge_next.Checked)
							dat = Regex.Replace(dat, Pattern.next, "next: " + next);
						if (checkBoxMerge_dvx.Checked)
							dat = Regex.Replace(dat, Pattern.dvx, "dvx: " + textBox_dvx.Text);
						if (checkBoxMerge_dvy.Checked)
							dat = Regex.Replace(dat, Pattern.dvy, "dvy: " + textBox_dvy.Text);
						if (checkBoxMerge_dvz.Checked)
							dat = Regex.Replace(dat, Pattern.dvz, "dvz: " + textBox_dvz.Text);
						if (checkBoxMerge_centerx.Checked)
							dat = Regex.Replace(dat, Pattern.centerx, "centerx: " + textBox_centerx.Text);
						if (checkBoxMerge_centery.Checked)
							dat = Regex.Replace(dat, Pattern.centery, "centery: " + textBox_centery.Text);
						if (checkBoxMerge_hit_a.Checked)
							dat = Regex.Replace(dat, Pattern.hit_a, "hit_a: " + textBox_hit_a.Text);
						if (checkBoxMerge_hit_d.Checked)
							dat = Regex.Replace(dat, Pattern.hit_d, "hit_d: " + textBox_hit_d.Text);
						if (checkBoxMerge_hit_Da.Checked)
							dat = Regex.Replace(dat, Pattern.hit_Da, "hit_Da: " + textBox_hit_Da.Text);
						if (checkBoxMerge_hit_Dj.Checked)
							dat = Regex.Replace(dat, Pattern.hit_Dj, "hit_Dj: " + textBox_hit_Dj.Text);
						if (checkBoxMerge_hit_Fa.Checked)
							dat = Regex.Replace(dat, Pattern.hit_Fa, "hit_Fa: " + textBox_hit_Fa.Text);
						if (checkBoxMerge_hit_Fj.Checked)
							dat = Regex.Replace(dat, Pattern.hit_Fj, "hit_Fj: " + textBox_hit_Fj.Text);
						if (checkBoxMerge_hit_j.Checked)
							dat = Regex.Replace(dat, Pattern.hit_j, "hit_j: " + textBox_hit_j.Text);
						if (checkBoxMerge_hit_ja.Checked)
							dat = Regex.Replace(dat, Pattern.hit_ja, "hit_ja: " + textBox_hit_ja.Text);
						if (checkBoxMerge_hit_Ua.Checked)
							dat = Regex.Replace(dat, Pattern.hit_Ua, "hit_Ua: " + textBox_hit_Ua.Text);
						if (checkBoxMerge_hit_Uj.Checked)
							dat = Regex.Replace(dat, Pattern.hit_Uj, "hit_Uj: " + textBox_hit_Uj.Text);
						if (checkBoxMerge_sound.Checked)
							dat = Regex.Replace(dat, Pattern.sound, "sound: " + textBox_sound.Text);

						frame.Text = dat;

						index++;
						next++;
						pic++;
					}
				}
			}
		}
	}
}
