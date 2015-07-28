using System;
using System.Collections;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Windows.Forms;
using System.Runtime.Serialization.Formatters.Binary;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters;

namespace LF2.IDE
{
	public partial class FormTextureEditor : Form
	{
		MainForm mainForm;
		public static bool[,] Texture = new bool[5, 5];
		public FormTextureEditor(PictureBox displayer, MainForm main)
		{
			InitializeComponent();
			mainForm = main;
			display = displayer;
			pencilToolStripButton.Checked = !(reverserToolStripButton.Checked = ReversePaint = ReversePaint);
			trackBar_Zoom.Value = Zoom;
			PicDraw();
			reSize();
		}

		static bool _reversePaint = true;
		public static bool ReversePaint
		{
			get { return _reversePaint; }
			set { _reversePaint = value; }
		}

		static int _zoom = 10;
		public int Zoom
		{
			get { return _zoom; }
			set { _zoom = value; }
		}

		int lastX = -1, lastY = -1;
		Bitmap bitmap = null, bits = null;
		PictureBox display = null;
		string _filePath = null;
		bool modified = true;
		Stack<bool[,]> undoBuffer = new Stack<bool[,]>(0);
		Stack<bool[,]> redoBuffer = new Stack<bool[,]>(0);

		void FormBitEditKeyDown(object sender, KeyEventArgs e)
		{
			if (e.KeyCode == Keys.Enter || e.KeyCode == Keys.Escape)
				this.Close();
		}

		public void reSize()
		{
			Size size = new Size(Math.Min(Math.Max(menuStrip.PreferredSize.Width, toolBox.Width + pictureBox.Width), Screen.PrimaryScreen.WorkingArea.Width - 20), Math.Min(Math.Max(menuStrip.Height + pictureBox.Height + trackBar_Zoom.Height, toolBox.Height + menuStrip.PreferredSize.Height), Screen.PrimaryScreen.WorkingArea.Height - 50));
			this.ClientSize = size;
		}

		public void PicDraw()
		{
			int zoom = Zoom;
			bool[,] texture = Texture;
			bits = new Bitmap(texture.GetLength(0), texture.GetLength(1));
			bitmap = new Bitmap(texture.GetLength(0) * zoom, texture.GetLength(1) * zoom);
			Graphics g = Graphics.FromImage(bitmap);

			for (int i = 0; i < bits.Width; i++)
			{
				for (int j = 0; j < bits.Height; j++)
				{
					bool b = texture[i, j];
					g.FillRectangle(b ? Brushes.Black : Brushes.White, i * zoom, j * zoom, zoom, zoom);
					bits.SetPixel(i, j, b ? Color.Black : Color.White);
				}
			}

			g.Dispose();
			pictureBox.Image = bitmap;
			pictureBox.Refresh();
			display.BackgroundImage = bits;
			display.Refresh();
		}

		public void BitDraw(int x, int y, bool bit)
		{
			int zoom = Zoom, X = zoom * x, Y = zoom * y;
			Brush b = bit ? Brushes.Black : Brushes.White;
			Texture[x, y] = bit;
			bits.SetPixel(x, y, bit ? Color.Black : Color.White);
			Graphics g = Graphics.FromImage(bitmap);

			g.FillRectangle(b, X, Y, zoom, zoom);
			g.Dispose();
			modified = true;

			pictureBox.Image = bitmap;
			pictureBox.Refresh();
			display.BackgroundImage = bits;
			display.Refresh();
		}

		void PictureBoxMouseMove(object sender, MouseEventArgs e)
		{
			int divx = e.X / Zoom, divy = e.Y / Zoom;
			if (divx == lastX && divy == lastY || e.X < 0 || e.Y < 0 || e.X >= pictureBox.Image.Width || e.Y >= pictureBox.Image.Height) return;
			bool b = Texture[divx, divy];

			if (ReversePaint)
			{
				if (e.Button == MouseButtons.Left)
				{
					BitDraw(divx, divy, !b);
					lastX = divx;
					lastY = divy;
				}
			}
			else
			{
				if (e.Button == MouseButtons.Left)
				{
					BitDraw(divx, divy, true);
					lastX = divx;
					lastY = divy;
				}
				else if (e.Button == MouseButtons.Right)
				{
					BitDraw(divx, divy, false);
					lastX = divx;
					lastY = divy;
				}
			}
		}

