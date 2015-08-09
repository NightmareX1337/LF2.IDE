using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Windows.Forms;

namespace LF2.IDE
{
	public partial class FormTransparencyTools : Form
	{
		MainForm mainForm;

		public FormTransparencyTools(Bitmap img, string path, MainForm main)
		{
			InitializeComponent();
			mainForm = main;
			allowedFormats.Add(PixelFormat.Format16bppRgb555);
			allowedFormats.Add(PixelFormat.Format16bppRgb565);
			allowedFormats.Add(PixelFormat.Format24bppRgb);
			allowedFormats.Add(PixelFormat.Format32bppArgb);
			allowedFormats.Add(PixelFormat.Format32bppPArgb);
			allowedFormats.Add(PixelFormat.Format32bppRgb);
			allowedFormats.Add(PixelFormat.Format48bppRgb);
			allowedFormats.Add(PixelFormat.Format64bppArgb);
			allowedFormats.Add(PixelFormat.Format64bppPArgb);

			if (!allowedFormats.Contains(img.PixelFormat))
			{
				bmp = new Bitmap(img.Width, img.Height, PixelFormat.Format32bppRgb);
				using (Graphics g = Graphics.FromImage(bmp))
				{
					g.DrawImage(img, new Rectangle(0, 0, img.Width, img.Height));
				}
				original = (Bitmap)bmp.Clone();
			}
			else
			{
				original = (Bitmap)img.Clone();
				bmp = (Bitmap)original.Clone();
			}

			this.path = path;
		}

		readonly Bitmap original;
		Bitmap bmp;
		string path;

		public bool[,] texture
		{
			get { return FormTextureEditor.Texture; }
			set { FormTextureEditor.Texture = value; }
		}

		readonly List<PixelFormat> allowedFormats = new List<PixelFormat>(9);

		void FormTransparentLoad(object sender, EventArgs e)
		{
			pictureBoxOriginal.Image = (Image)bmp.Clone();
			pictureBoxModified.Image = (Image)bmp.Clone();

			hScrollBarO.Maximum = Math.Max(0, pictureBoxOriginal.Width - panelOriginal.Width);
			vScrollBarO.Maximum = Math.Max(0, pictureBoxOriginal.Height - panelOriginal.Height);
			hScrollBarM.Maximum = Math.Max(0, pictureBoxModified.Width - panelModified.Width);
			vScrollBarM.Maximum = Math.Max(0, pictureBoxModified.Height - panelModified.Height);

			Bitmap bits = new Bitmap(texture.GetLength(0), texture.GetLength(1));
			for (int i = 0; i < bits.Width; i++)
			{
				for (int j = 0; j < bits.Height; j++)
				{
					bits.SetPixel(i, j, texture[i, j] ? Color.Black : Color.White);
				}
			}
			pictureBoxTexture.BackgroundImage = bits;
			VerticalDraw();
			HorizontalDraw();
		}

		void PanelOriginalResize(object sender, EventArgs e)
		{
			hScrollBarO.Maximum = Math.Max(0, pictureBoxOriginal.Width - panelOriginal.Width);
			vScrollBarO.Maximum = Math.Max(0, pictureBoxOriginal.Height - panelOriginal.Height);
			hScrollBarO.Value = vScrollBarO.Value = 0;
		}

		void PanelModifiedResize(object sender, EventArgs e)
		{
			hScrollBarM.Maximum = Math.Max(0, pictureBoxModified.Width - panelModified.Width);
			vScrollBarM.Maximum = Math.Max(0, pictureBoxModified.Height - panelModified.Height);
			hScrollBarM.Value = vScrollBarO.Value = 0;
		}

		void HScrollBarOValueChanged(object sender, EventArgs e)
		{
			pictureBoxOriginal.Left = -hScrollBarO.Value;
		}

		void VScrollBarOValueChanged(object sender, EventArgs e)
		{
			pictureBoxOriginal.Top = -vScrollBarO.Value;
		}

		void HScrollBarMValueChanged(object sender, EventArgs e)
		{
			pictureBoxModified.Left = -hScrollBarM.Value;
		}

		void VScrollBarMValueChanged(object sender, EventArgs e)
		{
			pictureBoxModified.Top = -vScrollBarM.Value;
		}

