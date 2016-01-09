namespace LF2.IDE
{
	partial class FormIDL
	{
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing && (components != null))
			{
				components.Dispose();
			}
			base.Dispose(disposing);
		}

		#region Windows Form Designer generated code

		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.components = new System.ComponentModel.Container();
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormIDL));
			this.buttonLoad = new System.Windows.Forms.Button();
			this.buttonCancel = new System.Windows.Forms.Button();
			this.comboBox_Process = new System.Windows.Forms.ComboBox();
			this.label_Process = new System.Windows.Forms.Label();
			this.label_ObjId = new System.Windows.Forms.Label();
			this.label_ObjType = new System.Windows.Forms.Label();
			this.label_DataType = new System.Windows.Forms.Label();
			this.comboBox_ObjId = new System.Windows.Forms.ComboBox();
			this.comboBox_ObjType = new System.Windows.Forms.ComboBox();
			this.comboBox_DataType = new System.Windows.Forms.ComboBox();
			this.comboBox_BgId = new System.Windows.Forms.ComboBox();
			this.label_BgId = new System.Windows.Forms.Label();
			this.button_Refresh = new System.Windows.Forms.Button();
			this.label_Result = new System.Windows.Forms.Label();
			this.scintilla = new ScintillaNET.Scintilla();
			this.contextMenuStrip = new System.Windows.Forms.ContextMenuStrip(this.components);
			this.copySelectedToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.copyAllToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			((System.ComponentModel.ISupportInitialize)(this.scintilla)).BeginInit();
			this.contextMenuStrip.SuspendLayout();
			this.SuspendLayout();
			// 
			// buttonLoad
			// 
			this.buttonLoad.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
			this.buttonLoad.Location = new System.Drawing.Point(320, 384);
			this.buttonLoad.Name = "buttonLoad";
			this.buttonLoad.Size = new System.Drawing.Size(75, 23);
			this.buttonLoad.TabIndex = 0;
			this.buttonLoad.Text = "Load";
			this.buttonLoad.UseVisualStyleBackColor = true;
			this.buttonLoad.Click += new System.EventHandler(this.buttonLoad_Click);
			// 
			// buttonCancel
			// 
			this.buttonCancel.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
			this.buttonCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
			this.buttonCancel.Location = new System.Drawing.Point(239, 384);
			this.buttonCancel.Name = "buttonCancel";
			this.buttonCancel.Size = new System.Drawing.Size(75, 23);
			this.buttonCancel.TabIndex = 1;
			this.buttonCancel.TabStop = false;
			this.buttonCancel.Text = "Cancel";
			this.buttonCancel.UseVisualStyleBackColor = true;
			this.buttonCancel.Click += new System.EventHandler(this.buttonCancel_Click);
			// 
			// comboBox_Process
			// 
			this.comboBox_Process.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.comboBox_Process.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.comboBox_Process.Font = new System.Drawing.Font("Courier New", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.comboBox_Process.FormattingEnabled = true;
			this.comboBox_Process.Location = new System.Drawing.Point(100, 12);
			this.comboBox_Process.Name = "comboBox_Process";
			this.comboBox_Process.Size = new System.Drawing.Size(522, 24);
			this.comboBox_Process.TabIndex = 2;
			this.comboBox_Process.TabStop = false;
			// 
			// label_Process
			// 
			this.label_Process.AutoSize = true;
			this.label_Process.Location = new System.Drawing.Point(12, 16);
			this.label_Process.Name = "label_Process";
			this.label_Process.Size = new System.Drawing.Size(48, 13);
			this.label_Process.TabIndex = 3;
			this.label_Process.Text = "Process:";
			// 
			// label_ObjId
			// 
			this.label_ObjId.AutoSize = true;
			this.label_ObjId.Location = new System.Drawing.Point(12, 106);
			this.label_ObjId.Name = "label_ObjId";
			this.label_ObjId.Size = new System.Drawing.Size(55, 13);
			this.label_ObjId.TabIndex = 3;
			this.label_ObjId.Text = "Object ID:";
			// 
			// label_ObjType
			// 
			this.label_ObjType.AutoSize = true;
			this.label_ObjType.Location = new System.Drawing.Point(12, 76);
			this.label_ObjType.Name = "label_ObjType";
			this.label_ObjType.Size = new System.Drawing.Size(68, 13);
			this.label_ObjType.TabIndex = 3;
			this.label_ObjType.Text = "Object Type:";
			// 
			// label_DataType
			// 
			this.label_DataType.AutoSize = true;
			this.label_DataType.Location = new System.Drawing.Point(12, 46);
			this.label_DataType.Name = "label_DataType";
			this.label_DataType.Size = new System.Drawing.Size(60, 13);
			this.label_DataType.TabIndex = 3;
			this.label_DataType.Text = "Data Type:";
			// 
			// comboBox_ObjId
			// 
			this.comboBox_ObjId.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.comboBox_ObjId.DropDownHeight = 200;
			this.comboBox_ObjId.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.comboBox_ObjId.Font = new System.Drawing.Font("Courier New", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.comboBox_ObjId.FormattingEnabled = true;
			this.comboBox_ObjId.IntegralHeight = false;
			this.comboBox_ObjId.Location = new System.Drawing.Point(100, 102);
			this.comboBox_ObjId.Name = "comboBox_ObjId";
			this.comboBox_ObjId.Size = new System.Drawing.Size(522, 24);
			this.comboBox_ObjId.TabIndex = 2;
			this.comboBox_ObjId.TabStop = false;
			// 
			// comboBox_ObjType
			// 
			this.comboBox_ObjType.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.comboBox_ObjType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.comboBox_ObjType.Font = new System.Drawing.Font("Courier New", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.comboBox_ObjType.FormattingEnabled = true;
			this.comboBox_ObjType.Items.AddRange(new object[] {
            "[0] Char",
            "[1] Weapon",
            "[2] Heavy Weapon",
            "[3] Special Attack",
            "[4] Throw Weapon",
            "[5] Criminal",
            "[6] Drink"});
			this.comboBox_ObjType.Location = new System.Drawing.Point(100, 72);
			this.comboBox_ObjType.Name = "comboBox_ObjType";
			this.comboBox_ObjType.Size = new System.Drawing.Size(522, 24);
			this.comboBox_ObjType.TabIndex = 2;
			this.comboBox_ObjType.TabStop = false;
			// 
			// comboBox_DataType
			// 
			this.comboBox_DataType.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.comboBox_DataType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.comboBox_DataType.Font = new System.Drawing.Font("Courier New", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.comboBox_DataType.FormattingEnabled = true;
			this.comboBox_DataType.Items.AddRange(new object[] {
            "Object",
            "Stage",
            "Background"});
			this.comboBox_DataType.Location = new System.Drawing.Point(100, 42);
			this.comboBox_DataType.Name = "comboBox_DataType";
			this.comboBox_DataType.Size = new System.Drawing.Size(522, 24);
			this.comboBox_DataType.TabIndex = 2;
			this.comboBox_DataType.TabStop = false;
			this.comboBox_DataType.SelectedIndexChanged += new System.EventHandler(this.comboBox_DataType_SelectedIndexChanged);
			// 
			// comboBox_BgId
			// 
			this.comboBox_BgId.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.comboBox_BgId.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.comboBox_BgId.Font = new System.Drawing.Font("Courier New", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.comboBox_BgId.FormattingEnabled = true;
			this.comboBox_BgId.Location = new System.Drawing.Point(100, 132);
			this.comboBox_BgId.Name = "comboBox_BgId";
			this.comboBox_BgId.Size = new System.Drawing.Size(522, 24);
			this.comboBox_BgId.TabIndex = 2;
			this.comboBox_BgId.TabStop = false;
			// 
			// label_BgId
			// 
			this.label_BgId.AutoSize = true;
			this.label_BgId.Location = new System.Drawing.Point(12, 136);
			this.label_BgId.Name = "label_BgId";
			this.label_BgId.Size = new System.Drawing.Size(82, 13);
			this.label_BgId.TabIndex = 3;
			this.label_BgId.Text = "Background ID:";
			// 
			// button_Refresh
			// 
			this.button_Refresh.Image = global::LF2.IDE.Properties.Resources.refresh;
			this.button_Refresh.Location = new System.Drawing.Point(66, 12);
			this.button_Refresh.Name = "button_Refresh";
			this.button_Refresh.Size = new System.Drawing.Size(28, 24);
			this.button_Refresh.TabIndex = 4;
			this.button_Refresh.TabStop = false;
			this.button_Refresh.UseVisualStyleBackColor = true;
			this.button_Refresh.Click += new System.EventHandler(this.button_Refresh_Click);
			// 
			// label_Result
			// 
			this.label_Result.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
			this.label_Result.AutoSize = true;
			this.label_Result.Location = new System.Drawing.Point(12, 397);
			this.label_Result.Name = "label_Result";
			this.label_Result.Size = new System.Drawing.Size(37, 13);
			this.label_Result.TabIndex = 5;
			this.label_Result.Text = "Result";
			// 
			// scintilla
			// 
			this.scintilla.AcceptsReturn = false;
			this.scintilla.AcceptsTab = false;
			this.scintilla.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.scintilla.Caret.BlinkRate = 0;
			this.scintilla.Caret.CurrentLineBackgroundColor = System.Drawing.Color.Lavender;
			this.scintilla.Caret.HighlightCurrentLine = true;
			this.scintilla.Caret.Width = 0;
			this.scintilla.ContextMenuStrip = this.contextMenuStrip;
			this.scintilla.Folding.IsEnabled = false;
			this.scintilla.Folding.MarkerScheme = ScintillaNET.FoldMarkerScheme.Custom;
			this.scintilla.Font = new System.Drawing.Font("Consolas", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.scintilla.Lexing.Lexer = ScintillaNET.Lexer.ErrorList;
			this.scintilla.Lexing.LexerName = "errorlist";
			this.scintilla.Lexing.LineCommentPrefix = "";
			this.scintilla.Lexing.StreamCommentPrefix = "";
			this.scintilla.Lexing.StreamCommentSufix = "";
			this.scintilla.LineWrapping.Mode = ScintillaNET.LineWrappingMode.Word;
			this.scintilla.Location = new System.Drawing.Point(12, 162);
			this.scintilla.Margins.Left = 5;
			this.scintilla.Margins.Margin0.Width = 38;
			this.scintilla.Margins.Margin2.IsClickable = false;
			this.scintilla.Margins.Margin2.Width = 16;
			this.scintilla.Markers.Folder.BackColor = System.Drawing.Color.Gray;
			this.scintilla.Markers.Folder.ForeColor = System.Drawing.Color.White;
			this.scintilla.Markers.Folder.Number = 30;
			this.scintilla.Markers.Folder.Symbol = ScintillaNET.MarkerSymbol.ShortArrow;
			this.scintilla.Markers.FolderEnd.BackColor = System.Drawing.Color.Gray;
			this.scintilla.Markers.FolderEnd.ForeColor = System.Drawing.Color.White;
			this.scintilla.Markers.FolderEnd.Number = 25;
			this.scintilla.Markers.FolderEnd.Symbol = ScintillaNET.MarkerSymbol.BoxPlusConnected;
			this.scintilla.Markers.FolderOpen.BackColor = System.Drawing.Color.Gray;
			this.scintilla.Markers.FolderOpen.ForeColor = System.Drawing.Color.White;
			this.scintilla.Markers.FolderOpen.Number = 31;
			this.scintilla.Markers.FolderOpen.Symbol = ScintillaNET.MarkerSymbol.BoxMinus;
			this.scintilla.Markers.FolderOpenMid.BackColor = System.Drawing.Color.Gray;
			this.scintilla.Markers.FolderOpenMid.ForeColor = System.Drawing.Color.White;
			this.scintilla.Markers.FolderOpenMid.Number = 26;
			this.scintilla.Markers.FolderOpenMid.Symbol = ScintillaNET.MarkerSymbol.BoxMinusConnected;
			this.scintilla.Markers.FolderOpenMidTail.BackColor = System.Drawing.Color.Gray;
			this.scintilla.Markers.FolderOpenMidTail.ForeColor = System.Drawing.Color.White;
			this.scintilla.Markers.FolderOpenMidTail.Number = 27;
			this.scintilla.Markers.FolderOpenMidTail.Symbol = ScintillaNET.MarkerSymbol.TCorner;
			this.scintilla.Markers.FolderSub.BackColor = System.Drawing.Color.Gray;
			this.scintilla.Markers.FolderSub.ForeColor = System.Drawing.Color.White;
			this.scintilla.Markers.FolderSub.Number = 29;
			this.scintilla.Markers.FolderSub.Symbol = ScintillaNET.MarkerSymbol.VLine;
			this.scintilla.Markers.FolderTail.BackColor = System.Drawing.Color.Gray;
			this.scintilla.Markers.FolderTail.ForeColor = System.Drawing.Color.White;
			this.scintilla.Markers.FolderTail.Number = 28;
			this.scintilla.Markers.FolderTail.Symbol = ScintillaNET.MarkerSymbol.LCorner;
			this.scintilla.MatchBraces = false;
			this.scintilla.Name = "scintilla";
			this.scintilla.Scrolling.HorizontalWidth = 1;
			this.scintilla.Size = new System.Drawing.Size(610, 216);
			this.scintilla.Snippets.ActiveSnippetColor = System.Drawing.Color.DarkBlue;
			this.scintilla.Styles.BraceBad.Size = 9F;
			this.scintilla.Styles.BraceLight.Size = 9F;
			this.scintilla.Styles.CallTip.FontName = "Tahoma";
			this.scintilla.Styles.CallTip.Size = 8.25F;
			this.scintilla.Styles.ControlChar.Size = 9F;
			this.scintilla.Styles.Default.BackColor = System.Drawing.SystemColors.Window;
			this.scintilla.Styles.Default.Size = 9F;
			this.scintilla.Styles.IndentGuide.Size = 9F;
			this.scintilla.Styles.LastPredefined.Size = 9F;
			this.scintilla.Styles.LineNumber.BackColor = System.Drawing.SystemColors.ControlLight;
			this.scintilla.Styles.LineNumber.FontName = "Courier New";
			this.scintilla.Styles.LineNumber.ForeColor = System.Drawing.Color.Navy;
			this.scintilla.Styles.LineNumber.Size = 9.75F;
			this.scintilla.Styles.Max.Size = 9F;
			this.scintilla.TabIndex = 6;
			this.scintilla.TabStop = false;
			this.scintilla.UndoRedo.IsUndoEnabled = false;
			this.scintilla.KeyDown += new System.Windows.Forms.KeyEventHandler(this.scintilla_KeyDown);
			// 
			// contextMenuStrip
			// 
			this.contextMenuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.copySelectedToolStripMenuItem,
            this.copyAllToolStripMenuItem});
			this.contextMenuStrip.Name = "contextMenuStrip";
			this.contextMenuStrip.Size = new System.Drawing.Size(150, 48);
			// 
			// copySelectedToolStripMenuItem
			// 
			this.copySelectedToolStripMenuItem.Name = "copySelectedToolStripMenuItem";
			this.copySelectedToolStripMenuItem.Size = new System.Drawing.Size(149, 22);
			this.copySelectedToolStripMenuItem.Text = "Copy Selected";
			this.copySelectedToolStripMenuItem.Click += new System.EventHandler(this.copySelectedToolStripMenuItem_Click);
			// 
			// copyAllToolStripMenuItem
			// 
			this.copyAllToolStripMenuItem.Name = "copyAllToolStripMenuItem";
			this.copyAllToolStripMenuItem.Size = new System.Drawing.Size(149, 22);
			this.copyAllToolStripMenuItem.Text = "Copy All";
			this.copyAllToolStripMenuItem.Click += new System.EventHandler(this.copyAllToolStripMenuItem_Click);
			// 
			// FormIDL
			// 
			this.AcceptButton = this.buttonLoad;
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.CancelButton = this.buttonCancel;
			this.ClientSize = new System.Drawing.Size(634, 419);
			this.Controls.Add(this.scintilla);
			this.Controls.Add(this.label_Result);
			this.Controls.Add(this.button_Refresh);
			this.Controls.Add(this.label_DataType);
			this.Controls.Add(this.label_BgId);
			this.Controls.Add(this.label_ObjId);
			this.Controls.Add(this.label_Process);
			this.Controls.Add(this.comboBox_DataType);
			this.Controls.Add(this.comboBox_BgId);
			this.Controls.Add(this.comboBox_ObjId);
			this.Controls.Add(this.comboBox_Process);
			this.Controls.Add(this.buttonCancel);
			this.Controls.Add(this.buttonLoad);
			this.Controls.Add(this.comboBox_ObjType);
			this.Controls.Add(this.label_ObjType);
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "FormIDL";
			this.ShowInTaskbar = false;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Instant Data Loader";
			this.Activated += new System.EventHandler(this.FormIDL_Activated);
			this.Deactivate += new System.EventHandler(this.FormIDL_Deactivate);
			this.Shown += new System.EventHandler(this.FormIDL_Load);
			this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.scintilla_KeyDown);
			((System.ComponentModel.ISupportInitialize)(this.scintilla)).EndInit();
			this.contextMenuStrip.ResumeLayout(false);
			this.ResumeLayout(false);
			this.PerformLayout();

		}

		#endregion

		private System.Windows.Forms.Button buttonLoad;
		private System.Windows.Forms.Button buttonCancel;
		private System.Windows.Forms.ComboBox comboBox_Process;
		private System.Windows.Forms.Label label_Process;
		private System.Windows.Forms.Label label_ObjId;
		private System.Windows.Forms.Label label_ObjType;
		private System.Windows.Forms.Label label_DataType;
		private System.Windows.Forms.ComboBox comboBox_ObjId;
		private System.Windows.Forms.ComboBox comboBox_ObjType;
		private System.Windows.Forms.ComboBox comboBox_DataType;
		private System.Windows.Forms.ComboBox comboBox_BgId;
		private System.Windows.Forms.Label label_BgId;
		private System.Windows.Forms.Button button_Refresh;
		private System.Windows.Forms.Label label_Result;
		public ScintillaNET.Scintilla scintilla;
		private System.Windows.Forms.ContextMenuStrip contextMenuStrip;
		private System.Windows.Forms.ToolStripMenuItem copySelectedToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem copyAllToolStripMenuItem;
	}
}