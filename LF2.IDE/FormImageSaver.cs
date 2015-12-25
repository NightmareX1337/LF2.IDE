using System;
using System.Collections.Generic;
using System.IO;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Windows.Forms;

namespace LF2.IDE
{
	public partial class FormImageSaver : Form
	{
		MainForm mainForm;

		public FormImageSaver(Bitmap img, string path, bool checkFormat, MainForm main)
		{
			InitializeComponent();
			mainForm = main;
			original = img;

			allowedFormats.Add(PixelFormat.Format16bppRgb555);
			allowedFormats.Add(PixelFormat.Format16bppRgb565);
			allowedFormats.Add(PixelFormat.Format24bppRgb);
			allowedFormats.Add(PixelFormat.Format32bppArgb);
			allowedFormats.Add(PixelFormat.Format32bppPArgb);
			allowedFormats.Add(PixelFormat.Format32bppRgb);
			allowedFormats.Add(PixelFormat.Format48bppRgb);
			allowedFormats.Add(PixelFormat.Format64bppArgb);
			allowedFormats.Add(PixelFormat.Format64bppPArgb);

			foreach (var format in allowedFormats)
				comboBoxPixelFormat.Items.Add(format);

			propertyGrid.SelectedObject = original;

			comboBoxPixelFormat.SelectedItem = original.PixelFormat;
			comboBoxImageFormat.SelectedIndex = 0;

			saveFileDialog.InitialDirectory = Path.GetDirectoryName(this.path = path);
		}

		public FormImageSaver(string path, bool checkFormat, MainForm main) : this(HelperTools.GetClonedBitmap(path), path, checkFormat, main)
		{
		}

		readonly List<PixelFormat> allowedFormats = new List<PixelFormat>(9);
		readonly Bitmap original;
		string path;

		void ButtonOKClick(object sender, EventArgs e)
		{
			saveFileDialog.FileName = Path.GetFileNameWithoutExtension(path);
			saveFileDialog.FilterIndex = Math.Max(1, comboBoxImageFormat.SelectedIndex);

			if (saveFileDialog.ShowDialog() != DialogResult.OK)
				return;

			try
			{
				PixelFormat px = (PixelFormat)comboBoxPixelFormat.SelectedItem;

				using (Bitmap image = new Bitmap(original.Width, original.Height, px))
				{
					using (Graphics g = Graphics.FromImage(image))
					{
						g.DrawImage(original, 0, 0, original.Width, original.Height);
					}
					switch (comboBoxImageFormat.SelectedIndex)
					{
						case 0:
							image.Save(saveFileDialog.FileName, ImageFormat.Bmp);
							break;
						case 1:
							image.Save(saveFileDialog.FileName, ImageFormat.MemoryBmp);
							break;
						case 2:
							image.Save(saveFileDialog.FileName, ImageFormat.Png);
							break;
						case 3:
							image.Save(saveFileDialog.FileName, ImageFormat.Jpeg);
							break;
						case 4:
							image.Save(saveFileDialog.FileName, ImageFormat.Gif);
							break;
						case 5:
							image.Save(saveFileDialog.FileName, ImageFormat.Emf);
							break;
						case 6:
							image.Save(saveFileDialog.FileName, ImageFormat.Tiff);
							break;
						case 7:
							image.Save(saveFileDialog.FileName, ImageFormat.Wmf);
							break;
					}
				}
			}
			catch (Exception ex)
			{
				mainForm.formEventLog.Error(ex, "Image Processing Error");
				return;
			}
			this.DialogResult = DialogResult.OK;
		}

		void ButtonCancelClick(object sender, EventArgs e)
		{
			this.DialogResult = DialogResult.Cancel;
		}
	}
}
