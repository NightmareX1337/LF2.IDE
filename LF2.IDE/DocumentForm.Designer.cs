namespace LF2.IDE
{
	partial class DocumentForm
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(DocumentForm));
			this.scintilla = new ScintillaNET.Scintilla();
			this.saveFileDialog = new System.Windows.Forms.SaveFileDialog();
			this.statusStrip = new System.Windows.Forms.StatusStrip();
			this.toolStripStatusLabel1 = new System.Windows.Forms.ToolStripStatusLabel();
			this.toolStripStatusLabel_Line = new System.Windows.Forms.ToolStripStatusLabel();
			this.toolStripStatusLabel3 = new System.Windows.Forms.ToolStripStatusLabel();
			this.toolStripStatusLabel_Ch = new System.Windows.Forms.ToolStripStatusLabel();
			this.toolStripStatusLabel5 = new System.Windows.Forms.ToolStripStatusLabel();
			this.toolStripStatusLabel_Col = new System.Windows.Forms.ToolStripStatusLabel();
			this.toolStripStatusLabel7 = new System.Windows.Forms.ToolStripStatusLabel();
			this.toolStripStatusLabel_SelLen = new System.Windows.Forms.ToolStripStatusLabel();
			this.toolStripStatusLabel_SelLines = new System.Windows.Forms.ToolStripStatusLabel();
			this.toolStripStatusLabel_InsOvr = new System.Windows.Forms.ToolStripStatusLabel();
			this.contextMenuStrip = new System.Windows.Forms.ContextMenuStrip(this.components);
			this.saveToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
			this.closeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.closeAllButThisToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.closeAllToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
			this.copyFullPathToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.copyFileNameToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.copyFileItselfToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
			this.openİnExplorerToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			((System.ComponentModel.ISupportInitialize)(this.scintilla)).BeginInit();
			this.statusStrip.SuspendLayout();
			this.contextMenuStrip.SuspendLayout();
			this.SuspendLayout();
			// 
			// scintilla
			// 
			this.scintilla.AllowDrop = true;
			this.scintilla.AutoComplete.ListString = "";
			this.scintilla.AutoComplete.MaxHeight = 8;
			this.scintilla.AutoComplete.SingleLineAccept = true;
			this.scintilla.AutoComplete.StopCharacters = "{TAB}";
			this.scintilla.BorderStyle = System.Windows.Forms.BorderStyle.None;
			this.scintilla.Caret.CurrentLineBackgroundColor = System.Drawing.Color.Lavender;
			this.scintilla.Caret.HighlightCurrentLine = true;
			this.scintilla.ConfigurationManager.CustomLocation = "data.lang.xml";
			this.scintilla.ConfigurationManager.Language = "dat";
			this.scintilla.Dock = System.Windows.Forms.DockStyle.Fill;
			this.scintilla.Folding.UseCompactFolding = true;
			this.scintilla.Font = new System.Drawing.Font("Courier New", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.scintilla.Indentation.BackspaceUnindents = true;
			this.scintilla.Indentation.TabWidth = 3;
			this.scintilla.Indentation.UseTabs = false;
			this.scintilla.Lexing.Lexer = ScintillaNET.Lexer.Null;
			this.scintilla.Lexing.LexerName = "null";
			this.scintilla.Lexing.LineCommentPrefix = "";
			this.scintilla.Lexing.StreamCommentPrefix = "";
			this.scintilla.Lexing.StreamCommentSufix = "";
			this.scintilla.LineWrapping.IndentMode = ScintillaNET.LineWrappingIndentMode.Same;
			this.scintilla.Location = new System.Drawing.Point(0, 0);
			this.scintilla.Margins.FoldMarginColor = System.Drawing.Color.WhiteSmoke;
			this.scintilla.Margins.FoldMarginHighlightColor = System.Drawing.Color.WhiteSmoke;
			this.scintilla.Margins.Left = 5;
			this.scintilla.Margins.Margin0.Width = 38;
			this.scintilla.Margins.Margin1.AutoToggleMarkerNumber = 0;
			this.scintilla.Margins.Margin2.Width = 16;
			this.scintilla.Name = "scintilla";
			this.scintilla.Scrolling.HorizontalWidth = 1;
			this.scintilla.Size = new System.Drawing.Size(584, 447);
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
			this.scintilla.TabIndex = 0;
			this.scintilla.TabStop = false;
			this.scintilla.CharAdded += new System.EventHandler<ScintillaNET.CharAddedEventArgs>(this.ScintillaCharAdded);
			this.scintilla.ModifiedChanged += new System.EventHandler(this.scintilla_ModifiedChanged);
			this.scintilla.SelectionChanged += new System.EventHandler(this.scintilla_SelectionChanged);
			this.scintilla.TextDeleted += new System.EventHandler<ScintillaNET.TextModifiedEventArgs>(this.scintilla_TextDeleted);
			this.scintilla.ZoomChanged += new System.EventHandler(this.ScintillaZoomChanged);
			this.scintilla.TextChanged += new System.EventHandler(this.ScintillaTextChanged);
			this.scintilla.KeyDown += new System.Windows.Forms.KeyEventHandler(this.scintilla_KeyDown);
			this.scintilla.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.ScintillaKeyPress);
			this.scintilla.MouseMove += new System.Windows.Forms.MouseEventHandler(this.scintilla_MouseMove);
			// 
			// saveFileDialog
			// 
			this.saveFileDialog.Filter = resources.GetString("saveFileDialog.Filter");
			// 
			// statusStrip
			// 
			this.statusStrip.AutoSize = false;
			this.statusStrip.BackColor = System.Drawing.SystemColors.Control;
			this.statusStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabel1,
            this.toolStripStatusLabel_Line,
            this.toolStripStatusLabel3,
            this.toolStripStatusLabel_Ch,
            this.toolStripStatusLabel5,
            this.toolStripStatusLabel_Col,
            this.toolStripStatusLabel7,
            this.toolStripStatusLabel_SelLen,
            this.toolStripStatusLabel_SelLines,
            this.toolStripStatusLabel_InsOvr});
			this.statusStrip.Location = new System.Drawing.Point(0, 447);
			this.statusStrip.Name = "statusStrip";
			this.statusStrip.RenderMode = System.Windows.Forms.ToolStripRenderMode.ManagerRenderMode;
			this.statusStrip.Size = new System.Drawing.Size(584, 20);
			this.statusStrip.SizingGrip = false;
			this.statusStrip.TabIndex = 2;
			// 
			// toolStripStatusLabel1
			// 
			this.toolStripStatusLabel1.Name = "toolStripStatusLabel1";
			this.toolStripStatusLabel1.Size = new System.Drawing.Size(35, 15);
			this.toolStripStatusLabel1.Text = "Line :";
			// 
			// toolStripStatusLabel_Line
			// 
			this.toolStripStatusLabel_Line.AutoSize = false;
			this.toolStripStatusLabel_Line.Name = "toolStripStatusLabel_Line";
			this.toolStripStatusLabel_Line.Size = new System.Drawing.Size(40, 15);
			this.toolStripStatusLabel_Line.Text = "1";
			this.toolStripStatusLabel_Line.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// toolStripStatusLabel3
			// 
			this.toolStripStatusLabel3.BorderSides = System.Windows.Forms.ToolStripStatusLabelBorderSides.Left;
			this.toolStripStatusLabel3.Name = "toolStripStatusLabel3";
			this.toolStripStatusLabel3.Size = new System.Drawing.Size(32, 15);
			this.toolStripStatusLabel3.Text = "Ch :";
			// 
			// toolStripStatusLabel_Ch
			// 
			this.toolStripStatusLabel_Ch.AutoSize = false;
			this.toolStripStatusLabel_Ch.Name = "toolStripStatusLabel_Ch";
			this.toolStripStatusLabel_Ch.Size = new System.Drawing.Size(40, 15);
			this.toolStripStatusLabel_Ch.Text = "1";
			this.toolStripStatusLabel_Ch.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// toolStripStatusLabel5
			// 
			this.toolStripStatusLabel5.BorderSides = System.Windows.Forms.ToolStripStatusLabelBorderSides.Left;
			this.toolStripStatusLabel5.Name = "toolStripStatusLabel5";
			this.toolStripStatusLabel5.Size = new System.Drawing.Size(35, 15);
			this.toolStripStatusLabel5.Text = "Col :";
			// 
			// toolStripStatusLabel_Col
			// 
			this.toolStripStatusLabel_Col.AutoSize = false;
			this.toolStripStatusLabel_Col.Name = "toolStripStatusLabel_Col";
			this.toolStripStatusLabel_Col.Size = new System.Drawing.Size(40, 15);
			this.toolStripStatusLabel_Col.Text = "1";
			this.toolStripStatusLabel_Col.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// toolStripStatusLabel7
			// 
			this.toolStripStatusLabel7.BorderSides = System.Windows.Forms.ToolStripStatusLabelBorderSides.Left;
			this.toolStripStatusLabel7.Name = "toolStripStatusLabel7";
			this.toolStripStatusLabel7.Size = new System.Drawing.Size(32, 15);
			this.toolStripStatusLabel7.Text = "Sel :";
			// 
			// toolStripStatusLabel_SelLen
			// 
			this.toolStripStatusLabel_SelLen.Name = "toolStripStatusLabel_SelLen";
			this.toolStripStatusLabel_SelLen.Size = new System.Drawing.Size(13, 15);
			this.toolStripStatusLabel_SelLen.Text = "0";
			// 
			// toolStripStatusLabel_SelLines
			// 
			this.toolStripStatusLabel_SelLines.BorderSides = System.Windows.Forms.ToolStripStatusLabelBorderSides.Left;
			this.toolStripStatusLabel_SelLines.Name = "toolStripStatusLabel_SelLines";
			this.toolStripStatusLabel_SelLines.Size = new System.Drawing.Size(17, 15);
			this.toolStripStatusLabel_SelLines.Text = "0";
			// 
			// toolStripStatusLabel_InsOvr
			// 
			this.toolStripStatusLabel_InsOvr.Name = "toolStripStatusLabel_InsOvr";
			this.toolStripStatusLabel_InsOvr.Size = new System.Drawing.Size(285, 15);
			this.toolStripStatusLabel_InsOvr.Spring = true;
			this.toolStripStatusLabel_InsOvr.Text = "INS";
			this.toolStripStatusLabel_InsOvr.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
			// 
			// contextMenuStrip
			// 
			this.contextMenuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.saveToolStripMenuItem,
            this.toolStripSeparator1,
            this.closeToolStripMenuItem,
            this.closeAllButThisToolStripMenuItem,
            this.closeAllToolStripMenuItem,
            this.toolStripSeparator2,
            this.copyFullPathToolStripMenuItem,
            this.copyFileNameToolStripMenuItem,
            this.copyFileItselfToolStripMenuItem,
            this.toolStripSeparator3,
            this.openİnExplorerToolStripMenuItem});
			this.contextMenuStrip.Name = "contextMenuStrip";
			this.contextMenuStrip.Size = new System.Drawing.Size(167, 198);
			// 
			// saveToolStripMenuItem
			// 
			this.saveToolStripMenuItem.Name = "saveToolStripMenuItem";
			this.saveToolStripMenuItem.Size = new System.Drawing.Size(166, 22);
			this.saveToolStripMenuItem.Text = "Save";
			this.saveToolStripMenuItem.Click += new System.EventHandler(this.saveToolStripMenuItem_Click);
			// 
			// toolStripSeparator1
			// 
			this.toolStripSeparator1.Name = "toolStripSeparator1";
			this.toolStripSeparator1.Size = new System.Drawing.Size(163, 6);
			// 
			// closeToolStripMenuItem
			// 
			this.closeToolStripMenuItem.Name = "closeToolStripMenuItem";
			this.closeToolStripMenuItem.Size = new System.Drawing.Size(166, 22);
			this.closeToolStripMenuItem.Text = "Close";
			this.closeToolStripMenuItem.Click += new System.EventHandler(this.closeToolStripMenuItem_Click);
			// 
			// closeAllButThisToolStripMenuItem
			// 
			this.closeAllButThisToolStripMenuItem.Name = "closeAllButThisToolStripMenuItem";
			this.closeAllButThisToolStripMenuItem.Size = new System.Drawing.Size(166, 22);
			this.closeAllButThisToolStripMenuItem.Text = "Close All But This";
			this.closeAllButThisToolStripMenuItem.Click += new System.EventHandler(this.closeAllButThisToolStripMenuItem_Click);
			// 
			// closeAllToolStripMenuItem
			// 
			this.closeAllToolStripMenuItem.Name = "closeAllToolStripMenuItem";
			this.closeAllToolStripMenuItem.Size = new System.Drawing.Size(166, 22);
			this.closeAllToolStripMenuItem.Text = "Close All";
			this.closeAllToolStripMenuItem.Click += new System.EventHandler(this.closeAllToolStripMenuItem_Click);
			// 
			// toolStripSeparator2
			// 
			this.toolStripSeparator2.Name = "toolStripSeparator2";
			this.toolStripSeparator2.Size = new System.Drawing.Size(163, 6);
			// 
			// copyFullPathToolStripMenuItem
			// 
			this.copyFullPathToolStripMenuItem.Name = "copyFullPathToolStripMenuItem";
			this.copyFullPathToolStripMenuItem.Size = new System.Drawing.Size(166, 22);
			this.copyFullPathToolStripMenuItem.Text = "Copy Full Path";
			this.copyFullPathToolStripMenuItem.Click += new System.EventHandler(this.copyFullPathToolStripMenuItem_Click);
			// 
			// copyFileNameToolStripMenuItem
			// 
			this.copyFileNameToolStripMenuItem.Name = "copyFileNameToolStripMenuItem";
			this.copyFileNameToolStripMenuItem.Size = new System.Drawing.Size(166, 22);
			this.copyFileNameToolStripMenuItem.Text = "Copy File Name";
			this.copyFileNameToolStripMenuItem.Click += new System.EventHandler(this.copyFileNameToolStripMenuItem_Click);
			// 
			// copyFileItselfToolStripMenuItem
			// 
			this.copyFileItselfToolStripMenuItem.Name = "copyFileItselfToolStripMenuItem";
			this.copyFileItselfToolStripMenuItem.Size = new System.Drawing.Size(166, 22);
			this.copyFileItselfToolStripMenuItem.Text = "Copy File Itself";
			this.copyFileItselfToolStripMenuItem.Click += new System.EventHandler(this.copyFileItselfToolStripMenuItem_Click);
			// 
			// toolStripSeparator3
			// 
			this.toolStripSeparator3.Name = "toolStripSeparator3";
			this.toolStripSeparator3.Size = new System.Drawing.Size(163, 6);
			// 
			// openİnExplorerToolStripMenuItem
			// 
			this.openİnExplorerToolStripMenuItem.Name = "openİnExplorerToolStripMenuItem";
			this.openİnExplorerToolStripMenuItem.Size = new System.Drawing.Size(166, 22);
			this.openİnExplorerToolStripMenuItem.Text = "Open in Explorer";
			this.openİnExplorerToolStripMenuItem.Click += new System.EventHandler(this.openInExplorerToolStripMenuItem_Click);
			// 
			// DocumentForm
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(584, 467);
			this.Controls.Add(this.scintilla);
			this.Controls.Add(this.statusStrip);
			this.DockAreas = WeifenLuo.WinFormsUI.Docking.DockAreas.Document;
			this.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "DocumentForm";
			this.ShowHint = WeifenLuo.WinFormsUI.Docking.DockState.Document;
			this.ShowInTaskbar = false;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
			this.TabPageContextMenuStrip = this.contextMenuStrip;
			this.TabText = "Untitled";
			this.Text = "Untitled";
			this.Activated += new System.EventHandler(this.DocumentFormActivated);
			this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.DocumentForm_FormClosing);
			this.Load += new System.EventHandler(this.DocumentFormLoad);
			this.Enter += new System.EventHandler(this.DocumentFormActivated);
			((System.ComponentModel.ISupportInitialize)(this.scintilla)).EndInit();
			this.statusStrip.ResumeLayout(false);
			this.statusStrip.PerformLayout();
			this.contextMenuStrip.ResumeLayout(false);
			this.ResumeLayout(false);

		}

		#endregion

		public System.Windows.Forms.SaveFileDialog saveFileDialog;
		private ScintillaNET.Scintilla scintilla;
		private System.Windows.Forms.StatusStrip statusStrip;
		private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel1;
		private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel_Line;
		private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel3;
		private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel_Ch;
		private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel5;
		private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel_Col;
		private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel7;
		private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel_SelLines;
		private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel_InsOvr;
		private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel_SelLen;
		private System.Windows.Forms.ContextMenuStrip contextMenuStrip;
		private System.Windows.Forms.ToolStripMenuItem saveToolStripMenuItem;
		private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
		private System.Windows.Forms.ToolStripMenuItem closeToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem closeAllButThisToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem closeAllToolStripMenuItem;
		private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
		private System.Windows.Forms.ToolStripMenuItem copyFullPathToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem copyFileNameToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem copyFileItselfToolStripMenuItem;
		private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
		private System.Windows.Forms.ToolStripMenuItem openİnExplorerToolStripMenuItem;
	}
}
