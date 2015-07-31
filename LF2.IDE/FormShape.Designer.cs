namespace LF2.IDE
{
	partial class FormShape
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormShape));
			this.radioButton_Zwidth = new System.Windows.Forms.RadioButton();
			this.button_Insert = new System.Windows.Forms.Button();
			this.numericUpDown_ImageIndex = new System.Windows.Forms.NumericUpDown();
			this.radioButton_Point = new System.Windows.Forms.RadioButton();
			this.radioButton_Vector = new System.Windows.Forms.RadioButton();
			this.radioButton_Rectangle = new System.Windows.Forms.RadioButton();
			this.richTextBox = new System.Windows.Forms.RichTextBox();
			this.radioButton_Center = new System.Windows.Forms.RadioButton();
			this.button_Clip = new System.Windows.Forms.Button();
			this.checkBox_AutoGenerate = new System.Windows.Forms.CheckBox();
			this.button_Generate = new System.Windows.Forms.Button();
			this.toolTip = new System.Windows.Forms.ToolTip(this.components);
			this.drawBox = new DrawBox.DrawBox();
			((System.ComponentModel.ISupportInitialize)(this.numericUpDown_ImageIndex)).BeginInit();
			this.SuspendLayout();
			// 
			// radioButton_Zwidth
			// 
			this.radioButton_Zwidth.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
			this.radioButton_Zwidth.AutoSize = true;
			this.radioButton_Zwidth.BackColor = System.Drawing.Color.Transparent;
			this.radioButton_Zwidth.Location = new System.Drawing.Point(209, 211);
			this.radioButton_Zwidth.Name = "radioButton_Zwidth";
			this.radioButton_Zwidth.Size = new System.Drawing.Size(55, 17);
			this.radioButton_Zwidth.TabIndex = 0;
			this.radioButton_Zwidth.Text = "zwidth";
			this.radioButton_Zwidth.UseVisualStyleBackColor = true;
			this.radioButton_Zwidth.CheckedChanged += new System.EventHandler(this.ShapeChanged);
			// 
			// button_Insert
			// 
			this.button_Insert.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.button_Insert.Location = new System.Drawing.Point(698, 234);
			this.button_Insert.Name = "button_Insert";
			this.button_Insert.Size = new System.Drawing.Size(32, 28);
			this.button_Insert.TabIndex = 4;
			this.button_Insert.Text = "+";
			this.toolTip.SetToolTip(this.button_Insert, "Insert text");
			this.button_Insert.UseCompatibleTextRendering = true;
			this.button_Insert.Click += new System.EventHandler(this.Add);
			// 
			// numericUpDown_ImageIndex
			// 
			this.numericUpDown_ImageIndex.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.numericUpDown_ImageIndex.Location = new System.Drawing.Point(632, 208);
			this.numericUpDown_ImageIndex.Maximum = new decimal(new int[] {
            0,
            0,
            0,
            0});
			this.numericUpDown_ImageIndex.Name = "numericUpDown_ImageIndex";
			this.numericUpDown_ImageIndex.Size = new System.Drawing.Size(98, 20);
			this.numericUpDown_ImageIndex.TabIndex = 1;
			this.numericUpDown_ImageIndex.ValueChanged += new System.EventHandler(this.ImageIndexChanged);
			// 
			// radioButton_Point
			// 
			this.radioButton_Point.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
			this.radioButton_Point.AutoSize = true;
			this.radioButton_Point.Checked = true;
			this.radioButton_Point.Location = new System.Drawing.Point(12, 211);
			this.radioButton_Point.Name = "radioButton_Point";
			this.radioButton_Point.Size = new System.Drawing.Size(49, 17);
			this.radioButton_Point.TabIndex = 0;
			this.radioButton_Point.TabStop = true;
			this.radioButton_Point.Text = "Point";
			this.radioButton_Point.UseVisualStyleBackColor = true;
			this.radioButton_Point.CheckedChanged += new System.EventHandler(this.ShapeChanged);
			// 
			// radioButton_Vector
			// 
			this.radioButton_Vector.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
			this.radioButton_Vector.AutoSize = true;
			this.radioButton_Vector.Location = new System.Drawing.Point(67, 211);
			this.radioButton_Vector.Name = "radioButton_Vector";
			this.radioButton_Vector.Size = new System.Drawing.Size(56, 17);
			this.radioButton_Vector.TabIndex = 0;
			this.radioButton_Vector.Text = "Vector";
			this.radioButton_Vector.UseVisualStyleBackColor = true;
			this.radioButton_Vector.CheckedChanged += new System.EventHandler(this.ShapeChanged);
			// 
			// radioButton_Rectangle
			// 
			this.radioButton_Rectangle.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
			this.radioButton_Rectangle.AutoSize = true;
			this.radioButton_Rectangle.Location = new System.Drawing.Point(129, 211);
			this.radioButton_Rectangle.Name = "radioButton_Rectangle";
			this.radioButton_Rectangle.Size = new System.Drawing.Size(74, 17);
			this.radioButton_Rectangle.TabIndex = 0;
			this.radioButton_Rectangle.Text = "Rectangle";
			this.radioButton_Rectangle.UseVisualStyleBackColor = true;
			this.radioButton_Rectangle.CheckedChanged += new System.EventHandler(this.ShapeChanged);
			// 
			// richTextBox
			// 
			this.richTextBox.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.richTextBox.DetectUrls = false;
			this.richTextBox.EnableAutoDragDrop = true;
			this.richTextBox.Font = new System.Drawing.Font("Courier New", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.richTextBox.Location = new System.Drawing.Point(12, 234);
			this.richTextBox.Multiline = false;
			this.richTextBox.Name = "richTextBox";
			this.richTextBox.Size = new System.Drawing.Size(610, 28);
			this.richTextBox.TabIndex = 2;
			this.richTextBox.Text = "";
			this.richTextBox.KeyDown += new System.Windows.Forms.KeyEventHandler(this.RichTextBoxKeyDown);
			// 
			// radioButton_Center
			// 
			this.radioButton_Center.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
			this.radioButton_Center.AutoSize = true;
			this.radioButton_Center.BackColor = System.Drawing.Color.Transparent;
			this.radioButton_Center.Location = new System.Drawing.Point(270, 211);
			this.radioButton_Center.Name = "radioButton_Center";
			this.radioButton_Center.Size = new System.Drawing.Size(55, 17);
			this.radioButton_Center.TabIndex = 0;
			this.radioButton_Center.Text = "center";
			this.radioButton_Center.UseVisualStyleBackColor = true;
			this.radioButton_Center.CheckedChanged += new System.EventHandler(this.ShapeChanged);
			// 
			// button_Clip
			// 
			this.button_Clip.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.button_Clip.Location = new System.Drawing.Point(628, 234);
			this.button_Clip.Name = "button_Clip";
			this.button_Clip.Size = new System.Drawing.Size(64, 28);
			this.button_Clip.TabIndex = 5;
			this.button_Clip.Text = "Clip";
			this.toolTip.SetToolTip(this.button_Clip, "Copy to Clipboard");
			this.button_Clip.UseVisualStyleBackColor = true;
			this.button_Clip.Click += new System.EventHandler(this.CopyToClipboard);
			// 
			// checkBox_AutoGenerate
			// 
			this.checkBox_AutoGenerate.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
			this.checkBox_AutoGenerate.Appearance = System.Windows.Forms.Appearance.Button;
			this.checkBox_AutoGenerate.AutoSize = true;
			this.checkBox_AutoGenerate.Checked = true;
			this.checkBox_AutoGenerate.CheckState = System.Windows.Forms.CheckState.Checked;
			this.checkBox_AutoGenerate.Location = new System.Drawing.Point(331, 208);
			this.checkBox_AutoGenerate.Name = "checkBox_AutoGenerate";
			this.checkBox_AutoGenerate.Size = new System.Drawing.Size(86, 23);
			this.checkBox_AutoGenerate.TabIndex = 0;
			this.checkBox_AutoGenerate.TabStop = false;
			this.checkBox_AutoGenerate.Text = "Auto Generate";
			this.checkBox_AutoGenerate.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			this.checkBox_AutoGenerate.UseVisualStyleBackColor = false;
			// 
			// button_Generate
			// 
			this.button_Generate.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
			this.button_Generate.Location = new System.Drawing.Point(423, 208);
			this.button_Generate.Name = "button_Generate";
			this.button_Generate.Size = new System.Drawing.Size(86, 23);
			this.button_Generate.TabIndex = 3;
			this.button_Generate.TabStop = false;
			this.button_Generate.Text = "Generate";
			this.button_Generate.UseVisualStyleBackColor = true;
			this.button_Generate.Click += new System.EventHandler(this.Generate);
			// 
			// toolTip
			// 
			this.toolTip.AutoPopDelay = 30000;
			this.toolTip.InitialDelay = 500;
			this.toolTip.ReshowDelay = 100;
			// 
			// drawBox
			// 
			this.drawBox.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.drawBox.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("drawBox.BackgroundImage")));
			this.drawBox.ControlKey = false;
			this.drawBox.DisplayMode = DrawBox.DisplayModes.Point;
			this.drawBox.DrawingMode = DrawBox.DrawingMode.Point;
			this.drawBox.ImageIndent = 1;
			this.drawBox.Location = new System.Drawing.Point(12, 12);
			this.drawBox.MultiRectangleMode = false;
			this.drawBox.Name = "drawBox";
			this.drawBox.OneRectangle = new System.Drawing.Rectangle(0, 0, 0, 0);
			this.drawBox.PictureMode = DrawBox.PictureMode.CenterImage;
			this.drawBox.Rectangle = new System.Drawing.Rectangle(0, 0, 0, 0);
			this.drawBox.Rectangles = ((System.Collections.Generic.List<System.Drawing.Rectangle>)(resources.GetObject("drawBox.Rectangles")));
			this.drawBox.ShiftKey = false;
			this.drawBox.ShowBoundToolTip = true;
			this.drawBox.ShowCoordinateSystem = true;
			this.drawBox.ShowCoordinateToolTip = true;
			this.drawBox.Size = new System.Drawing.Size(718, 190);
			this.drawBox.Smoothing = System.Drawing.Drawing2D.SmoothingMode.AntiAlias;
			this.drawBox.TabIndex = 6;
			this.drawBox.TabStop = false;
			this.drawBox.Trancparency = true;
			this.drawBox.VectorDivision = 4;
			this.drawBox.PointChanged += new System.EventHandler(this.AutoGenerate);
			this.drawBox.VectorChanged += new System.EventHandler(this.AutoGenerate);
			this.drawBox.RectangleChanged += new System.EventHandler(this.AutoGenerate);
			this.drawBox.ZwidthChanged += new System.EventHandler(this.AutoGenerate);
			this.drawBox.CenterChanged += new System.EventHandler(this.AutoGenerate);
			// 
			// FormShape
			// 
			this.AutoHidePortion = 300D;
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(742, 274);
			this.Controls.Add(this.drawBox);
			this.Controls.Add(this.button_Clip);
			this.Controls.Add(this.checkBox_AutoGenerate);
			this.Controls.Add(this.button_Generate);
			this.Controls.Add(this.richTextBox);
			this.Controls.Add(this.radioButton_Center);
			this.Controls.Add(this.radioButton_Rectangle);
			this.Controls.Add(this.radioButton_Zwidth);
			this.Controls.Add(this.radioButton_Vector);
			this.Controls.Add(this.button_Insert);
			this.Controls.Add(this.radioButton_Point);
			this.Controls.Add(this.numericUpDown_ImageIndex);
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
			this.Name = "FormShape";
			this.ShowHint = WeifenLuo.WinFormsUI.Docking.DockState.DockTopAutoHide;
			this.ShowInTaskbar = false;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.TabText = "Shape";
			this.Text = "Shape";
			this.Load += new System.EventHandler(this.FormShapeLoad);
			((System.ComponentModel.ISupportInitialize)(this.numericUpDown_ImageIndex)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();

		}
		public DrawBox.DrawBox drawBox;
		public System.Windows.Forms.NumericUpDown numericUpDown_ImageIndex;
		public System.Windows.Forms.ToolTip toolTip;
		public System.Windows.Forms.RichTextBox richTextBox;
		public System.Windows.Forms.RadioButton radioButton_Rectangle;
		public System.Windows.Forms.RadioButton radioButton_Vector;
		public System.Windows.Forms.RadioButton radioButton_Point;
		public System.Windows.Forms.Button button_Insert;
		public System.Windows.Forms.RadioButton radioButton_Zwidth;
		public System.Windows.Forms.RadioButton radioButton_Center;
		public System.Windows.Forms.Button button_Generate;
		public System.Windows.Forms.CheckBox checkBox_AutoGenerate;
		public System.Windows.Forms.Button button_Clip;
	}
}