		void ButtonPxApplyClick(object sender, EventArgs e)
		{
			bool rewrite = checkBoxPxRewrite.Checked;
			bool even = checkBoxPxEven.Checked;
			int percent = (int)numericUpDownPxProper.Value;
			int x = Math.Max(0, pictureBoxOriginal.Rectangle.X), y = Math.Max(0, pictureBoxOriginal.Rectangle.Y), r = Math.Min(pictureBoxOriginal.Rectangle.Right, bmp.Width), b = Math.Min(pictureBoxOriginal.Rectangle.Bottom, bmp.Height);
			switch (percent)
			{
				case 0:
					for (int i = x; i < r; i++)
					{
						for (int j = y; j < b; j++)
						{
							if (rewrite)
								bmp.SetPixel(i, j, original.GetPixel(i, j));
						}
					}
					break;
				case 25:
					for (int i = x; i < r; i++)
					{
						for (int j = y; j < b; j++)
						{
							if (even ? (i % 2 == 0 && j % 2 == 0) : (i % 2 == 1 && j % 2 == 1))
								bmp.SetPixel(i, j, Color.Black);
							else if (rewrite)
								bmp.SetPixel(i, j, original.GetPixel(i, j));
						}
					}
					break;
				case 50:
					for (int i = x, k = 0; i < r; i++, k++)
					{
						for (int j = y, l = 0; j < b; j++, l++)
						{
							if (even ? ((k + l) % 2 == 0) : ((k + l) % 2 == 1))
								bmp.SetPixel(i, j, Color.Black);
							else if (rewrite)
								bmp.SetPixel(i, j, original.GetPixel(i, j));
						}
					}
					break;
				case 75:
					for (int i = pictureBoxOriginal.Rectangle.X; i < r; i++)
					{
						for (int j = pictureBoxOriginal.Rectangle.Y; j < b; j++)
						{
							if (even ? (i % 2 == 0 || j % 2 == 0) : (i % 2 == 1 || j % 2 == 1))
								bmp.SetPixel(i, j, Color.Black);
							else if (rewrite)
								bmp.SetPixel(i, j, original.GetPixel(i, j));
						}
					}
					break;
				case 100:
					for (int i = x; i < r; i++)
					{
						for (int j = y; j < b; j++)
						{
							bmp.SetPixel(i, j, Color.Black);
						}
					}
					break;
			}
			pictureBoxModified.Image = (Image)bmp.Clone();
			numericUpDownPxProper.Focus();
		}

		void ButtonPxRandClick(object sender, EventArgs e)
		{
			bool rewrite = checkBoxPxRewrite.Checked;
			double percent = (double)numericUpDownPxRand.Value / 100d;
			Random rand = new Random();
			int x = Math.Max(0, pictureBoxOriginal.Rectangle.X), y = Math.Max(0, pictureBoxOriginal.Rectangle.Y), r = Math.Min(pictureBoxOriginal.Rectangle.Right, bmp.Width), b = Math.Min(pictureBoxOriginal.Rectangle.Bottom, bmp.Height);

			for (int i = x; i < r; i++)
			{
				for (int j = y; j < b; j++)
				{
					if (rand.NextDouble() <= percent)
						bmp.SetPixel(i, j, Color.Black);
					else if (rewrite)
						bmp.SetPixel(i, j, original.GetPixel(i, j));
				}
			}
			pictureBoxModified.Image = (Image)bmp.Clone();
			numericUpDownPxRand.Focus();
		}

		static FormTextureEditor bitEditor = null;

		void ButtonEditTextureClick(object sender, EventArgs e)
		{
			if (bitEditor == null || bitEditor.IsDisposed)
				bitEditor = new FormTextureEditor(pictureBoxTexture, mainForm);
			if (bitEditor.Visible)
				bitEditor.Hide();
			bitEditor.Show(this);
		}

		void ButtonTextureClick(object sender, EventArgs e)
		{
			bool rewrite = checkBoxTxRewrite.Checked;
			int x = Math.Max(0, pictureBoxOriginal.Rectangle.X), y = Math.Max(0, pictureBoxOriginal.Rectangle.Y), r = Math.Min(pictureBoxOriginal.Rectangle.Right, bmp.Width), b = Math.Min(pictureBoxOriginal.Rectangle.Bottom, bmp.Height);
			for (int i = x; i < r; i++)
			{
				for (int j = y; j < b; j++)
				{
					if (checkBoxTxIndex.Checked && texture[i % texture.GetLength(0), j % texture.GetLength(1)] || !checkBoxTxIndex.Checked && texture[(i - x) % texture.Length, (j - y) % texture.GetLength(0)])
						bmp.SetPixel(i, j, Color.Black);
					else if (rewrite)
						bmp.SetPixel(i, j, original.GetPixel(i, j));
				}
			}
			pictureBoxModified.Image = (Image)bmp.Clone();
		}

