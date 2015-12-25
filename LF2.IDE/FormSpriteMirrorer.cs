using System;
using System.IO;
using System.Drawing;
using System.Collections.Generic;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace LF2.IDE
{
	public partial class FormSpriteMirrorer : Form
	{
		MainForm mainForm;

		public FormSpriteMirrorer(string path, MainForm main)
		{
			InitializeComponent();
			mainForm = main;
			Bitmap img = HelperTools.GetClonedBitmap(path);

			foreach (string rft in RotateFlipType.GetNames(typeof(RotateFlipType)))
				comboBox_Mode.Items.Add(rft);

			drawBox_OriginalSprite.Image = original = img;
			drawBox_ModifedSprite.Image = (Bitmap)original.Clone();

			this.path = Path.GetDirectoryName(path) + "\\" + Path.GetFileNameWithoutExtension(path) + "_mirror" + Path.GetExtension(path);
		}

		Bitmap original;
		string path;

		void FormMirrorerLoad(object sender, EventArgs e)
		{
			comboBox_Mode.SelectedItem = "RotateNoneFlipX";
		}

		void ComboBoxModeSelectedIndexChanged(object sender, EventArgs e)
		{
			drawBox_ModifedSprite.Image.RotateFlip((RotateFlipType)RotateFlipType.Parse(typeof(RotateFlipType), (string)comboBox_Mode.SelectedItem));
			drawBox_ModifedSprite.Refresh();
		}
		
		void ButtonApplyClick(object sender, EventArgs e)
		{
			original.RotateFlip((RotateFlipType)RotateFlipType.Parse(typeof(RotateFlipType), (string)comboBox_Mode.SelectedItem));
			FormImageSaver saver = new FormImageSaver(original, path, false, mainForm);
			saver.ShowDialog();
		}
	}
}
