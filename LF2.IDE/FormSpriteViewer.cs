using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using WeifenLuo.WinFormsUI.Docking;

namespace LF2.IDE
{
	public partial class FormSpriteViewer : Form
	{
		public FormSpriteViewer(Image resim, WeifenLuo.WinFormsUI.Docking.DockContent reshow)
		{
			InitializeComponent();
			show = reshow;
			this.ClientSize = resim.Size;
			drawBox.Image = resim;
		}

		WeifenLuo.WinFormsUI.Docking.DockContent show = null;

		private void FormPic_Load(object sender, EventArgs e)
		{

		}

		void FormPicKeyDown(object sender, KeyEventArgs e)
		{
			if (e.KeyCode == Keys.Escape)
				this.Close();
		}

		void FormPicFormClosed(object sender, FormClosedEventArgs e)
		{
			if (show.DockState == DockState.DockRightAutoHide || 
				show.DockState == DockState.DockLeftAutoHide || 
				show.DockState == DockState.DockTopAutoHide || 
				show.DockState == DockState.DockBottomAutoHide)
			{
				Program.MainForm.dockPanel.ActiveAutoHideContent = show;
			}
			show.Show();
		}
	}
}
