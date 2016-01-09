namespace LF2.IDE
{
	partial class FormEventLog
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormEventLog));
			this.scintilla = new ScintillaNET.Scintilla();
			this.contextMenuStrip = new System.Windows.Forms.ContextMenuStrip(this.components);
			this.copySelectedToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.copyAllToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			((System.ComponentModel.ISupportInitialize)(this.scintilla)).BeginInit();
			this.contextMenuStrip.SuspendLayout();
			this.SuspendLayout();
			// 
			// scintilla
			// 
			this.scintilla.BorderStyle = System.Windows.Forms.BorderStyle.None;
			this.scintilla.Caret.BlinkRate = 0;
			this.scintilla.Caret.CurrentLineBackgroundColor = System.Drawing.Color.Lavender;
			this.scintilla.Caret.HighlightCurrentLine = true;
			this.scintilla.Caret.Width = 0;
			this.scintilla.ContextMenuStrip = this.contextMenuStrip;
			this.scintilla.Dock = System.Windows.Forms.DockStyle.Fill;
			this.scintilla.Folding.IsEnabled = false;
			this.scintilla.Folding.MarkerScheme = ScintillaNET.FoldMarkerScheme.Custom;
			this.scintilla.Font = new System.Drawing.Font("Consolas", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.scintilla.Lexing.Lexer = ScintillaNET.Lexer.ErrorList;
			this.scintilla.Lexing.LexerName = "errorlist";
			this.scintilla.Lexing.LineCommentPrefix = "";
			this.scintilla.Lexing.StreamCommentPrefix = "";
			this.scintilla.Lexing.StreamCommentSufix = "";
			this.scintilla.LineWrapping.Mode = ScintillaNET.LineWrappingMode.Word;
			this.scintilla.Location = new System.Drawing.Point(0, 0);
			this.scintilla.Margins.FoldMarginColor = System.Drawing.Color.WhiteSmoke;
			this.scintilla.Margins.FoldMarginHighlightColor = System.Drawing.Color.WhiteSmoke;
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
			this.scintilla.Size = new System.Drawing.Size(484, 216);
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
			this.scintilla.TabIndex = 1;
			this.scintilla.TabStop = false;
			this.scintilla.UndoRedo.IsUndoEnabled = false;
			this.scintilla.ZoomChanged += new System.EventHandler(this.ScintillaZoomChanged);
			this.scintilla.TextChanged += new System.EventHandler(this.ScintillaTextChanged);
			this.scintilla.KeyDown += new System.Windows.Forms.KeyEventHandler(this.scintilla_KeyDown);
			this.scintilla.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler(this.scintilla_MouseDoubleClick);
			// 
			// contextMenuStrip
			// 
			this.contextMenuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.copySelectedToolStripMenuItem,
            this.copyAllToolStripMenuItem});
			this.contextMenuStrip.Name = "contextMenuStrip";
			this.contextMenuStrip.Size = new System.Drawing.Size(150, 48);
			this.contextMenuStrip.Opening += new System.ComponentModel.CancelEventHandler(this.contextMenuStrip_Opening);
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
			// FormEventLog
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(484, 216);
			this.Controls.Add(this.scintilla);
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
			this.Name = "FormEventLog";
			this.ShowHint = WeifenLuo.WinFormsUI.Docking.DockState.DockBottomAutoHide;
			this.ShowInTaskbar = false;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
			this.TabText = "Event Log";
			this.Text = "Event Log";
			((System.ComponentModel.ISupportInitialize)(this.scintilla)).EndInit();
			this.contextMenuStrip.ResumeLayout(false);
			this.ResumeLayout(false);

		}

		public ScintillaNET.Scintilla scintilla;
		private System.Windows.Forms.ContextMenuStrip contextMenuStrip;
		private System.Windows.Forms.ToolStripMenuItem copySelectedToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem copyAllToolStripMenuItem;
	}
}