		void ButtonSelectAllClick(object sender, EventArgs e)
		{
			pictureBoxOriginal.Rectangle = new Rectangle(Point.Empty, original.Size);
		}

		void ButtonScrollRClick(object sender, EventArgs e)
		{
			pictureBoxOriginal.Rectangle = new Rectangle(pictureBoxOriginal.Rectangle.Right + 1, pictureBoxOriginal.Rectangle.Y, pictureBoxOriginal.Rectangle.Width, pictureBoxOriginal.Rectangle.Height);
		}

		void ButtonScrollLClick(object sender, EventArgs e)
		{
			pictureBoxOriginal.Rectangle = new Rectangle(pictureBoxOriginal.Rectangle.X - pictureBoxOriginal.Rectangle.Width - 1, pictureBoxOriginal.Rectangle.Y, pictureBoxOriginal.Rectangle.Width, pictureBoxOriginal.Rectangle.Height);
		}

		void ButtonScrollDClick(object sender, EventArgs e)
		{
			pictureBoxOriginal.Rectangle = new Rectangle(pictureBoxOriginal.Rectangle.X, pictureBoxOriginal.Rectangle.Bottom + 1, pictureBoxOriginal.Rectangle.Width, pictureBoxOriginal.Rectangle.Height);
		}

		void ButtonScrollUClick(object sender, EventArgs e)
		{
			pictureBoxOriginal.Rectangle = new Rectangle(pictureBoxOriginal.Rectangle.X, pictureBoxOriginal.Rectangle.Y - pictureBoxOriginal.Rectangle.Height - 1, pictureBoxOriginal.Rectangle.Width, pictureBoxOriginal.Rectangle.Height);
		}

		void FormTransparentKeyDown(object sender, KeyEventArgs e)
		{
			switch (e.KeyData)
			{
				case Keys.W:
					buttonScrollU.PerformClick();
					e.Handled = true;
					e.SuppressKeyPress = true;
					break;
				case Keys.S:
					buttonScrollD.PerformClick();
					e.Handled = true;
					e.SuppressKeyPress = true;
					break;
				case Keys.D:
					buttonScrollR.PerformClick();
					e.Handled = true;
					e.SuppressKeyPress = true;
					break;
				case Keys.A:
					buttonScrollL.PerformClick();
					e.Handled = true;
					e.SuppressKeyPress = true;
					break;
				case Keys.T:
					ScrollVertical(false);
					e.Handled = true;
					e.SuppressKeyPress = true;
					break;
				case Keys.G:
					ScrollVertical(true);
					e.Handled = true;
					e.SuppressKeyPress = true;
					break;
				case Keys.H:
					ScrollHorizontal(true);
					e.Handled = true;
					e.SuppressKeyPress = true;
					break;
				case Keys.F:
					ScrollHorizontal(false);
					e.Handled = true;
					e.SuppressKeyPress = true;
					break;
			}
		}

		void ScrollHorizontal(bool right)
		{
			if (right)
				pictureBoxOriginal.Rectangle = new Rectangle(pictureBoxOriginal.Rectangle.X + 1, pictureBoxOriginal.Rectangle.Y, pictureBoxOriginal.Rectangle.Width, pictureBoxOriginal.Rectangle.Height);
			else
				pictureBoxOriginal.Rectangle = new Rectangle(pictureBoxOriginal.Rectangle.X - 1, pictureBoxOriginal.Rectangle.Y, pictureBoxOriginal.Rectangle.Width, pictureBoxOriginal.Rectangle.Height);
		}

		void ScrollVertical(bool down)
		{
			if (down)
				pictureBoxOriginal.Rectangle = new Rectangle(pictureBoxOriginal.Rectangle.X, pictureBoxOriginal.Rectangle.Y + 1, pictureBoxOriginal.Rectangle.Width, pictureBoxOriginal.Rectangle.Height);
			else
				pictureBoxOriginal.Rectangle = new Rectangle(pictureBoxOriginal.Rectangle.X, pictureBoxOriginal.Rectangle.Y - 1, pictureBoxOriginal.Rectangle.Width, pictureBoxOriginal.Rectangle.Height);
		}

