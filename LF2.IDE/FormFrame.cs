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
				drawBox.Image = mainForm.lastActiveFrame[mainForm.lastActiveDoc.frameIndexFrame = (int)numericUpDown_imageIndex.Value];

			numericUpDown_imageIndex.Refresh();
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
			int nextStep; int.TryParse(next.Text.Trim(), out nextStep);
			StringBuilder str = new StringBuilder().AppendFormat("<frame> {0} {1}\r\n   pic: {2}  state: {3}  wait: {4}  next: {5}  dvx: {6}  dvy: {7}{8}  centerx: {9}  centery: {10}", numericUpDown_frameIndex.Value, ComboBox_caption.Text.Trim(), numericUpDown_imageIndex.Value, state.Text.Trim(), wait.Text.Trim(), next.Text.Trim(), dvx.Text.Trim(), dvy.Text.Trim(), (dvz.Text != "" ? "  dvz: " + dvz.Text.Trim() : ""), centerx.Text.Trim(), centery.Text.Trim());
			str.Append(hit_a.Text.Trim() == "" ? "" : "  hit_a: " + hit_a.Text.Trim());
			str.Append(hit_d.Text.Trim() == "" ? "" : "  hit_d: " + hit_d.Text.Trim());
			str.Append(hit_j.Text.Trim() == "" ? "" : "  hit_j: " + hit_j.Text.Trim());
			str.Append(hit_Fa.Text.Trim() == "" ? "" : "  hit_Fa: " + hit_Fa.Text.Trim());
			str.Append(hit_Ua.Text.Trim() == "" ? "" : "  hit_Ua: " + hit_Ua.Text.Trim());
			str.Append(hit_Da.Text.Trim() == "" ? "" : "  hit_Da: " + hit_Da.Text.Trim());
			str.Append(hit_Fj.Text.Trim() == "" ? "" : "  hit_Fj: " + hit_Fj.Text.Trim());
			str.Append(hit_Uj.Text.Trim() == "" ? "" : "  hit_Uj: " + hit_Uj.Text.Trim());
			str.Append(hit_Dj.Text.Trim() == "" ? "" : "  hit_Dj: " + hit_Dj.Text.Trim());
			str.Append(hit_ja.Text.Trim() == "" ? "" : "  hit_ja: " + hit_ja.Text.Trim());
			str.Append(sound.Text.Trim() == "" ? "" : "\r\n  sound: " + sound.Text.Trim());

			string tags = mainForm.formTag.Generate();

			if (checkBox_AddTags.Checked && tags != "")
				str.Append("\r\n" + tags);
			str.Append("\r\n<frame_end>");

			for (int i = 0; i < frameCount.Value; i++)
			{
				str.AppendFormat("\r\n\r\n<frame> {0} {1}\r\n   pic: {2}  state: {3}  wait: {4}  next: {5}  dvx: {6}  dvy: {7}{8}  centerx: {9}  centery: {10}", numericUpDown_frameIndex.Value, ComboBox_caption.Text.Trim(), numericUpDown_imageIndex.Value, state.Text.Trim(), wait.Text.Trim(), next.Text.Trim(), dvx.Text.Trim(), dvy.Text.Trim(), (dvz.Text != "" ? "  dvz: " + dvz.Text.Trim() : ""), centerx.Text.Trim(), centery.Text.Trim());
				str.Append(hit_a.Text.Trim() == "" ? "" : "  hit_a: " + hit_a.Text.Trim());
				str.Append(hit_d.Text.Trim() == "" ? "" : "  hit_d: " + hit_d.Text.Trim());
				str.Append(hit_j.Text.Trim() == "" ? "" : "  hit_j: " + hit_j.Text.Trim());
				str.Append(hit_Fa.Text.Trim() == "" ? "" : "  hit_Fa: " + hit_Fa.Text.Trim());
				str.Append(hit_Ua.Text.Trim() == "" ? "" : "  hit_Ua: " + hit_Ua.Text.Trim());
				str.Append(hit_Da.Text.Trim() == "" ? "" : "  hit_Da: " + hit_Da.Text.Trim());
				str.Append(hit_Fj.Text.Trim() == "" ? "" : "  hit_Fj: " + hit_Fj.Text.Trim());
				str.Append(hit_Uj.Text.Trim() == "" ? "" : "  hit_Uj: " + hit_Uj.Text.Trim());
				str.Append(hit_Dj.Text.Trim() == "" ? "" : "  hit_Dj: " + hit_Dj.Text.Trim());
				str.Append(hit_ja.Text.Trim() == "" ? "" : "  hit_ja: " + hit_ja.Text.Trim());
				str.Append(sound.Text.Trim() == "" ? "" : "\r\n  sound: " + sound.Text.Trim());
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
			next.Text = nextMinus.Text;
		}

		private void NextPlus(object sender, EventArgs e)
		{
			next.Text = nextPlus.Text;
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
				Clipboard.SetText(richTextBox.Text);
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
	}
}
