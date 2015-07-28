namespace LF2.IDE
{
	partial class MediaPanel
	{
		/// <summary>
		/// Designer variable used to keep track of non-visual components.
		/// </summary>
		private System.ComponentModel.IContainer components = null;
		
		/// <summary>
		/// Disposes resources used by the form.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing) {
				if (components != null) {
					components.Dispose();
				}
			}
			base.Dispose(disposing);
		}
		
		/// <summary>
		/// This method is required for Windows Forms designer support.
		/// Do not change the method contents inside the source code editor. The Forms designer might
		/// not be able to load this method if it was changed manually.
		/// </summary>
		private void InitializeComponent()
		{
			this.components = new System.ComponentModel.Container();
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MediaPanel));
			this.imageList = new System.Windows.Forms.ImageList(this.components);
			this.toolTip = new System.Windows.Forms.ToolTip(this.components);
			this.axWindowsMediaPlayer = new AxWMPLib.AxWindowsMediaPlayer();
			this.openFileButton = new System.Windows.Forms.Button();
			this.openFileDialog = new System.Windows.Forms.OpenFileDialog();
			((System.ComponentModel.ISupportInitialize)(this.axWindowsMediaPlayer)).BeginInit();
			this.SuspendLayout();
			// 
			// imageList
			// 
			this.imageList.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList.ImageStream")));
			this.imageList.TransparentColor = System.Drawing.Color.Transparent;
			this.imageList.Images.SetKeyName(0, "Play.png");
			this.imageList.Images.SetKeyName(1, "Loop.png");
			this.imageList.Images.SetKeyName(2, "Stop.png");
			// 
			// toolTip
			// 
			this.toolTip.AutoPopDelay = 20000;
			this.toolTip.InitialDelay = 500;
			this.toolTip.ReshowDelay = 100;
			// 
			// axWindowsMediaPlayer
			// 
			this.axWindowsMediaPlayer.Dock = System.Windows.Forms.DockStyle.Fill;
			this.axWindowsMediaPlayer.Enabled = true;
			this.axWindowsMediaPlayer.Location = new System.Drawing.Point(0, 0);
			this.axWindowsMediaPlayer.Name = "axWindowsMediaPlayer";
			this.axWindowsMediaPlayer.OcxState = ((System.Windows.Forms.AxHost.State)(resources.GetObject("axWindowsMediaPlayer.OcxState")));
			this.axWindowsMediaPlayer.Size = new System.Drawing.Size(592, 274);
			this.axWindowsMediaPlayer.TabIndex = 3;
			this.axWindowsMediaPlayer.TabStop = false;
			// 
			// openFileButton
			// 
			this.openFileButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.openFileButton.BackColor = System.Drawing.Color.Transparent;
			this.openFileButton.Location = new System.Drawing.Point(518, 252);
			this.openFileButton.Name = "openFileButton";
			this.openFileButton.Size = new System.Drawing.Size(75, 23);
			this.openFileButton.TabIndex = 4;
			this.openFileButton.TabStop = false;
			this.openFileButton.Text = "Load File...";
			this.openFileButton.UseVisualStyleBackColor = false;
			this.openFileButton.Click += new System.EventHandler(this.OpenFileButtonClick);
			// 
			// openFileDialog
			// 
			this.openFileDialog.Filter = "All Files (*.*)|*.*|AVI Files (*.avi)|*.avi|Sound Files (*.wav;*.wma)|*.wav;*.wma" +
    "";
			this.openFileDialog.FilterIndex = 3;
			// 
			// MediaPanel
			// 
			this.AutoHidePortion = 300D;
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(592, 274);
			this.Controls.Add(this.openFileButton);
			this.Controls.Add(this.axWindowsMediaPlayer);
			this.DockAreas = ((WeifenLuo.WinFormsUI.Docking.DockAreas)(((((WeifenLuo.WinFormsUI.Docking.DockAreas.Float | WeifenLuo.WinFormsUI.Docking.DockAreas.DockLeft) 
            | WeifenLuo.WinFormsUI.Docking.DockAreas.DockRight) 
            | WeifenLuo.WinFormsUI.Docking.DockAreas.DockTop) 
            | WeifenLuo.WinFormsUI.Docking.DockAreas.DockBottom)));
			this.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
			this.HideOnClose = true;
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "MediaPanel";
			this.ShowHint = WeifenLuo.WinFormsUI.Docking.DockState.DockBottomAutoHide;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
			this.TabText = "Media Player";
			this.Text = "Media Player";
			this.toolTip.SetToolTip(this, "Media Player");
			this.TransparencyKey = System.Drawing.Color.Black;
			((System.ComponentModel.ISupportInitialize)(this.axWindowsMediaPlayer)).EndInit();
			this.ResumeLayout(false);

		}
		public AxWMPLib.AxWindowsMediaPlayer axWindowsMediaPlayer;
		public System.Windows.Forms.OpenFileDialog openFileDialog;
		public System.Windows.Forms.Button openFileButton;
		public System.Windows.Forms.ToolTip toolTip;
		public System.Windows.Forms.ImageList imageList;
	}
}