		void ButtonSaveClick(object sender, EventArgs e)
		{
			FormImageSaver saver = new FormImageSaver(bmp, path, false, mainForm);
			saver.ShowDialog();
		}

		void VLdraw(object sender, EventArgs e)
		{
			VerticalDraw();
		}

		void HLdraw(object sender, EventArgs e)
		{
			HorizontalDraw();
		}

		void VerticalDraw()
		{
			int w = (int)(numericUpDownVLBlackW.Value + numericUpDownVLWhiteW.Value);
			Bitmap image = new Bitmap(w, 1);

			if (checkBoxVLBlackFirst.Checked)
			{
				for (int i = 0; i < numericUpDownVLBlackW.Value; i++)
					image.SetPixel(i, 0, Color.Black);

				for (int i = 0; i < numericUpDownVLWhiteW.Value; i++)
					image.SetPixel((int)(i + numericUpDownVLBlackW.Value), 0, Color.White);
			}
			else
			{
				for (int i = 0; i < numericUpDownVLWhiteW.Value; i++)
					image.SetPixel(i, 0, Color.White);

				for (int i = 0; i < numericUpDownVLBlackW.Value; i++)
					image.SetPixel((int)(i + numericUpDownVLWhiteW.Value), 0, Color.Black);
			}

			pictureBoxVL.BackgroundImage = image;
		}

		void HorizontalDraw()
		{
			int h = (int)(numericUpDownHLBlackW.Value + numericUpDownHLWhiteW.Value);
			Bitmap image = new Bitmap(1, h);

			if (checkBoxHLBlackFirst.Checked)
			{
				for (int i = 0; i < numericUpDownHLBlackW.Value; i++)
					image.SetPixel(0, i, Color.Black);

				for (int i = 0; i < numericUpDownHLWhiteW.Value; i++)
					image.SetPixel(0, (int)(i + numericUpDownHLBlackW.Value), Color.White);
			}
			else
			{
				for (int i = 0; i < numericUpDownHLWhiteW.Value; i++)
					image.SetPixel(0, i, Color.White);

				for (int i = 0; i < numericUpDownHLBlackW.Value; i++)
					image.SetPixel(0, (int)(i + numericUpDownHLWhiteW.Value), Color.Black);
			}

			pictureBoxHL.BackgroundImage = image;
		}

		void ButtonVLApplyClick(object sender, EventArgs e)
		{
			bool rewrite = checkBoxVLRewrite.Checked;
			int x = Math.Max(0, pictureBoxOriginal.Rectangle.X), y = Math.Max(0, pictureBoxOriginal.Rectangle.Y), r = Math.Min(pictureBoxOriginal.Rectangle.Right, bmp.Width), b = Math.Min(pictureBoxOriginal.Rectangle.Bottom, bmp.Height);
			int black = (int)numericUpDownVLBlackW.Value, color = (int)numericUpDownVLWhiteW.Value;
			int w = black + color;

			for (int i = y; i < b; i++)
			{
				for (int j = x; j < r; j += w)
				{
					if (checkBoxVLBlackFirst.Checked)
					{
						for (int k = j; k < black + j && k < r; k++)
							bmp.SetPixel(k, i, Color.Black);
						if (rewrite)
						{
							for (int l = j + black; l < w + j && l < r; l++)
								bmp.SetPixel(l, i, original.GetPixel(l, i));
						}
					}
					else
					{
						if (rewrite)
						{
							for (int l = j; l < color + j && l < r; l++)
								bmp.SetPixel(l, i, original.GetPixel(l, i));
						}
						for (int k = j + color; k < w + j && k < r; k++)
							bmp.SetPixel(k, i, Color.Black);
					}
				}
			}
			pictureBoxModified.Image = (Image)bmp.Clone();
		}

