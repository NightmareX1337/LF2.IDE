/*
 * Created by SharpDevelop.
 * User: Administrator
 * Date: 28.12.2013
 * Time: 12:44
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
namespace LF2.IDE
{
	partial class FormSpriteMirrorer
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormSpriteMirrorer));
			this.comboBox_Mode = new System.Windows.Forms.ComboBox();
			this.button_Apply = new System.Windows.Forms.Button();
			this.drawBox_OriginalSprite = new DrawBox.DrawBox();
			this.splitContainer = new System.Windows.Forms.SplitContainer();
			this.drawBox_ModifedSprite = new DrawBox.DrawBox();
			this.saveFileDialog = new System.Windows.Forms.SaveFileDialog();
			((System.ComponentModel.ISupportInitialize)(this.splitContainer)).BeginInit();
			this.splitContainer.Panel1.SuspendLayout();
			this.splitContainer.Panel2.SuspendLayout();
			this.splitContainer.SuspendLayout();
			this.SuspendLayout();
			// 
			// comboBox_Mode
			// 
			this.comboBox_Mode.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.comboBox_Mode.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.comboBox_Mode.FormattingEnabled = true;
			this.comboBox_Mode.Location = new System.Drawing.Point(12, 283);
			this.comboBox_Mode.Name = "comboBox_Mode";
			this.comboBox_Mode.Size = new System.Drawing.Size(419, 21);
			this.comboBox_Mode.TabIndex = 0;
			this.comboBox_Mode.SelectedIndexChanged += new System.EventHandler(this.ComboBoxModeSelectedIndexChanged);
			// 
			// button_Apply
			// 
			this.button_Apply.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.button_Apply.AutoSize = true;
			this.button_Apply.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
			this.button_Apply.Location = new System.Drawing.Point(437, 281);
			this.button_Apply.Name = "button_Apply";
			this.button_Apply.Size = new System.Drawing.Size(43, 23);
			this.button_Apply.TabIndex = 1;
			this.button_Apply.Text = "Apply";
			this.button_Apply.UseVisualStyleBackColor = true;
			this.button_Apply.Click += new System.EventHandler(this.ButtonApplyClick);
			// 
			// drawBox_OriginalSprite
			// 
			this.drawBox_OriginalSprite.ControlKey = false;
			this.drawBox_OriginalSprite.Dock = System.Windows.Forms.DockStyle.Fill;
			this.drawBox_OriginalSprite.Interpolation = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
			this.drawBox_OriginalSprite.Location = new System.Drawing.Point(0, 0);
			this.drawBox_OriginalSprite.MultiRectangleMode = false;
			this.drawBox_OriginalSprite.Name = "drawBox_OriginalSprite";
			this.drawBox_OriginalSprite.OneRectangle = new System.Drawing.Rectangle(0, 0, 0, 0);
			this.drawBox_OriginalSprite.PictureMode = DrawBox.PictureMode.ShrinkOnly;
			this.drawBox_OriginalSprite.Rectangle = new System.Drawing.Rectangle(0, 0, 0, 0);
			this.drawBox_OriginalSprite.Rectangles = ((System.Collections.Generic.List<System.Drawing.Rectangle>)(resources.GetObject("drawBox_OriginalSprite.Rectangles")));
			this.drawBox_OriginalSprite.ShiftKey = false;
			this.drawBox_OriginalSprite.Size = new System.Drawing.Size(200, 263);
			this.drawBox_OriginalSprite.TabIndex = 2;
			this.drawBox_OriginalSprite.TabStop = false;
			// 
			// splitContainer
			// 
			this.splitContainer.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.splitContainer.Location = new System.Drawing.Point(12, 12);
			this.splitContainer.Name = "splitContainer";
			// 
			// splitContainer.Panel1
			// 
			this.splitContainer.Panel1.Controls.Add(this.drawBox_OriginalSprite);
			// 
			// splitContainer.Panel2
			// 
			this.splitContainer.Panel2.Controls.Add(this.drawBox_ModifedSprite);
			this.splitContainer.Size = new System.Drawing.Size(468, 263);
			this.splitContainer.SplitterDistance = 200;
			this.splitContainer.TabIndex = 3;
			// 
			// drawBox_ModifedSprite
			// 
			this.drawBox_ModifedSprite.ControlKey = false;
			this.drawBox_ModifedSprite.Dock = System.Windows.Forms.DockStyle.Fill;
			this.drawBox_ModifedSprite.Interpolation = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
			this.drawBox_ModifedSprite.Location = new System.Drawing.Point(0, 0);
			this.drawBox_ModifedSprite.MultiRectangleMode = false;
			this.drawBox_ModifedSprite.Name = "drawBox_ModifedSprite";
			this.drawBox_ModifedSprite.OneRectangle = new System.Drawing.Rectangle(0, 0, 0, 0);
			this.drawBox_ModifedSprite.PictureMode = DrawBox.PictureMode.ShrinkOnly;
			this.drawBox_ModifedSprite.Rectangle = new System.Drawing.Rectangle(0, 0, 0, 0);
			this.drawBox_ModifedSprite.Rectangles = ((System.Collections.Generic.List<System.Drawing.Rectangle>)(resources.GetObject("drawBox_ModifedSprite.Rectangles")));
			this.drawBox_ModifedSprite.ShiftKey = false;
			this.drawBox_ModifedSprite.Size = new System.Drawing.Size(264, 263);
			this.drawBox_ModifedSprite.TabIndex = 3;
			this.drawBox_ModifedSprite.TabStop = false;
			// 
			// saveFileDialog
			// 
			this.saveFileDialog.Filter = "Bitmap Image (*.bmp)|*.bmp";
			// 
			// FormSpriteMirrorer
			// 
			this.AcceptButton = this.button_Apply;
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(492, 316);
			this.Controls.Add(this.splitContainer);
			this.Controls.Add(this.button_Apply);
			this.Controls.Add(this.comboBox_Mode);
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.Name = "FormSpriteMirrorer";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Sprite Mirrorer";
			this.Load += new System.EventHandler(this.FormMirrorerLoad);
			this.splitContainer.Panel1.ResumeLayout(false);
			this.splitContainer.Panel2.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.splitContainer)).EndInit();
			this.splitContainer.ResumeLayout(false);
			this.ResumeLayout(false);
			this.PerformLayout();

		}

		public System.Windows.Forms.ComboBox comboBox_Mode;
		public DrawBox.DrawBox drawBox_ModifedSprite;
		public System.Windows.Forms.SplitContainer splitContainer;
		public DrawBox.DrawBox drawBox_OriginalSprite;
		public System.Windows.Forms.Button button_Apply;
		private System.Windows.Forms.SaveFileDialog saveFileDialog;
	}
}
