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

			foreach (string rft in RotateFlipType.GetNames(typeof(RotateFlipType)))
				comboBox_Mode.Items.Add(rft);

			drawBox_OriginalSprite.Image = original = HelperTools.GetClonedBitmap(path);
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
			(drawBox_ModifedSprite.Image = (Image)original.Clone()).RotateFlip((RotateFlipType)RotateFlipType.Parse(typeof(RotateFlipType), (string)comboBox_Mode.SelectedItem));
			drawBox_ModifedSprite.Refresh();
		}
		
		void ButtonApplyClick(object sender, EventArgs e)
		{
			if (File.Exists(path))
			{
				DialogResult dr = MessageBox.Show(this, "A file named \"" + Path.GetFileName(path) + "\" already exist.\r\nDo you want to overwrite it?", "Sprite Mirrorer", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1);
				if (dr == DialogResult.Cancel)
				{
					return;
				}
				else if (dr == DialogResult.No)
				{
					saveFileDialog.FileName = Path.GetFileName(path);
					saveFileDialog.InitialDirectory = Path.GetDirectoryName(path);
					if (saveFileDialog.ShowDialog(this) == DialogResult.OK)
					{
						original.RotateFlip((RotateFlipType)RotateFlipType.Parse(typeof(RotateFlipType), (string)comboBox_Mode.SelectedItem));
						original.Save(saveFileDialog.FileName, ImageFormat.Bmp);
						this.Close();
					}
					else
						return;
				}
				else if (dr == DialogResult.Yes)
				{
					original.RotateFlip((RotateFlipType)RotateFlipType.Parse(typeof(RotateFlipType), (string)comboBox_Mode.SelectedItem));
					original.Save(path, ImageFormat.Bmp);
					this.Close();
				}
			}
			else
			{
				original.RotateFlip((RotateFlipType)RotateFlipType.Parse(typeof(RotateFlipType), (string)comboBox_Mode.SelectedItem));
				original.Save(path, ImageFormat.Bmp);
				this.Close();
			}
		}
	}
}