		void PictureBoxMouseDown(object sender, MouseEventArgs e)
		{
			redoBuffer.Clear();
			undoBuffer.Push((bool[,])Texture.Clone());

			int divx = e.X / Zoom, divy = e.Y / Zoom;
			bool b = Texture[divx, divy];

			if (ReversePaint)
			{
				if (e.Button == MouseButtons.Left)
				{
					BitDraw(divx, divy, !b);
					lastX = divx;
					lastY = divy;
				}
			}
			else
			{
				if (e.Button == MouseButtons.Left)
				{
					BitDraw(divx, divy, true);
					lastX = divx;
					lastY = divy;
				}
				else if (e.Button == MouseButtons.Right)
				{
					BitDraw(divx, divy, false);
					lastX = divx;
					lastY = divy;
				}
			}
		}

		void PictureBoxMouseUp(object sender, MouseEventArgs e)
		{
			int divx = e.X / Zoom, divy = e.Y / Zoom;
			if (divx == lastX && divy == lastY || e.X < 0 || e.Y < 0 || e.X >= pictureBox.Image.Width || e.Y >= pictureBox.Image.Height) return;
			bool b = Texture[divx, divy];

			if (ReversePaint)
			{
				if (e.Button == MouseButtons.Left)
				{
					BitDraw(divx, divy, !b);
					lastX = divx;
					lastY = divy;
				}
			}
			else
			{
				if (e.Button == MouseButtons.Left)
				{
					BitDraw(divx, divy, true);
					lastX = divx;
					lastY = divy;
				}
				else if (e.Button == MouseButtons.Right)
				{
					BitDraw(divx, divy, false);
					lastX = divx;
					lastY = divy;
				}
			}
		}

		void FormBitEditorLoad(object sender, EventArgs e)
		{
			this.Focus();
		}

		void TrackBarZoomValueChanged(object sender, EventArgs e)
		{
			Zoom = trackBar_Zoom.Value;
			PicDraw();
		}

		void ToolPencilClick(object sender, EventArgs e)
		{
			pencilToolStripButton.Checked = !(reverserToolStripButton.Checked = ReversePaint = false);
		}

		void ToolRPencilClick(object sender, EventArgs e)
		{
			pencilToolStripButton.Checked = !(reverserToolStripButton.Checked = ReversePaint = true);
		}

