namespace LF2.IDE
{
	partial class FormFrame
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormFrame));
			this.drawBox = new DrawBox.DrawBox();
			this.tabControl3 = new System.Windows.Forms.TabControl();
			this.button_NewLine = new System.Windows.Forms.Button();
			this.button_Clip = new System.Windows.Forms.Button();
			this.label_dvz = new System.Windows.Forms.Label();
			this.textBox_dvz = new System.Windows.Forms.TextBox();
			this.numericUpDown_pic = new System.Windows.Forms.NumericUpDown();
			this.numericUpDown_frameIndex = new System.Windows.Forms.NumericUpDown();
			this.button_Generate = new System.Windows.Forms.Button();
			this.richTextBox = new System.Windows.Forms.RichTextBox();
			this.button_Insert = new System.Windows.Forms.Button();
			this.label_hit_j = new System.Windows.Forms.Label();
			this.label_hit_d = new System.Windows.Forms.Label();
			this.label_hit_a = new System.Windows.Forms.Label();
			this.label_centery = new System.Windows.Forms.Label();
			this.label_hit_ja = new System.Windows.Forms.Label();
			this.label_hit_Dj = new System.Windows.Forms.Label();
			this.label_hit_Uj = new System.Windows.Forms.Label();
			this.label_hit_Fj = new System.Windows.Forms.Label();
			this.label_hit_Da = new System.Windows.Forms.Label();
			this.label_hit_Ua = new System.Windows.Forms.Label();
			this.label_hit_Fa = new System.Windows.Forms.Label();
			this.label_centerx = new System.Windows.Forms.Label();
			this.label_dvy = new System.Windows.Forms.Label();
			this.label_dvx = new System.Windows.Forms.Label();
			this.label_next = new System.Windows.Forms.Label();
			this.lwaitabel_ = new System.Windows.Forms.Label();
			this.label_state = new System.Windows.Forms.Label();
			this.label_index = new System.Windows.Forms.Label();
			this.nextPlus = new System.Windows.Forms.Button();
			this.nextMinus = new System.Windows.Forms.Button();
			this.textBox_hit_j = new System.Windows.Forms.TextBox();
			this.textBox_hit_d = new System.Windows.Forms.TextBox();
			this.textBox_hit_a = new System.Windows.Forms.TextBox();
			this.textBox_hit_ja = new System.Windows.Forms.TextBox();
			this.textBox_hit_Dj = new System.Windows.Forms.TextBox();
			this.textBox_hit_Uj = new System.Windows.Forms.TextBox();
			this.textBox_hit_Fj = new System.Windows.Forms.TextBox();
			this.textBox_hit_Da = new System.Windows.Forms.TextBox();
			this.textBox_hit_Ua = new System.Windows.Forms.TextBox();
			this.textBox_hit_Fa = new System.Windows.Forms.TextBox();
			this.textBox_centery = new System.Windows.Forms.TextBox();
			this.textBox_centerx = new System.Windows.Forms.TextBox();
			this.textBox_dvy = new System.Windows.Forms.TextBox();
			this.textBox_dvx = new System.Windows.Forms.TextBox();
			this.textBox_wait = new System.Windows.Forms.TextBox();
			this.label_caption = new System.Windows.Forms.Label();
			this.label_pic = new System.Windows.Forms.Label();
			this.toolTip = new System.Windows.Forms.ToolTip(this.components);
			this.label_stateHint = new System.Windows.Forms.Label();
			this.button_Clear = new System.Windows.Forms.Button();
			this.checkBoxMerge_index = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_pic = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_state = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_wait = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_next = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_dvx = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_dvy = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_dvz = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_centerx = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_centery = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_caption = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_hit_Fa = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_hit_Ua = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_hit_Da = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_hit_Fj = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_hit_Uj = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_hit_Dj = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_hit_ja = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_hit_a = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_hit_d = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_hit_j = new System.Windows.Forms.CheckBox();
			this.checkBoxMerge_sound = new System.Windows.Forms.CheckBox();
			this.label2 = new System.Windows.Forms.Label();
			this.textBox_sound = new System.Windows.Forms.TextBox();
			this.label_sound = new System.Windows.Forms.Label();
			this.checkBox_AddTags = new System.Windows.Forms.CheckBox();
			this.comboBox_state = new System.Windows.Forms.ComboBox();
			this.splitContainer = new System.Windows.Forms.SplitContainer();
			this.nextOfLastFrame = new System.Windows.Forms.ComboBox();
			this.label_nextOfLastFrame = new System.Windows.Forms.Label();
			this.comboBox_caption = new System.Windows.Forms.ComboBox();
			this.frameCount = new System.Windows.Forms.NumericUpDown();
			this.textBox_next = new System.Windows.Forms.TextBox();
			this.label_frameCount = new System.Windows.Forms.Label();
			this.groupBox_merge = new System.Windows.Forms.GroupBox();
			this.numericUpDown_rangeStart = new System.Windows.Forms.NumericUpDown();
			this.numericUpDown_rangeEnd = new System.Windows.Forms.NumericUpDown();
			this.label1 = new System.Windows.Forms.Label();
			this.button_Merge = new System.Windows.Forms.Button();
			((System.ComponentModel.ISupportInitialize)(this.numericUpDown_pic)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.numericUpDown_frameIndex)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.splitContainer)).BeginInit();
			this.splitContainer.Panel1.SuspendLayout();
			this.splitContainer.Panel2.SuspendLayout();
			this.splitContainer.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.frameCount)).BeginInit();
			this.groupBox_merge.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.numericUpDown_rangeStart)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.numericUpDown_rangeEnd)).BeginInit();
			this.SuspendLayout();
			// 
			// drawBox
			// 
			this.drawBox.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.drawBox.BackgroundImage = global::LF2.IDE.Properties.Resources.check;
			this.drawBox.Center = new System.Drawing.Point(-1, -1);
			this.drawBox.ControlKey = false;
			this.drawBox.Cursor = System.Windows.Forms.Cursors.Cross;
			this.drawBox.Interpolation = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
			this.drawBox.Location = new System.Drawing.Point(57, 59);
			this.drawBox.MultiRectangleMode = false;
			this.drawBox.Name = "drawBox";
			this.drawBox.OneRectangle = new System.Drawing.Rectangle(0, 0, 0, 0);
			this.drawBox.PictureMode = DrawBox.PictureMode.ShrinkOnly;
			this.drawBox.Point = new System.Drawing.Point(-1, -1);
			this.drawBox.Rectangle = new System.Drawing.Rectangle(0, 0, 0, 0);
			this.drawBox.Rectangles = ((System.Collections.Generic.List<System.Drawing.Rectangle>)(resources.GetObject("drawBox.Rectangles")));
			this.drawBox.ShiftKey = false;
			this.drawBox.Size = new System.Drawing.Size(100, 125);
			this.drawBox.TabIndex = 28;
			this.drawBox.Table = new System.Drawing.Point(-1, -1);
			this.drawBox.TabStop = false;
			this.drawBox.Trancparency = true;
			this.drawBox.Vector = new System.Drawing.Point(-1, -1);
			// 
			// tabControl3
			// 
			this.tabControl3.Dock = System.Windows.Forms.DockStyle.Fill;
			this.tabControl3.Location = new System.Drawing.Point(3, 3);
			this.tabControl3.Name = "tabControl3";
			this.tabControl3.SelectedIndex = 0;
			this.tabControl3.Size = new System.Drawing.Size(828, 484);
			this.tabControl3.TabIndex = 4;
			this.tabControl3.TabStop = false;
			// 
			// button_NewLine
			// 
			this.button_NewLine.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.button_NewLine.Font = new System.Drawing.Font("Microsoft Sans Serif", 6.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.button_NewLine.Location = new System.Drawing.Point(307, 32);
			this.button_NewLine.Name = "button_NewLine";
			this.button_NewLine.Size = new System.Drawing.Size(24, 23);
			this.button_NewLine.TabIndex = 25;
			this.button_NewLine.Text = "NL";
			this.toolTip.SetToolTip(this.button_NewLine, "Insert new line to document");
			this.button_NewLine.UseCompatibleTextRendering = true;
			this.button_NewLine.UseVisualStyleBackColor = true;
			this.button_NewLine.Click += new System.EventHandler(this.NewLine);
			// 
			// button_Clip
			// 
			this.button_Clip.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.button_Clip.Location = new System.Drawing.Point(231, 417);
			this.button_Clip.Name = "button_Clip";
			this.button_Clip.Size = new System.Drawing.Size(35, 23);
			this.button_Clip.TabIndex = 26;
			this.button_Clip.TabStop = false;
			this.button_Clip.Text = "Clip";
			this.toolTip.SetToolTip(this.button_Clip, "Copy to Clipboard");
			this.button_Clip.UseVisualStyleBackColor = true;
			this.button_Clip.Click += new System.EventHandler(this.CopyToClipboard);
			// 
			// label_dvz
			// 
			this.label_dvz.AutoSize = true;
			this.label_dvz.Location = new System.Drawing.Point(24, 323);
			this.label_dvz.Name = "label_dvz";
			this.label_dvz.Size = new System.Drawing.Size(30, 13);
			this.label_dvz.TabIndex = 25;
			this.label_dvz.Text = "dvz :";
			// 
			// textBox_dvz
			// 
			this.textBox_dvz.Location = new System.Drawing.Point(60, 320);
			this.textBox_dvz.Name = "textBox_dvz";
			this.textBox_dvz.Size = new System.Drawing.Size(53, 20);
			this.textBox_dvz.TabIndex = 9;
			// 
			// numericUpDown_pic
			// 
			this.numericUpDown_pic.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.numericUpDown_pic.Location = new System.Drawing.Point(157, 164);
			this.numericUpDown_pic.Maximum = new decimal(new int[] {
            0,
            0,
            0,
            0});
			this.numericUpDown_pic.Name = "numericUpDown_pic";
			this.numericUpDown_pic.Size = new System.Drawing.Size(52, 20);
			this.numericUpDown_pic.TabIndex = 3;
			this.numericUpDown_pic.ValueChanged += new System.EventHandler(this.ImageIndexChanged);
			// 
			// numericUpDown_frameIndex
			// 
			this.numericUpDown_frameIndex.Location = new System.Drawing.Point(68, 6);
			this.numericUpDown_frameIndex.Maximum = new decimal(new int[] {
            399,
            0,
            0,
            0});
			this.numericUpDown_frameIndex.Name = "numericUpDown_frameIndex";
			this.numericUpDown_frameIndex.Size = new System.Drawing.Size(52, 20);
			this.numericUpDown_frameIndex.TabIndex = 1;
			this.numericUpDown_frameIndex.ValueChanged += new System.EventHandler(this.FrameIndexChanged);
			// 
			// button_Generate
			// 
			this.button_Generate.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.button_Generate.Location = new System.Drawing.Point(272, 417);
			this.button_Generate.Name = "button_Generate";
			this.button_Generate.Size = new System.Drawing.Size(59, 23);
			this.button_Generate.TabIndex = 23;
			this.button_Generate.Text = "Generate";
			this.button_Generate.UseVisualStyleBackColor = true;
			this.button_Generate.Click += new System.EventHandler(this.Generate);
			// 
			// richTextBox
			// 
			this.richTextBox.AcceptsTab = true;
			this.richTextBox.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.richTextBox.DetectUrls = false;
			this.richTextBox.EnableAutoDragDrop = true;
			this.richTextBox.Font = new System.Drawing.Font("Courier New", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.richTextBox.Location = new System.Drawing.Point(3, 3);
			this.richTextBox.Name = "richTextBox";
			this.richTextBox.Size = new System.Drawing.Size(298, 69);
			this.richTextBox.TabIndex = 23;
			this.richTextBox.TabStop = false;
			this.richTextBox.Text = "";
			this.richTextBox.WordWrap = false;
			this.richTextBox.KeyDown += new System.Windows.Forms.KeyEventHandler(this.RichTextBoxKeyDown);
			// 
			// button_Insert
			// 
			this.button_Insert.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.button_Insert.Location = new System.Drawing.Point(307, 3);
			this.button_Insert.Name = "button_Insert";
			this.button_Insert.Size = new System.Drawing.Size(24, 23);
			this.button_Insert.TabIndex = 24;
			this.button_Insert.Text = "+";
			this.toolTip.SetToolTip(this.button_Insert, "Insert frames to document");
			this.button_Insert.UseCompatibleTextRendering = true;
			this.button_Insert.Click += new System.EventHandler(this.Insert);
			// 
			// label_hit_j
			// 
			this.label_hit_j.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.label_hit_j.AutoSize = true;
			this.label_hit_j.Location = new System.Drawing.Point(235, 240);
			this.label_hit_j.Name = "label_hit_j";
			this.label_hit_j.Size = new System.Drawing.Size(32, 13);
			this.label_hit_j.TabIndex = 0;
			this.label_hit_j.Text = "hit_j :";
			// 
			// label_hit_d
			// 
			this.label_hit_d.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.label_hit_d.AutoSize = true;
			this.label_hit_d.Location = new System.Drawing.Point(235, 214);
			this.label_hit_d.Name = "label_hit_d";
			this.label_hit_d.Size = new System.Drawing.Size(36, 13);
			this.label_hit_d.TabIndex = 0;
			this.label_hit_d.Text = "hit_d :";
			// 
			// label_hit_a
			// 
			this.label_hit_a.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.label_hit_a.AutoSize = true;
			this.label_hit_a.Location = new System.Drawing.Point(235, 188);
			this.label_hit_a.Name = "label_hit_a";
			this.label_hit_a.Size = new System.Drawing.Size(36, 13);
			this.label_hit_a.TabIndex = 0;
			this.label_hit_a.Text = "hit_a :";
			// 
			// label_centery
			// 
			this.label_centery.AutoSize = true;
			this.label_centery.Location = new System.Drawing.Point(24, 375);
			this.label_centery.Name = "label_centery";
			this.label_centery.Size = new System.Drawing.Size(48, 13);
			this.label_centery.TabIndex = 0;
			this.label_centery.Text = "centery :";
			// 
			// label_hit_ja
			// 
			this.label_hit_ja.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.label_hit_ja.AutoSize = true;
			this.label_hit_ja.Location = new System.Drawing.Point(235, 162);
			this.label_hit_ja.Name = "label_hit_ja";
			this.label_hit_ja.Size = new System.Drawing.Size(38, 13);
			this.label_hit_ja.TabIndex = 0;
			this.label_hit_ja.Text = "hit_ja :";
			// 
			// label_hit_Dj
			// 
			this.label_hit_Dj.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.label_hit_Dj.AutoSize = true;
			this.label_hit_Dj.Location = new System.Drawing.Point(235, 136);
			this.label_hit_Dj.Name = "label_hit_Dj";
			this.label_hit_Dj.Size = new System.Drawing.Size(40, 13);
			this.label_hit_Dj.TabIndex = 0;
			this.label_hit_Dj.Text = "hit_Dj :";
			// 
			// label_hit_Uj
			// 
			this.label_hit_Uj.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.label_hit_Uj.AutoSize = true;
			this.label_hit_Uj.Location = new System.Drawing.Point(235, 110);
			this.label_hit_Uj.Name = "label_hit_Uj";
			this.label_hit_Uj.Size = new System.Drawing.Size(40, 13);
			this.label_hit_Uj.TabIndex = 0;
			this.label_hit_Uj.Text = "hit_Uj :";
			// 
			// label_hit_Fj
			// 
			this.label_hit_Fj.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.label_hit_Fj.AutoSize = true;
			this.label_hit_Fj.Location = new System.Drawing.Point(235, 84);
			this.label_hit_Fj.Name = "label_hit_Fj";
			this.label_hit_Fj.Size = new System.Drawing.Size(38, 13);
			this.label_hit_Fj.TabIndex = 0;
			this.label_hit_Fj.Text = "hit_Fj :";
			// 
			// label_hit_Da
			// 
			this.label_hit_Da.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.label_hit_Da.AutoSize = true;
			this.label_hit_Da.Location = new System.Drawing.Point(235, 58);
			this.label_hit_Da.Name = "label_hit_Da";
			this.label_hit_Da.Size = new System.Drawing.Size(44, 13);
			this.label_hit_Da.TabIndex = 0;
			this.label_hit_Da.Text = "hit_Da :";
			// 
			// label_hit_Ua
			// 
			this.label_hit_Ua.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.label_hit_Ua.AutoSize = true;
			this.label_hit_Ua.Location = new System.Drawing.Point(235, 32);
			this.label_hit_Ua.Name = "label_hit_Ua";
			this.label_hit_Ua.Size = new System.Drawing.Size(44, 13);
			this.label_hit_Ua.TabIndex = 0;
			this.label_hit_Ua.Text = "hit_Ua :";
			// 
			// label_hit_Fa
			// 
			this.label_hit_Fa.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.label_hit_Fa.AutoSize = true;
			this.label_hit_Fa.Location = new System.Drawing.Point(235, 6);
			this.label_hit_Fa.Name = "label_hit_Fa";
			this.label_hit_Fa.Size = new System.Drawing.Size(42, 13);
			this.label_hit_Fa.TabIndex = 0;
			this.label_hit_Fa.Text = "hit_Fa :";
			// 
			// label_centerx
			// 
			this.label_centerx.AutoSize = true;
			this.label_centerx.Location = new System.Drawing.Point(24, 349);
			this.label_centerx.Name = "label_centerx";
			this.label_centerx.Size = new System.Drawing.Size(48, 13);
			this.label_centerx.TabIndex = 0;
			this.label_centerx.Text = "centerx :";
			// 
			// label_dvy
			// 
			this.label_dvy.AutoSize = true;
			this.label_dvy.Location = new System.Drawing.Point(24, 297);
			this.label_dvy.Name = "label_dvy";
			this.label_dvy.Size = new System.Drawing.Size(30, 13);
			this.label_dvy.TabIndex = 0;
			this.label_dvy.Text = "dvy :";
			// 
			// label_dvx
			// 
			this.label_dvx.AutoSize = true;
			this.label_dvx.Location = new System.Drawing.Point(24, 271);
			this.label_dvx.Name = "label_dvx";
			this.label_dvx.Size = new System.Drawing.Size(30, 13);
			this.label_dvx.TabIndex = 0;
			this.label_dvx.Text = "dvx :";
			// 
			// label_next
			// 
			this.label_next.AutoSize = true;
			this.label_next.Location = new System.Drawing.Point(24, 245);
			this.label_next.Name = "label_next";
			this.label_next.Size = new System.Drawing.Size(33, 13);
			this.label_next.TabIndex = 0;
			this.label_next.Text = "next :";
			// 
			// lwaitabel_
			// 
			this.lwaitabel_.AutoSize = true;
			this.lwaitabel_.Location = new System.Drawing.Point(24, 219);
			this.lwaitabel_.Name = "lwaitabel_";
			this.lwaitabel_.Size = new System.Drawing.Size(32, 13);
			this.lwaitabel_.TabIndex = 0;
			this.lwaitabel_.Text = "wait :";
			// 
			// label_state
			// 
			this.label_state.AutoSize = true;
			this.label_state.Location = new System.Drawing.Point(24, 193);
			this.label_state.Name = "label_state";
			this.label_state.Size = new System.Drawing.Size(36, 13);
			this.label_state.TabIndex = 0;
			this.label_state.Text = "state :";
			// 
			// label_index
			// 
			this.label_index.AutoSize = true;
			this.label_index.Location = new System.Drawing.Point(24, 8);
			this.label_index.Name = "label_index";
			this.label_index.Size = new System.Drawing.Size(38, 13);
			this.label_index.TabIndex = 0;
			this.label_index.Text = "index :";
			// 
			// nextPlus
			// 
			this.nextPlus.Location = new System.Drawing.Point(154, 242);
			this.nextPlus.Name = "nextPlus";
			this.nextPlus.Size = new System.Drawing.Size(36, 20);
			this.nextPlus.TabIndex = 7;
			this.nextPlus.TabStop = false;
			this.nextPlus.Text = "1";
			this.toolTip.SetToolTip(this.nextPlus, "next = index + 1");
			this.nextPlus.UseCompatibleTextRendering = true;
			this.nextPlus.UseVisualStyleBackColor = true;
			this.nextPlus.Click += new System.EventHandler(this.NextPlus);
			// 
			// nextMinus
			// 
			this.nextMinus.Location = new System.Drawing.Point(119, 242);
			this.nextMinus.Name = "nextMinus";
			this.nextMinus.Size = new System.Drawing.Size(36, 20);
			this.nextMinus.TabIndex = 7;
			this.nextMinus.TabStop = false;
			this.nextMinus.Text = "-1";
			this.toolTip.SetToolTip(this.nextMinus, "next = index - 1");
			this.nextMinus.UseCompatibleTextRendering = true;
			this.nextMinus.UseVisualStyleBackColor = true;
			this.nextMinus.Click += new System.EventHandler(this.NextMinus);
			// 
			// textBox_hit_j
			// 
			this.textBox_hit_j.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.textBox_hit_j.Location = new System.Drawing.Point(273, 237);
			this.textBox_hit_j.Name = "textBox_hit_j";
			this.textBox_hit_j.Size = new System.Drawing.Size(58, 20);
			this.textBox_hit_j.TabIndex = 13;
			this.textBox_hit_j.Text = "0";
			// 
			// textBox_hit_d
			// 
			this.textBox_hit_d.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.textBox_hit_d.Location = new System.Drawing.Point(277, 211);
			this.textBox_hit_d.Name = "textBox_hit_d";
			this.textBox_hit_d.Size = new System.Drawing.Size(54, 20);
			this.textBox_hit_d.TabIndex = 12;
			this.textBox_hit_d.Text = "0";
			// 
			// textBox_hit_a
			// 
			this.textBox_hit_a.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.textBox_hit_a.Location = new System.Drawing.Point(277, 185);
			this.textBox_hit_a.Name = "textBox_hit_a";
			this.textBox_hit_a.Size = new System.Drawing.Size(54, 20);
			this.textBox_hit_a.TabIndex = 11;
			this.textBox_hit_a.Text = "0";
			// 
			// textBox_hit_ja
			// 
			this.textBox_hit_ja.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.textBox_hit_ja.Location = new System.Drawing.Point(279, 159);
			this.textBox_hit_ja.Name = "textBox_hit_ja";
			this.textBox_hit_ja.Size = new System.Drawing.Size(52, 20);
			this.textBox_hit_ja.TabIndex = 20;
			// 
			// textBox_hit_Dj
			// 
			this.textBox_hit_Dj.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.textBox_hit_Dj.Location = new System.Drawing.Point(281, 133);
			this.textBox_hit_Dj.Name = "textBox_hit_Dj";
			this.textBox_hit_Dj.Size = new System.Drawing.Size(50, 20);
			this.textBox_hit_Dj.TabIndex = 19;
			// 
			// textBox_hit_Uj
			// 
			this.textBox_hit_Uj.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.textBox_hit_Uj.Location = new System.Drawing.Point(281, 107);
			this.textBox_hit_Uj.Name = "textBox_hit_Uj";
			this.textBox_hit_Uj.Size = new System.Drawing.Size(50, 20);
			this.textBox_hit_Uj.TabIndex = 18;
			// 
			// textBox_hit_Fj
			// 
			this.textBox_hit_Fj.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.textBox_hit_Fj.Location = new System.Drawing.Point(279, 81);
			this.textBox_hit_Fj.Name = "textBox_hit_Fj";
			this.textBox_hit_Fj.Size = new System.Drawing.Size(52, 20);
			this.textBox_hit_Fj.TabIndex = 17;
			// 
			// textBox_hit_Da
			// 
			this.textBox_hit_Da.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.textBox_hit_Da.Location = new System.Drawing.Point(285, 55);
			this.textBox_hit_Da.Name = "textBox_hit_Da";
			this.textBox_hit_Da.Size = new System.Drawing.Size(46, 20);
			this.textBox_hit_Da.TabIndex = 16;
			// 
			// textBox_hit_Ua
			// 
			this.textBox_hit_Ua.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.textBox_hit_Ua.Location = new System.Drawing.Point(285, 29);
			this.textBox_hit_Ua.Name = "textBox_hit_Ua";
			this.textBox_hit_Ua.Size = new System.Drawing.Size(46, 20);
			this.textBox_hit_Ua.TabIndex = 15;
			// 
			// textBox_hit_Fa
			// 
			this.textBox_hit_Fa.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.textBox_hit_Fa.Location = new System.Drawing.Point(283, 3);
			this.textBox_hit_Fa.Name = "textBox_hit_Fa";
			this.textBox_hit_Fa.Size = new System.Drawing.Size(48, 20);
			this.textBox_hit_Fa.TabIndex = 14;
			// 
			// textBox_centery
			// 
			this.textBox_centery.Location = new System.Drawing.Point(78, 372);
			this.textBox_centery.Name = "textBox_centery";
			this.textBox_centery.Size = new System.Drawing.Size(35, 20);
			this.textBox_centery.TabIndex = 10;
			this.textBox_centery.Text = "79";
			// 
			// textBox_centerx
			// 
			this.textBox_centerx.Location = new System.Drawing.Point(78, 346);
			this.textBox_centerx.Name = "textBox_centerx";
			this.textBox_centerx.Size = new System.Drawing.Size(35, 20);
			this.textBox_centerx.TabIndex = 9;
			this.textBox_centerx.Text = "39";
			// 
			// textBox_dvy
			// 
			this.textBox_dvy.Location = new System.Drawing.Point(60, 294);
			this.textBox_dvy.Name = "textBox_dvy";
			this.textBox_dvy.Size = new System.Drawing.Size(53, 20);
			this.textBox_dvy.TabIndex = 8;
			this.textBox_dvy.Text = "0";
			// 
			// textBox_dvx
			// 
			this.textBox_dvx.Location = new System.Drawing.Point(60, 268);
			this.textBox_dvx.Name = "textBox_dvx";
			this.textBox_dvx.Size = new System.Drawing.Size(53, 20);
			this.textBox_dvx.TabIndex = 7;
			this.textBox_dvx.Text = "0";
			// 
			// textBox_wait
			// 
			this.textBox_wait.Location = new System.Drawing.Point(62, 216);
			this.textBox_wait.Name = "textBox_wait";
			this.textBox_wait.Size = new System.Drawing.Size(51, 20);
			this.textBox_wait.TabIndex = 5;
			// 
			// label_caption
			// 
			this.label_caption.AutoSize = true;
			this.label_caption.Location = new System.Drawing.Point(24, 35);
			this.label_caption.Name = "label_caption";
			this.label_caption.Size = new System.Drawing.Size(48, 13);
			this.label_caption.TabIndex = 0;
			this.label_caption.Text = "caption :";
			// 
			// label_pic
			// 
			this.label_pic.AutoSize = true;
			this.label_pic.Location = new System.Drawing.Point(24, 59);
			this.label_pic.Name = "label_pic";
			this.label_pic.Size = new System.Drawing.Size(27, 13);
			this.label_pic.TabIndex = 0;
			this.label_pic.Text = "pic :";
			// 
			// toolTip
			// 
			this.toolTip.AutoPopDelay = 30000;
			this.toolTip.InitialDelay = 500;
			this.toolTip.ReshowDelay = 100;
			this.toolTip.UseAnimation = false;
			this.toolTip.UseFading = false;
			// 
			// label_stateHint
			// 
			this.label_stateHint.AutoSize = true;
			this.label_stateHint.BackColor = System.Drawing.Color.PaleGreen;
			this.label_stateHint.Location = new System.Drawing.Point(118, 193);
			this.label_stateHint.Name = "label_stateHint";
			this.label_stateHint.Size = new System.Drawing.Size(26, 13);
			this.label_stateHint.TabIndex = 0;
			this.label_stateHint.Text = "Hint";
			this.toolTip.SetToolTip(this.label_stateHint, resources.GetString("label_stateHint.ToolTip"));
			// 
			// button_Clear
			// 
			this.button_Clear.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.button_Clear.Location = new System.Drawing.Point(196, 417);
			this.button_Clear.Name = "button_Clear";
			this.button_Clear.Size = new System.Drawing.Size(29, 23);
			this.button_Clear.TabIndex = 27;
			this.button_Clear.TabStop = false;
			this.button_Clear.Text = "C";
			this.toolTip.SetToolTip(this.button_Clear, "Clear");
			this.button_Clear.UseVisualStyleBackColor = true;
			this.button_Clear.Click += new System.EventHandler(this.Clear);
			// 
			// checkBoxMerge_index
			// 
			this.checkBoxMerge_index.AutoSize = true;
			this.checkBoxMerge_index.Location = new System.Drawing.Point(3, 8);
			this.checkBoxMerge_index.Name = "checkBoxMerge_index";
			this.checkBoxMerge_index.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_index.TabIndex = 32;
			this.checkBoxMerge_index.TabStop = false;
			this.checkBoxMerge_index.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_index, "Merge frame index");
			this.checkBoxMerge_index.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_pic
			// 
			this.checkBoxMerge_pic.AutoSize = true;
			this.checkBoxMerge_pic.Location = new System.Drawing.Point(3, 59);
			this.checkBoxMerge_pic.Name = "checkBoxMerge_pic";
			this.checkBoxMerge_pic.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_pic.TabIndex = 32;
			this.checkBoxMerge_pic.TabStop = false;
			this.checkBoxMerge_pic.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_pic, "Merge pic");
			this.checkBoxMerge_pic.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_state
			// 
			this.checkBoxMerge_state.AutoSize = true;
			this.checkBoxMerge_state.Location = new System.Drawing.Point(3, 193);
			this.checkBoxMerge_state.Name = "checkBoxMerge_state";
			this.checkBoxMerge_state.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_state.TabIndex = 32;
			this.checkBoxMerge_state.TabStop = false;
			this.checkBoxMerge_state.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_state, "Merge state");
			this.checkBoxMerge_state.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_wait
			// 
			this.checkBoxMerge_wait.AutoSize = true;
			this.checkBoxMerge_wait.Location = new System.Drawing.Point(3, 219);
			this.checkBoxMerge_wait.Name = "checkBoxMerge_wait";
			this.checkBoxMerge_wait.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_wait.TabIndex = 32;
			this.checkBoxMerge_wait.TabStop = false;
			this.checkBoxMerge_wait.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_wait, "Merge wait");
			this.checkBoxMerge_wait.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_next
			// 
			this.checkBoxMerge_next.AutoSize = true;
			this.checkBoxMerge_next.Location = new System.Drawing.Point(3, 245);
			this.checkBoxMerge_next.Name = "checkBoxMerge_next";
			this.checkBoxMerge_next.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_next.TabIndex = 32;
			this.checkBoxMerge_next.TabStop = false;
			this.checkBoxMerge_next.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_next, "Merge next");
			this.checkBoxMerge_next.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_dvx
			// 
			this.checkBoxMerge_dvx.AutoSize = true;
			this.checkBoxMerge_dvx.Location = new System.Drawing.Point(3, 271);
			this.checkBoxMerge_dvx.Name = "checkBoxMerge_dvx";
			this.checkBoxMerge_dvx.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_dvx.TabIndex = 32;
			this.checkBoxMerge_dvx.TabStop = false;
			this.checkBoxMerge_dvx.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_dvx, "Merge dvx");
			this.checkBoxMerge_dvx.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_dvy
			// 
			this.checkBoxMerge_dvy.AutoSize = true;
			this.checkBoxMerge_dvy.Location = new System.Drawing.Point(3, 297);
			this.checkBoxMerge_dvy.Name = "checkBoxMerge_dvy";
			this.checkBoxMerge_dvy.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_dvy.TabIndex = 32;
			this.checkBoxMerge_dvy.TabStop = false;
			this.checkBoxMerge_dvy.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_dvy, "Merge dvy");
			this.checkBoxMerge_dvy.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_dvz
			// 
			this.checkBoxMerge_dvz.AutoSize = true;
			this.checkBoxMerge_dvz.Location = new System.Drawing.Point(3, 323);
			this.checkBoxMerge_dvz.Name = "checkBoxMerge_dvz";
			this.checkBoxMerge_dvz.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_dvz.TabIndex = 32;
			this.checkBoxMerge_dvz.TabStop = false;
			this.checkBoxMerge_dvz.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_dvz, "Merge dvz");
			this.checkBoxMerge_dvz.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_centerx
			// 
			this.checkBoxMerge_centerx.AutoSize = true;
			this.checkBoxMerge_centerx.Location = new System.Drawing.Point(3, 349);
			this.checkBoxMerge_centerx.Name = "checkBoxMerge_centerx";
			this.checkBoxMerge_centerx.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_centerx.TabIndex = 32;
			this.checkBoxMerge_centerx.TabStop = false;
			this.checkBoxMerge_centerx.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_centerx, "Merge centerx");
			this.checkBoxMerge_centerx.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_centery
			// 
			this.checkBoxMerge_centery.AutoSize = true;
			this.checkBoxMerge_centery.Location = new System.Drawing.Point(3, 375);
			this.checkBoxMerge_centery.Name = "checkBoxMerge_centery";
			this.checkBoxMerge_centery.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_centery.TabIndex = 32;
			this.checkBoxMerge_centery.TabStop = false;
			this.checkBoxMerge_centery.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_centery, "Merge centery");
			this.checkBoxMerge_centery.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_caption
			// 
			this.checkBoxMerge_caption.AutoSize = true;
			this.checkBoxMerge_caption.Location = new System.Drawing.Point(3, 35);
			this.checkBoxMerge_caption.Name = "checkBoxMerge_caption";
			this.checkBoxMerge_caption.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_caption.TabIndex = 32;
			this.checkBoxMerge_caption.TabStop = false;
			this.checkBoxMerge_caption.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_caption, "Merge frame caption");
			this.checkBoxMerge_caption.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_hit_Fa
			// 
			this.checkBoxMerge_hit_Fa.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.checkBoxMerge_hit_Fa.AutoSize = true;
			this.checkBoxMerge_hit_Fa.Location = new System.Drawing.Point(214, 6);
			this.checkBoxMerge_hit_Fa.Name = "checkBoxMerge_hit_Fa";
			this.checkBoxMerge_hit_Fa.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_hit_Fa.TabIndex = 32;
			this.checkBoxMerge_hit_Fa.TabStop = false;
			this.checkBoxMerge_hit_Fa.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_hit_Fa, "Merge hit_Fa");
			this.checkBoxMerge_hit_Fa.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_hit_Ua
			// 
			this.checkBoxMerge_hit_Ua.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.checkBoxMerge_hit_Ua.AutoSize = true;
			this.checkBoxMerge_hit_Ua.Location = new System.Drawing.Point(214, 32);
			this.checkBoxMerge_hit_Ua.Name = "checkBoxMerge_hit_Ua";
			this.checkBoxMerge_hit_Ua.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_hit_Ua.TabIndex = 32;
			this.checkBoxMerge_hit_Ua.TabStop = false;
			this.checkBoxMerge_hit_Ua.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_hit_Ua, "Merge hit_Ua");
			this.checkBoxMerge_hit_Ua.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_hit_Da
			// 
			this.checkBoxMerge_hit_Da.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.checkBoxMerge_hit_Da.AutoSize = true;
			this.checkBoxMerge_hit_Da.Location = new System.Drawing.Point(214, 58);
			this.checkBoxMerge_hit_Da.Name = "checkBoxMerge_hit_Da";
			this.checkBoxMerge_hit_Da.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_hit_Da.TabIndex = 32;
			this.checkBoxMerge_hit_Da.TabStop = false;
			this.checkBoxMerge_hit_Da.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_hit_Da, "Merge hit_Da");
			this.checkBoxMerge_hit_Da.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_hit_Fj
			// 
			this.checkBoxMerge_hit_Fj.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.checkBoxMerge_hit_Fj.AutoSize = true;
			this.checkBoxMerge_hit_Fj.Location = new System.Drawing.Point(214, 84);
			this.checkBoxMerge_hit_Fj.Name = "checkBoxMerge_hit_Fj";
			this.checkBoxMerge_hit_Fj.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_hit_Fj.TabIndex = 32;
			this.checkBoxMerge_hit_Fj.TabStop = false;
			this.checkBoxMerge_hit_Fj.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_hit_Fj, "Merge hit_Fj");
			this.checkBoxMerge_hit_Fj.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_hit_Uj
			// 
			this.checkBoxMerge_hit_Uj.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.checkBoxMerge_hit_Uj.AutoSize = true;
			this.checkBoxMerge_hit_Uj.Location = new System.Drawing.Point(214, 110);
			this.checkBoxMerge_hit_Uj.Name = "checkBoxMerge_hit_Uj";
			this.checkBoxMerge_hit_Uj.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_hit_Uj.TabIndex = 32;
			this.checkBoxMerge_hit_Uj.TabStop = false;
			this.checkBoxMerge_hit_Uj.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_hit_Uj, "Merge hit_Uj");
			this.checkBoxMerge_hit_Uj.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_hit_Dj
			// 
			this.checkBoxMerge_hit_Dj.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.checkBoxMerge_hit_Dj.AutoSize = true;
			this.checkBoxMerge_hit_Dj.Location = new System.Drawing.Point(214, 136);
			this.checkBoxMerge_hit_Dj.Name = "checkBoxMerge_hit_Dj";
			this.checkBoxMerge_hit_Dj.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_hit_Dj.TabIndex = 32;
			this.checkBoxMerge_hit_Dj.TabStop = false;
			this.checkBoxMerge_hit_Dj.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_hit_Dj, "Merge hit_Dj");
			this.checkBoxMerge_hit_Dj.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_hit_ja
			// 
			this.checkBoxMerge_hit_ja.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.checkBoxMerge_hit_ja.AutoSize = true;
			this.checkBoxMerge_hit_ja.Location = new System.Drawing.Point(214, 162);
			this.checkBoxMerge_hit_ja.Name = "checkBoxMerge_hit_ja";
			this.checkBoxMerge_hit_ja.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_hit_ja.TabIndex = 32;
			this.checkBoxMerge_hit_ja.TabStop = false;
			this.checkBoxMerge_hit_ja.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_hit_ja, "Merge hit_ja");
			this.checkBoxMerge_hit_ja.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_hit_a
			// 
			this.checkBoxMerge_hit_a.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.checkBoxMerge_hit_a.AutoSize = true;
			this.checkBoxMerge_hit_a.Location = new System.Drawing.Point(214, 188);
			this.checkBoxMerge_hit_a.Name = "checkBoxMerge_hit_a";
			this.checkBoxMerge_hit_a.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_hit_a.TabIndex = 32;
			this.checkBoxMerge_hit_a.TabStop = false;
			this.checkBoxMerge_hit_a.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_hit_a, "Merge hit_a");
			this.checkBoxMerge_hit_a.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_hit_d
			// 
			this.checkBoxMerge_hit_d.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.checkBoxMerge_hit_d.AutoSize = true;
			this.checkBoxMerge_hit_d.Location = new System.Drawing.Point(214, 214);
			this.checkBoxMerge_hit_d.Name = "checkBoxMerge_hit_d";
			this.checkBoxMerge_hit_d.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_hit_d.TabIndex = 32;
			this.checkBoxMerge_hit_d.TabStop = false;
			this.checkBoxMerge_hit_d.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_hit_d, "Merge hit_d");
			this.checkBoxMerge_hit_d.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_hit_j
			// 
			this.checkBoxMerge_hit_j.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.checkBoxMerge_hit_j.AutoSize = true;
			this.checkBoxMerge_hit_j.Location = new System.Drawing.Point(214, 240);
			this.checkBoxMerge_hit_j.Name = "checkBoxMerge_hit_j";
			this.checkBoxMerge_hit_j.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_hit_j.TabIndex = 32;
			this.checkBoxMerge_hit_j.TabStop = false;
			this.checkBoxMerge_hit_j.ThreeState = true;
			this.toolTip.SetToolTip(this.checkBoxMerge_hit_j, "Merge hit_j");
			this.checkBoxMerge_hit_j.UseVisualStyleBackColor = true;
			// 
			// checkBoxMerge_sound
			// 
			this.checkBoxMerge_sound.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.checkBoxMerge_sound.AutoSize = true;
			this.checkBoxMerge_sound.Location = new System.Drawing.Point(144, 319);
			this.checkBoxMerge_sound.Name = "checkBoxMerge_sound";
			this.checkBoxMerge_sound.Size = new System.Drawing.Size(15, 14);
			this.checkBoxMerge_sound.TabIndex = 32;
			this.checkBoxMerge_sound.TabStop = false;
			this.toolTip.SetToolTip(this.checkBoxMerge_sound, "Merge sound");
			this.checkBoxMerge_sound.UseVisualStyleBackColor = true;
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.BackColor = System.Drawing.Color.PowderBlue;
			this.label2.Location = new System.Drawing.Point(6, 50);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(26, 13);
			this.label2.TabIndex = 0;
			this.label2.Text = "Hint";
			this.toolTip.SetToolTip(this.label2, resources.GetString("label2.ToolTip"));
			// 
			// textBox_sound
			// 
			this.textBox_sound.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.textBox_sound.Location = new System.Drawing.Point(213, 316);
			this.textBox_sound.Name = "textBox_sound";
			this.textBox_sound.Size = new System.Drawing.Size(118, 20);
			this.textBox_sound.TabIndex = 21;
			// 
			// label_sound
			// 
			this.label_sound.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.label_sound.AutoSize = true;
			this.label_sound.Location = new System.Drawing.Point(165, 319);
			this.label_sound.Name = "label_sound";
			this.label_sound.Size = new System.Drawing.Size(42, 13);
			this.label_sound.TabIndex = 0;
			this.label_sound.Text = "sound :";
			// 
			// checkBox_AddTags
			// 
			this.checkBox_AddTags.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
			this.checkBox_AddTags.AutoSize = true;
			this.checkBox_AddTags.Location = new System.Drawing.Point(3, 421);
			this.checkBox_AddTags.Name = "checkBox_AddTags";
			this.checkBox_AddTags.Size = new System.Drawing.Size(148, 17);
			this.checkBox_AddTags.TabIndex = 22;
			this.checkBox_AddTags.TabStop = false;
			this.checkBox_AddTags.Text = "Add tags while generating";
			// 
			// comboBox_state
			// 
			this.comboBox_state.FormattingEnabled = true;
			this.comboBox_state.Items.AddRange(new object[] {
            "0",
            "1",
            "2",
            "3",
            "4",
            "5",
            "6",
            "7",
            "8",
            "9",
            "10",
            "11",
            "12",
            "13",
            "14",
            "15",
            "16",
            "17",
            "18",
            "19",
            "100",
            "301",
            "1700",
            "2000",
            "8000",
            "9995",
            "9996",
            "9997",
            "9998",
            "9999"});
			this.comboBox_state.Location = new System.Drawing.Point(63, 190);
			this.comboBox_state.Name = "comboBox_state";
			this.comboBox_state.Size = new System.Drawing.Size(50, 21);
			this.comboBox_state.TabIndex = 4;
			// 
			// splitContainer
			// 
			this.splitContainer.BackColor = System.Drawing.SystemColors.ControlDark;
			this.splitContainer.Dock = System.Windows.Forms.DockStyle.Fill;
			this.splitContainer.FixedPanel = System.Windows.Forms.FixedPanel.Panel1;
			this.splitContainer.Location = new System.Drawing.Point(0, 0);
			this.splitContainer.Name = "splitContainer";
			this.splitContainer.Orientation = System.Windows.Forms.Orientation.Horizontal;
			// 
			// splitContainer.Panel1
			// 
			this.splitContainer.Panel1.BackColor = System.Drawing.SystemColors.Control;
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_caption);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_index);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_sound);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_hit_j);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_hit_d);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_hit_a);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_hit_ja);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_hit_Dj);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_hit_Uj);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_hit_Fj);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_hit_Da);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_hit_Ua);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_hit_Fa);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_centery);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_centerx);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_dvz);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_dvy);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_dvx);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_next);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_wait);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_state);
			this.splitContainer.Panel1.Controls.Add(this.checkBoxMerge_pic);
			this.splitContainer.Panel1.Controls.Add(this.button_Clear);
			this.splitContainer.Panel1.Controls.Add(this.checkBox_AddTags);
			this.splitContainer.Panel1.Controls.Add(this.textBox_sound);
			this.splitContainer.Panel1.Controls.Add(this.button_Clip);
			this.splitContainer.Panel1.Controls.Add(this.label_sound);
			this.splitContainer.Panel1.Controls.Add(this.button_Generate);
			this.splitContainer.Panel1.Controls.Add(this.nextOfLastFrame);
			this.splitContainer.Panel1.Controls.Add(this.label_nextOfLastFrame);
			this.splitContainer.Panel1.Controls.Add(this.comboBox_caption);
			this.splitContainer.Panel1.Controls.Add(this.comboBox_state);
			this.splitContainer.Panel1.Controls.Add(this.label_index);
			this.splitContainer.Panel1.Controls.Add(this.label_stateHint);
			this.splitContainer.Panel1.Controls.Add(this.textBox_hit_j);
			this.splitContainer.Panel1.Controls.Add(this.label_dvz);
			this.splitContainer.Panel1.Controls.Add(this.textBox_hit_d);
			this.splitContainer.Panel1.Controls.Add(this.label_pic);
			this.splitContainer.Panel1.Controls.Add(this.textBox_hit_a);
			this.splitContainer.Panel1.Controls.Add(this.textBox_dvz);
			this.splitContainer.Panel1.Controls.Add(this.textBox_hit_ja);
			this.splitContainer.Panel1.Controls.Add(this.label_hit_Fa);
			this.splitContainer.Panel1.Controls.Add(this.frameCount);
			this.splitContainer.Panel1.Controls.Add(this.textBox_hit_Dj);
			this.splitContainer.Panel1.Controls.Add(this.label_hit_Ua);
			this.splitContainer.Panel1.Controls.Add(this.numericUpDown_frameIndex);
			this.splitContainer.Panel1.Controls.Add(this.textBox_hit_Uj);
			this.splitContainer.Panel1.Controls.Add(this.label_caption);
			this.splitContainer.Panel1.Controls.Add(this.label_hit_Da);
			this.splitContainer.Panel1.Controls.Add(this.textBox_hit_Fj);
			this.splitContainer.Panel1.Controls.Add(this.textBox_next);
			this.splitContainer.Panel1.Controls.Add(this.textBox_wait);
			this.splitContainer.Panel1.Controls.Add(this.label_hit_Fj);
			this.splitContainer.Panel1.Controls.Add(this.textBox_hit_Da);
			this.splitContainer.Panel1.Controls.Add(this.textBox_dvx);
			this.splitContainer.Panel1.Controls.Add(this.label_hit_Uj);
			this.splitContainer.Panel1.Controls.Add(this.textBox_dvy);
			this.splitContainer.Panel1.Controls.Add(this.textBox_hit_Ua);
			this.splitContainer.Panel1.Controls.Add(this.textBox_centerx);
			this.splitContainer.Panel1.Controls.Add(this.label_hit_Dj);
			this.splitContainer.Panel1.Controls.Add(this.label_centery);
			this.splitContainer.Panel1.Controls.Add(this.textBox_hit_Fa);
			this.splitContainer.Panel1.Controls.Add(this.textBox_centery);
			this.splitContainer.Panel1.Controls.Add(this.label_hit_ja);
			this.splitContainer.Panel1.Controls.Add(this.label_centerx);
			this.splitContainer.Panel1.Controls.Add(this.label_hit_a);
			this.splitContainer.Panel1.Controls.Add(this.label_dvy);
			this.splitContainer.Panel1.Controls.Add(this.label_hit_d);
			this.splitContainer.Panel1.Controls.Add(this.label_dvx);
			this.splitContainer.Panel1.Controls.Add(this.label_frameCount);
			this.splitContainer.Panel1.Controls.Add(this.label_hit_j);
			this.splitContainer.Panel1.Controls.Add(this.label_next);
			this.splitContainer.Panel1.Controls.Add(this.label_state);
			this.splitContainer.Panel1.Controls.Add(this.nextMinus);
			this.splitContainer.Panel1.Controls.Add(this.nextPlus);
			this.splitContainer.Panel1.Controls.Add(this.lwaitabel_);
			this.splitContainer.Panel1.Controls.Add(this.drawBox);
			this.splitContainer.Panel1.Controls.Add(this.numericUpDown_pic);
			this.splitContainer.Panel1.Controls.Add(this.groupBox_merge);
			// 
			// splitContainer.Panel2
			// 
			this.splitContainer.Panel2.BackColor = System.Drawing.SystemColors.Control;
			this.splitContainer.Panel2.Controls.Add(this.richTextBox);
			this.splitContainer.Panel2.Controls.Add(this.button_Insert);
			this.splitContainer.Panel2.Controls.Add(this.button_NewLine);
			this.splitContainer.Size = new System.Drawing.Size(334, 526);
			this.splitContainer.SplitterDistance = 447;
			this.splitContainer.TabIndex = 0;
			this.splitContainer.TabStop = false;
			// 
			// nextOfLastFrame
			// 
			this.nextOfLastFrame.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.nextOfLastFrame.FormattingEnabled = true;
			this.nextOfLastFrame.Items.AddRange(new object[] {
            "0",
            "1",
            "999",
            "1000"});
			this.nextOfLastFrame.Location = new System.Drawing.Point(285, 289);
			this.nextOfLastFrame.Name = "nextOfLastFrame";
			this.nextOfLastFrame.Size = new System.Drawing.Size(46, 21);
			this.nextOfLastFrame.TabIndex = 30;
			this.nextOfLastFrame.Text = "999";
			// 
			// label_nextOfLastFrame
			// 
			this.label_nextOfLastFrame.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.label_nextOfLastFrame.AutoSize = true;
			this.label_nextOfLastFrame.Location = new System.Drawing.Point(186, 292);
			this.label_nextOfLastFrame.Name = "label_nextOfLastFrame";
			this.label_nextOfLastFrame.Size = new System.Drawing.Size(93, 13);
			this.label_nextOfLastFrame.TabIndex = 29;
			this.label_nextOfLastFrame.Text = "next of last frame :";
			// 
			// comboBox_caption
			// 
			this.comboBox_caption.FormattingEnabled = true;
			this.comboBox_caption.Items.AddRange(new object[] {
            "standing",
            "walking",
            "running",
            "heavy_obj_walk",
            "heavy_obj_run",
            "heavy_stop_run",
            "normal_weapon_atck",
            "jump_weapon_atck",
            "run_weapon_atck",
            "dash_weapon_atck",
            "light_weapon_thw",
            "heavy_weapon_thw",
            "sky_lgt_wp_thw",
            "weapon_drink",
            "punch",
            "super_punch",
            "jump_attack",
            "run_attack",
            "dash_attack",
            "dash_defend",
            "rowing",
            "defend",
            "broken_defend",
            "picking_light",
            "picking_heavy",
            "catching",
            "picked_caught",
            "falling",
            "ice",
            "fire",
            "tired",
            "jump",
            "dash",
            "crouch",
            "crouch2",
            "stop_running",
            "injured",
            "lying",
            "throw_lying_man",
            "in_the_sky",
            "on_hand",
            "throwing",
            "on_ground",
            "just_on_ground",
            "flying",
            "hiting",
            "hit",
            "rebound",
            "rebounding",
            "tail",
            "hiting_ground"});
			this.comboBox_caption.Location = new System.Drawing.Point(78, 32);
			this.comboBox_caption.Name = "comboBox_caption";
			this.comboBox_caption.Size = new System.Drawing.Size(88, 21);
			this.comboBox_caption.TabIndex = 2;
			this.comboBox_caption.Text = "standing";
			// 
			// frameCount
			// 
			this.frameCount.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.frameCount.Location = new System.Drawing.Point(285, 263);
			this.frameCount.Maximum = new decimal(new int[] {
            400,
            0,
            0,
            0});
			this.frameCount.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
			this.frameCount.Name = "frameCount";
			this.frameCount.Size = new System.Drawing.Size(46, 20);
			this.frameCount.TabIndex = 3;
			this.frameCount.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
			this.frameCount.ValueChanged += new System.EventHandler(this.ImageIndexChanged);
			// 
			// textBox_next
			// 
			this.textBox_next.Location = new System.Drawing.Point(62, 242);
			this.textBox_next.Name = "textBox_next";
			this.textBox_next.Size = new System.Drawing.Size(51, 20);
			this.textBox_next.TabIndex = 5;
			// 
			// label_frameCount
			// 
			this.label_frameCount.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.label_frameCount.AutoSize = true;
			this.label_frameCount.Location = new System.Drawing.Point(210, 265);
			this.label_frameCount.Name = "label_frameCount";
			this.label_frameCount.Size = new System.Drawing.Size(69, 13);
			this.label_frameCount.TabIndex = 0;
			this.label_frameCount.Text = "frame count :";
			// 
			// groupBox_merge
			// 
			this.groupBox_merge.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.groupBox_merge.Controls.Add(this.numericUpDown_rangeStart);
			this.groupBox_merge.Controls.Add(this.numericUpDown_rangeEnd);
			this.groupBox_merge.Controls.Add(this.label1);
			this.groupBox_merge.Controls.Add(this.button_Merge);
			this.groupBox_merge.Controls.Add(this.label2);
			this.groupBox_merge.Location = new System.Drawing.Point(198, 338);
			this.groupBox_merge.Name = "groupBox_merge";
			this.groupBox_merge.Size = new System.Drawing.Size(130, 75);
			this.groupBox_merge.TabIndex = 31;
			this.groupBox_merge.TabStop = false;
			this.groupBox_merge.Text = "range :";
			// 
			// numericUpDown_rangeStart
			// 
			this.numericUpDown_rangeStart.Location = new System.Drawing.Point(6, 19);
			this.numericUpDown_rangeStart.Maximum = new decimal(new int[] {
            399,
            0,
            0,
            0});
			this.numericUpDown_rangeStart.Name = "numericUpDown_rangeStart";
			this.numericUpDown_rangeStart.Size = new System.Drawing.Size(46, 20);
			this.numericUpDown_rangeStart.TabIndex = 3;
			// 
			// numericUpDown_rangeEnd
			// 
			this.numericUpDown_rangeEnd.Location = new System.Drawing.Point(78, 19);
			this.numericUpDown_rangeEnd.Maximum = new decimal(new int[] {
            399,
            0,
            0,
            0});
			this.numericUpDown_rangeEnd.Name = "numericUpDown_rangeEnd";
			this.numericUpDown_rangeEnd.Size = new System.Drawing.Size(46, 20);
			this.numericUpDown_rangeEnd.TabIndex = 3;
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Location = new System.Drawing.Point(58, 21);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(16, 13);
			this.label1.TabIndex = 0;
			this.label1.Text = "to";
			// 
			// button_Merge
			// 
			this.button_Merge.Location = new System.Drawing.Point(37, 45);
			this.button_Merge.Name = "button_Merge";
			this.button_Merge.Size = new System.Drawing.Size(59, 23);
			this.button_Merge.TabIndex = 23;
			this.button_Merge.Text = "Merge";
			this.button_Merge.UseVisualStyleBackColor = true;
			this.button_Merge.Click += new System.EventHandler(this.Merge);
			// 
			// FormFrame
			// 
			this.AcceptButton = this.button_Generate;
			this.AutoHidePortion = 300D;
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(334, 526);
			this.Controls.Add(this.splitContainer);
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
			this.Name = "FormFrame";
			this.ShowHint = WeifenLuo.WinFormsUI.Docking.DockState.DockLeftAutoHide;
			this.ShowInTaskbar = false;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
			this.TabText = "Frame";
			this.Text = "Frame";
			this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FormFrame_Closing);
			((System.ComponentModel.ISupportInitialize)(this.numericUpDown_pic)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.numericUpDown_frameIndex)).EndInit();
			this.splitContainer.Panel1.ResumeLayout(false);
			this.splitContainer.Panel1.PerformLayout();
			this.splitContainer.Panel2.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.splitContainer)).EndInit();
			this.splitContainer.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.frameCount)).EndInit();
			this.groupBox_merge.ResumeLayout(false);
			this.groupBox_merge.PerformLayout();
			((System.ComponentModel.ISupportInitialize)(this.numericUpDown_rangeStart)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.numericUpDown_rangeEnd)).EndInit();
			this.ResumeLayout(false);

		}
		public System.Windows.Forms.NumericUpDown frameCount;
		public DrawBox.DrawBox drawBox;
		public System.Windows.Forms.NumericUpDown numericUpDown_pic;
		public System.Windows.Forms.Label label_nextOfLastFrame;
		public System.Windows.Forms.ComboBox nextOfLastFrame;
		public System.Windows.Forms.Label label_frameCount;
		public System.Windows.Forms.TextBox textBox_next;
		public System.Windows.Forms.SplitContainer splitContainer;
		public System.Windows.Forms.ComboBox comboBox_state;
		public System.Windows.Forms.Button button_Clear;
		public System.Windows.Forms.CheckBox checkBox_AddTags;
		public System.Windows.Forms.Label label_stateHint;
		public System.Windows.Forms.Label label_sound;
		public System.Windows.Forms.TextBox textBox_sound;
		public System.Windows.Forms.ToolTip toolTip;
		public System.Windows.Forms.Label label_pic;
		public System.Windows.Forms.ComboBox comboBox_caption;
		public System.Windows.Forms.Label label_caption;
		public System.Windows.Forms.TextBox textBox_wait;
		public System.Windows.Forms.TextBox textBox_dvx;
		public System.Windows.Forms.TextBox textBox_dvy;
		public System.Windows.Forms.TextBox textBox_centerx;
		public System.Windows.Forms.TextBox textBox_centery;
		public System.Windows.Forms.TextBox textBox_hit_Fa;
		public System.Windows.Forms.TextBox textBox_hit_Ua;
		public System.Windows.Forms.TextBox textBox_hit_Da;
		public System.Windows.Forms.TextBox textBox_hit_Fj;
		public System.Windows.Forms.TextBox textBox_hit_Uj;
		public System.Windows.Forms.TextBox textBox_hit_Dj;
		public System.Windows.Forms.TextBox textBox_hit_ja;
		public System.Windows.Forms.TextBox textBox_hit_a;
		public System.Windows.Forms.TextBox textBox_hit_d;
		public System.Windows.Forms.TextBox textBox_hit_j;
		public System.Windows.Forms.Button nextMinus;
		public System.Windows.Forms.Button nextPlus;
		public System.Windows.Forms.Label label_index;
		public System.Windows.Forms.Label label_state;
		public System.Windows.Forms.Label lwaitabel_;
		public System.Windows.Forms.Label label_next;
		public System.Windows.Forms.Label label_dvx;
		public System.Windows.Forms.Label label_dvy;
		public System.Windows.Forms.Label label_centerx;
		public System.Windows.Forms.Label label_hit_Fa;
		public System.Windows.Forms.Label label_hit_Ua;
		public System.Windows.Forms.Label label_hit_Da;
		public System.Windows.Forms.Label label_hit_Fj;
		public System.Windows.Forms.Label label_hit_Uj;
		public System.Windows.Forms.Label label_hit_Dj;
		public System.Windows.Forms.Label label_hit_ja;
		public System.Windows.Forms.Label label_centery;
		public System.Windows.Forms.Label label_hit_a;
		public System.Windows.Forms.Label label_hit_d;
		public System.Windows.Forms.Label label_hit_j;
		public System.Windows.Forms.Button button_Insert;
		public System.Windows.Forms.RichTextBox richTextBox;
		public System.Windows.Forms.Button button_Generate;
		public System.Windows.Forms.NumericUpDown numericUpDown_frameIndex;
		public System.Windows.Forms.TextBox textBox_dvz;
		public System.Windows.Forms.Label label_dvz;
		public System.Windows.Forms.Button button_Clip;
		public System.Windows.Forms.Button button_NewLine;
		public System.Windows.Forms.TabControl tabControl3;
		private System.Windows.Forms.GroupBox groupBox_merge;
		public System.Windows.Forms.NumericUpDown numericUpDown_rangeStart;
		public System.Windows.Forms.NumericUpDown numericUpDown_rangeEnd;
		public System.Windows.Forms.Label label1;
		public System.Windows.Forms.Button button_Merge;
		private System.Windows.Forms.CheckBox checkBoxMerge_index;
		private System.Windows.Forms.CheckBox checkBoxMerge_pic;
		private System.Windows.Forms.CheckBox checkBoxMerge_centery;
		private System.Windows.Forms.CheckBox checkBoxMerge_centerx;
		private System.Windows.Forms.CheckBox checkBoxMerge_dvz;
		private System.Windows.Forms.CheckBox checkBoxMerge_dvy;
		private System.Windows.Forms.CheckBox checkBoxMerge_dvx;
		private System.Windows.Forms.CheckBox checkBoxMerge_next;
		private System.Windows.Forms.CheckBox checkBoxMerge_wait;
		private System.Windows.Forms.CheckBox checkBoxMerge_state;
		private System.Windows.Forms.CheckBox checkBoxMerge_caption;
		private System.Windows.Forms.CheckBox checkBoxMerge_hit_j;
		private System.Windows.Forms.CheckBox checkBoxMerge_hit_d;
		private System.Windows.Forms.CheckBox checkBoxMerge_hit_a;
		private System.Windows.Forms.CheckBox checkBoxMerge_hit_ja;
		private System.Windows.Forms.CheckBox checkBoxMerge_hit_Dj;
		private System.Windows.Forms.CheckBox checkBoxMerge_hit_Uj;
		private System.Windows.Forms.CheckBox checkBoxMerge_hit_Fj;
		private System.Windows.Forms.CheckBox checkBoxMerge_hit_Da;
		private System.Windows.Forms.CheckBox checkBoxMerge_hit_Ua;
		private System.Windows.Forms.CheckBox checkBoxMerge_hit_Fa;
		private System.Windows.Forms.CheckBox checkBoxMerge_sound;
		public System.Windows.Forms.Label label2;
	}
}