		void ButtonHLApplyClick(object sender, EventArgs e)
		{
			bool rewrite = checkBoxHLRewrite.Checked;
			int x = Math.Max(0, pictureBoxOriginal.Rectangle.X), y = Math.Max(0, pictureBoxOriginal.Rectangle.Y), r = Math.Min(pictureBoxOriginal.Rectangle.Right, bmp.Width), b = Math.Min(pictureBoxOriginal.Rectangle.Bottom, bmp.Height);
			int black = (int)numericUpDownHLBlackW.Value, color = (int)numericUpDownHLWhiteW.Value;
			int h = black + color;

			for (int i = x; i < r; i++)
			{
				for (int j = y; j < b; j += h)
				{
					if (checkBoxHLBlackFirst.Checked)
					{
						for (int k = j; k < black + j && k < b; k++)
							bmp.SetPixel(i, k, Color.Black);
						if (rewrite)
						{
							for (int l = j + black; l < h + j && l < b; l++)
								bmp.SetPixel(i, l, original.GetPixel(i, l));
						}
					}
					else
					{
						if (rewrite)
						{
							for (int l = j; l < color + j && l < b; l++)
								bmp.SetPixel(i, l, original.GetPixel(i, l));
						}
						for (int k = j + color; k < h + j && k < b; k++)
							bmp.SetPixel(i, k, Color.Black);
					}
				}
			}
			pictureBoxModified.Image = (Image)bmp.Clone();
		}

		void ButtonVLRandApplyClick(object sender, EventArgs e)
		{
			bool rewrite = checkBoxVLRewrite.Checked;
			double d = ((double)numericUpDownVLRand.Value) / 100d;
			int x = Math.Max(0, pictureBoxOriginal.Rectangle.X), y = Math.Max(0, pictureBoxOriginal.Rectangle.Y), r = Math.Min(pictureBoxOriginal.Rectangle.Right, bmp.Width), b = Math.Min(pictureBoxOriginal.Rectangle.Bottom, bmp.Height);
			Random rnd = new Random();

			using (Graphics g = Graphics.FromImage(bmp))
			{
				for (int i = x; i < r; i++)
				{
					if (rnd.NextDouble() <= d)
					{
						g.DrawLine(Pens.Black, i, y, i, b);
					}
					else
					{
						if (rewrite)
						{
							for (int j = y; j < b; j++)
							{
								bmp.SetPixel(i, j, original.GetPixel(i, j));
							}
						}
					}
				}
			}
			pictureBoxModified.Image = (Bitmap)bmp.Clone();
		}

		void ButtonHLRandApplyClick(object sender, EventArgs e)
		{
			bool rewrite = checkBoxHLRewrite.Checked;
			double d = ((double)numericUpDownHLRand.Value) / 100d;
			int x = Math.Max(0, pictureBoxOriginal.Rectangle.X), y = Math.Max(0, pictureBoxOriginal.Rectangle.Y), r = Math.Min(pictureBoxOriginal.Rectangle.Right, bmp.Width), b = Math.Min(pictureBoxOriginal.Rectangle.Bottom, bmp.Height);
			Random rnd = new Random();

			using (Graphics g = Graphics.FromImage(bmp))
			{
				for (int i = y; i < b; i++)
				{
					if (rnd.NextDouble() <= d)
					{
						g.DrawLine(Pens.Black, x, i, r, i);
					}
					else
					{
						if (rewrite)
						{
							for (int j = x; j < r; j++)
							{
								bmp.SetPixel(j, i, original.GetPixel(j, i));
							}
						}
					}
				}
			}
			pictureBoxModified.Image = (Bitmap)bmp.Clone();
		}

		bool editing = false;
		private int editingLevel = 0;

		public void EditIn()
		{
			editingLevel++;
			editing = editingLevel > 0;
		}

		public void EditOut()
		{
			editingLevel--;
			editing = editingLevel > 0;
		}

		void BoundTextChanged(object sender, EventArgs e)
		{
			if (editing) return;

			try
			{
				pictureBoxOriginal.Rectangle = new Rectangle(int.Parse(xBox.Text), int.Parse(yBox.Text), int.Parse(wBox.Text), int.Parse(hBox.Text));
			}
			catch { }
		}

		void PictureBoxOriginalRectangleChanged(object sender, EventArgs e)
		{
			EditIn();

			xBox.Text = pictureBoxOriginal.Rectangle.X.ToString();
			yBox.Text = pictureBoxOriginal.Rectangle.Y.ToString();
			wBox.Text = pictureBoxOriginal.Rectangle.Width.ToString();
			hBox.Text = pictureBoxOriginal.Rectangle.Height.ToString();
			rightBox.Text = pictureBoxOriginal.Rectangle.Right.ToString();
			bottomBox.Text = pictureBoxOriginal.Rectangle.Bottom.ToString();

			xBox.Refresh();
			yBox.Refresh();
			wBox.Refresh();
			hBox.Refresh();
			rightBox.Refresh();
			bottomBox.Refresh();

			EditOut();
		}
	}
}
