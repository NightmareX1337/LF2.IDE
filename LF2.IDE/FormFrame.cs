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

		// This is fucking performance not-wise if slicing was possible I would be so happy
		private void Merge(object sender, EventArgs e)
		{
			DocumentForm doc = mainForm.ActiveDocument as DocumentForm;
			if(doc == null)
				return;
			int index = (int)numericUpDown_frameIndex.Value,
				next,
				pic = (int)numericUpDown_pic.Value;
			int.TryParse(textBox_next.Text, out next);
			using (UndoHandler undoHandler = new UndoHandler(doc.Scintilla))
			{
				for (int i = doc.Scintilla.Text.IndexOf("<frame>"), j = doc.Scintilla.Text.IndexOf("<frame_end>", i + 7); i >= 0 && j >= 0; i = doc.Scintilla.Text.IndexOf("<frame>", i + 7), j = doc.Scintilla.Text.IndexOf("<frame_end>", i + 7))
				{
					var frameRange = doc.Scintilla.GetRange(i, j + 11);
					string frame = frameRange.Text;
					GroupCollection match = Regex.Match(frame, LF2DataUtils.Pattern.frame).Groups;
					int num = int.Parse(match[1].Value);
					if (num >= numericUpDown_rangeStart.Value && num <= numericUpDown_rangeEnd.Value)
					{
						LF2DataUtils.Frame frameDat;
						try
						{
							frameDat = LF2DataUtils.ReadFrame(frame);
						}
						catch (LF2DataUtils.DataSyntaxException ex)
						{
							mainForm.formEventLog.Error(ex, "Data Syntax Error");
							return;
						}
						
						if (checkBoxMerge_pic.CheckState == CheckState.Checked || checkBoxMerge_pic.CheckState == CheckState.Indeterminate && frameDat.pic.HasValue)
							frameDat.pic = (int)numericUpDown_pic.Value;
						if (checkBoxMerge_state.CheckState == CheckState.Checked || checkBoxMerge_state.CheckState == CheckState.Indeterminate && frameDat.state.HasValue)
							frameDat.state = int.Parse(comboBox_state.Text);
						if (checkBoxMerge_wait.CheckState == CheckState.Checked || checkBoxMerge_wait.CheckState == CheckState.Indeterminate && frameDat.wait.HasValue)
							frameDat.wait = int.Parse(textBox_wait.Text);
						if (checkBoxMerge_next.CheckState == CheckState.Checked || checkBoxMerge_next.CheckState == CheckState.Indeterminate && frameDat.next.HasValue)
							frameDat.next = next;
						if (checkBoxMerge_dvx.CheckState == CheckState.Checked || checkBoxMerge_dvx.CheckState == CheckState.Indeterminate && frameDat.dvx.HasValue)
							frameDat.dvx = int.Parse(textBox_dvx.Text);
						if (checkBoxMerge_dvy.CheckState == CheckState.Checked || checkBoxMerge_dvy.CheckState == CheckState.Indeterminate && frameDat.dvy.HasValue)
							frameDat.dvy = int.Parse(textBox_dvy.Text);
						if (checkBoxMerge_dvz.CheckState == CheckState.Checked || checkBoxMerge_dvz.CheckState == CheckState.Indeterminate && frameDat.dvz.HasValue)
							frameDat.dvz = int.Parse(textBox_dvz.Text);
						if (checkBoxMerge_centerx.CheckState == CheckState.Checked || checkBoxMerge_centerx.CheckState == CheckState.Indeterminate && frameDat.centerx.HasValue)
							frameDat.centerx = int.Parse(textBox_centerx.Text);
						if (checkBoxMerge_centery.CheckState == CheckState.Checked || checkBoxMerge_centery.CheckState == CheckState.Indeterminate && frameDat.centery.HasValue)
							frameDat.centery = int.Parse(textBox_centery.Text);
						if (checkBoxMerge_hit_a.CheckState == CheckState.Checked || checkBoxMerge_hit_a.CheckState == CheckState.Indeterminate && frameDat.hit_a.HasValue)
							frameDat.hit_a = int.Parse(textBox_hit_a.Text);
						if (checkBoxMerge_hit_d.CheckState == CheckState.Checked || checkBoxMerge_hit_d.CheckState == CheckState.Indeterminate && frameDat.hit_d.HasValue)
							frameDat.hit_d = int.Parse(textBox_hit_d.Text);
						if (checkBoxMerge_hit_Da.CheckState == CheckState.Checked || checkBoxMerge_hit_Da.CheckState == CheckState.Indeterminate && frameDat.hit_Da.HasValue)
							frameDat.hit_Da = int.Parse(textBox_hit_Da.Text);
						if (checkBoxMerge_hit_Dj.CheckState == CheckState.Checked || checkBoxMerge_hit_Dj.CheckState == CheckState.Indeterminate && frameDat.hit_Dj.HasValue)
							frameDat.hit_Dj = int.Parse(textBox_hit_Dj.Text);
						if (checkBoxMerge_hit_Fa.CheckState == CheckState.Checked || checkBoxMerge_hit_Fa.CheckState == CheckState.Indeterminate && frameDat.hit_Fa.HasValue)
							frameDat.hit_Fa = int.Parse(textBox_hit_Fa.Text);
						if (checkBoxMerge_hit_Fj.CheckState == CheckState.Checked || checkBoxMerge_hit_Fj.CheckState == CheckState.Indeterminate && frameDat.hit_Fj.HasValue)
							frameDat.hit_Fj = int.Parse(textBox_hit_Fj.Text);
						if (checkBoxMerge_hit_j.CheckState == CheckState.Checked || checkBoxMerge_hit_j.CheckState == CheckState.Indeterminate && frameDat.hit_j.HasValue)
							frameDat.hit_j = int.Parse(textBox_hit_j.Text);
						if (checkBoxMerge_hit_ja.CheckState == CheckState.Checked || checkBoxMerge_hit_ja.CheckState == CheckState.Indeterminate && frameDat.hit_ja.HasValue)
							frameDat.hit_ja = int.Parse(textBox_hit_ja.Text);
						if (checkBoxMerge_hit_Ua.CheckState == CheckState.Checked || checkBoxMerge_hit_Ua.CheckState == CheckState.Indeterminate && frameDat.hit_Ua.HasValue)
							frameDat.hit_Ua = int.Parse(textBox_hit_Ua.Text);
						if (checkBoxMerge_hit_Uj.CheckState == CheckState.Checked || checkBoxMerge_hit_Uj.CheckState == CheckState.Indeterminate && frameDat.hit_Uj.HasValue)
							frameDat.hit_Uj = int.Parse(textBox_hit_Uj.Text);
						if (checkBoxMerge_sound.CheckState == CheckState.Checked || checkBoxMerge_sound.CheckState == CheckState.Indeterminate && frameDat.sound != null)
							frameDat.sound = textBox_sound.Text;

						frameRange.Text = frameDat.ToString();

						index++;
						next++;
						pic++;
					}
				}
			}
		}
	}
}