		void OpenToolStripMenuItemClick(object sender, EventArgs e)
		{
			try
			{
				if (modified && MessageBox.Show(string.IsNullOrEmpty(_filePath) ? "Do you want to save changes?" : "The data in the '" + _filePath + "' has changed.\r\nDo you want to save the changes?", "Texture Editor", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes) Save();
				if (openFileDialog.ShowDialog() == DialogResult.OK)
				{
					BinaryFormatter bf = new BinaryFormatter();
					FileStream fs = new FileStream(openFileDialog.FileName, FileMode.Open);
					FormTextureEditor.Texture = (bool[,])bf.Deserialize(fs);
					fs.Close();
					modified = false;
					Text = Path.GetFileName(openFileDialog.FileName) + " - Texture Editor";
					PicDraw();
					reSize();
				}
			}
			catch (Exception ex)
			{
				mainForm.formEventLog.Error(ex, "Deserialization Error");
			}
		}

		void SaveToolStripMenuItemClick(object sender, EventArgs e)
		{
			Save();
		}

		public bool Save()
		{
			if (String.IsNullOrEmpty(_filePath))
				return SaveAs();

			return Save(_filePath);
		}

		public bool Save(string filePath)
		{
			try
			{
				BinaryFormatter bf = new BinaryFormatter();
				FileStream fs = new FileStream(filePath, FileMode.Create);
				bf.Serialize(fs, FormTextureEditor.Texture);
				fs.Close();
				modified = false;
				this.Text = Path.GetFileName(filePath) + " - Texture Editor";
			}
			catch (Exception ex)
			{
				mainForm.formEventLog.Error(ex, "Serialization Error");
			}
			return true;
		}

		public bool SaveAs()
		{
			if (!string.IsNullOrEmpty(_filePath))
			{
				saveFileDialog.FileName = Path.GetFileName(_filePath);
				saveFileDialog.InitialDirectory = Path.GetDirectoryName(_filePath);
			}
			else
			{
				saveFileDialog.FileName = "Texture";
			}
			if (saveFileDialog.ShowDialog() == DialogResult.OK)
			{
				_filePath = saveFileDialog.FileName;
				Text = Path.GetFileName(_filePath) + " - Texture Editor";

				return Save(_filePath);
			}

			return false;
		}

		void SaveAsToolStripMenuItemClick(object sender, EventArgs e)
		{
			SaveAs();
		}

		void ResizeToolStripMenuItemClick(object sender, EventArgs e)
		{
			bool[,] old = (bool[,])Texture.Clone();
			FormReziseTexture frt = new FormReziseTexture(old.GetLength(0), old.GetLength(1));
			if (frt.ShowDialog() == DialogResult.OK)
			{
				bool[,] texture = new bool[frt.width, frt.height];
				for (int i = 0; i < frt.width; i++)
				{
					for (int j = 0; j < frt.height; j++)
					{
						texture[i, j] = old[i % old.GetLength(0), j % old.GetLength(1)];
					}
				}
				redoBuffer.Clear();
				undoBuffer.Push((bool[,])texture.Clone());
				Texture = texture;
				modified = true;
				PicDraw();
				reSize();
			}
		}

		void UndoToolStripMenuItemClick(object sender, EventArgs e)
		{
			if (undoBuffer.Count == 0) return;
			redoBuffer.Push(Texture.Clone() as bool[,]);
			Texture = undoBuffer.Pop();
			modified = true;
			PicDraw();
		}

		void RedoToolStripMenuItemClick(object sender, EventArgs e)
		{
			if (redoBuffer.Count == 0) return;
			undoBuffer.Push(Texture.Clone() as bool[,]);
			Texture = redoBuffer.Pop();
			modified = true;
			PicDraw();
		}

		void PictureBoxResize(object sender, EventArgs e)
		{
			Size size = toolStripContainer.ContentPanel.Size;
			pictureBox.Left = size.Width / 2 - pictureBox.Width / 2;
			pictureBox.Top = size.Height / 2 - pictureBox.Height / 2 - trackBar_Zoom.Height / 2;
		}

		void ReverseAllToolStripMenuItemClick(object sender, EventArgs e)
		{
			for (int i = 0; i < Texture.GetLength(0); i++)
			{
				for (int j = 0; j < Texture.GetLength(1); j++)
				{
					bool b = Texture[i, j];
					Texture[i, j] = !b;
				}
			}
			PicDraw();
		}

		void FillAllToolStripMenuItemClick(object sender, EventArgs e)
		{
			for (int i = 0; i < Texture.GetLength(0); i++)
			{
				for (int j = 0; j < Texture.GetLength(1); j++)
				{
					Texture[i, j] = true;
				}
			}
			PicDraw();
		}

		void ClearAllToolStripMenuItemClick(object sender, EventArgs e)
		{
			for (int i = 0; i < Texture.GetLength(0); i++)
			{
				for (int j = 0; j < Texture.GetLength(1); j++)
				{
					Texture[i, j] = false;
				}
			}
			PicDraw();
		}

		void FitWindowToolStripMenuItemClick(object sender, EventArgs e)
		{
			reSize();
		}
	}
}
