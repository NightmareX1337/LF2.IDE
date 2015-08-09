namespace LF2.IDE
{
	partial class SolutionExplorer
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(SolutionExplorer));
			this.treeView = new System.Windows.Forms.TreeView();
			this.imageListSmall = new System.Windows.Forms.ImageList(this.components);
			this.imageListLarge = new System.Windows.Forms.ImageList(this.components);
			this.toolStrip = new System.Windows.Forms.ToolStrip();
			this.refreshToolStripButton = new System.Windows.Forms.ToolStripButton();
			this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
			this.collapseAllToolStripButton = new System.Windows.Forms.ToolStripButton();
			this.expandAllToolStripButton = new System.Windows.Forms.ToolStripButton();
			this.filterToolStripLabel = new System.Windows.Forms.ToolStripButton();
			this.filterToolStripComboBox = new System.Windows.Forms.ToolStripComboBox();
			this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
			this.biggerToolStripButton = new System.Windows.Forms.ToolStripButton();
			this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
			this.multiToolStripDropDownButton = new System.Windows.Forms.ToolStripDropDownButton();
			this.editAllFilesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.runAllFilesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.copyAllToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.deleteAllToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator4 = new System.Windows.Forms.ToolStripSeparator();
			this.clearSelectionsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.multiSelectToolStripButton = new System.Windows.Forms.ToolStripButton();
			this.defaultContextMenuStrip = new System.Windows.Forms.ContextMenuStrip(this.components);
			this.runToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.editToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator10 = new System.Windows.Forms.ToolStripSeparator();
			this.renameToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.deleteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.copyToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.dirContextMenuStrip = new System.Windows.Forms.ContextMenuStrip(this.components);
			this.expandChildNodesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.collapseChildNodesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator7 = new System.Windows.Forms.ToolStripSeparator();
			this.selectChildNodesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.selectFilesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.selectDirectoriesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator8 = new System.Windows.Forms.ToolStripSeparator();
			this.openInExplorerToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator6 = new System.Windows.Forms.ToolStripSeparator();
			this.createNewFileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.createNewDirectoryToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator5 = new System.Windows.Forms.ToolStripSeparator();
			this.copyToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
			this.deleteToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
			this.renameToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
			this.backgroundDeleter = new System.ComponentModel.BackgroundWorker();
			this.datContextMenuStrip = new System.Windows.Forms.ContextMenuStrip(this.components);
			this.editToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
			this.editWithoutDecryptionToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.runToolStripMenuItem4 = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator15 = new System.Windows.Forms.ToolStripSeparator();
			this.renameToolStripMenuItem2 = new System.Windows.Forms.ToolStripMenuItem();
			this.deleteToolStripMenuItem2 = new System.Windows.Forms.ToolStripMenuItem();
			this.copyToolStripMenuItem2 = new System.Windows.Forms.ToolStripMenuItem();
			this.textContextMenuStrip = new System.Windows.Forms.ContextMenuStrip(this.components);
			this.editToolStripMenuItem2 = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator14 = new System.Windows.Forms.ToolStripSeparator();
			this.renameToolStripMenuItem3 = new System.Windows.Forms.ToolStripMenuItem();
			this.deleteToolStripMenuItem3 = new System.Windows.Forms.ToolStripMenuItem();
			this.copyToolStripMenuItem3 = new System.Windows.Forms.ToolStripMenuItem();
			this.videoContextMenuStrip = new System.Windows.Forms.ContextMenuStrip(this.components);
			this.playToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.runToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
			this.editToolStripMenuItem3 = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator9 = new System.Windows.Forms.ToolStripSeparator();
			this.renameToolStripMenuItem4 = new System.Windows.Forms.ToolStripMenuItem();
			this.deleteToolStripMenuItem4 = new System.Windows.Forms.ToolStripMenuItem();
			this.copyToolStripMenuItem4 = new System.Windows.Forms.ToolStripMenuItem();
			this.soundContextMenuStrip = new System.Windows.Forms.ContextMenuStrip(this.components);
			this.playToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
			this.runToolStripMenuItem2 = new System.Windows.Forms.ToolStripMenuItem();
			this.editToolStripMenuItem4 = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator11 = new System.Windows.Forms.ToolStripSeparator();
			this.renameToolStripMenuItem5 = new System.Windows.Forms.ToolStripMenuItem();
			this.deleteToolStripMenuItem5 = new System.Windows.Forms.ToolStripMenuItem();
			this.copyToolStripMenuItem5 = new System.Windows.Forms.ToolStripMenuItem();
			this.imageContextMenuStrip = new System.Windows.Forms.ContextMenuStrip(this.components);
			this.previewToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator16 = new System.Windows.Forms.ToolStripSeparator();
			this.makeTransparentToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.changePixelFormatToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.makeMirroredToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator12 = new System.Windows.Forms.ToolStripSeparator();
			this.runToolStripMenuItem3 = new System.Windows.Forms.ToolStripMenuItem();
			this.editToolStripMenuItem5 = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator13 = new System.Windows.Forms.ToolStripSeparator();
			this.renameToolStripMenuItem6 = new System.Windows.Forms.ToolStripMenuItem();
			this.deleteToolStripMenuItem6 = new System.Windows.Forms.ToolStripMenuItem();
			this.copyToolStripMenuItem6 = new System.Windows.Forms.ToolStripMenuItem();
			this.populateTreeView = new System.ComponentModel.BackgroundWorker();
			this.toolStripSeparator17 = new System.Windows.Forms.ToolStripSeparator();
			this.toolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator18 = new System.Windows.Forms.ToolStripSeparator();
			this.toolStripMenuItem2 = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator19 = new System.Windows.Forms.ToolStripSeparator();
			this.toolStripMenuItem3 = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator20 = new System.Windows.Forms.ToolStripSeparator();
			this.toolStripMenuItem4 = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator21 = new System.Windows.Forms.ToolStripSeparator();
			this.toolStripMenuItem5 = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStripSeparator22 = new System.Windows.Forms.ToolStripSeparator();
			this.toolStripMenuItem6 = new System.Windows.Forms.ToolStripMenuItem();
			this.toolStrip.SuspendLayout();
			this.defaultContextMenuStrip.SuspendLayout();
			this.dirContextMenuStrip.SuspendLayout();
			this.datContextMenuStrip.SuspendLayout();
			this.textContextMenuStrip.SuspendLayout();
			this.videoContextMenuStrip.SuspendLayout();
			this.soundContextMenuStrip.SuspendLayout();
			this.imageContextMenuStrip.SuspendLayout();
			this.SuspendLayout();
			// 
			// treeView
			// 
			this.treeView.BorderStyle = System.Windows.Forms.BorderStyle.None;
			this.treeView.Dock = System.Windows.Forms.DockStyle.Fill;
			this.treeView.FullRowSelect = true;
			this.treeView.HideSelection = false;
			this.treeView.ImageIndex = 0;
			this.treeView.ImageList = this.imageListSmall;
			this.treeView.ItemHeight = 19;
			this.treeView.LabelEdit = true;
			this.treeView.Location = new System.Drawing.Point(0, 25);
			this.treeView.Name = "treeView";
			this.treeView.SelectedImageIndex = 0;
			this.treeView.Size = new System.Drawing.Size(292, 349);
			this.treeView.TabIndex = 0;
			this.treeView.BeforeLabelEdit += new System.Windows.Forms.NodeLabelEditEventHandler(this.TreeViewBeforeLabelEdit);
			this.treeView.AfterLabelEdit += new System.Windows.Forms.NodeLabelEditEventHandler(this.TreeViewAfterLabelEdit);
			this.treeView.NodeMouseHover += new System.Windows.Forms.TreeNodeMouseHoverEventHandler(this.TreeViewNodeMouseHover);
			this.treeView.NodeMouseClick += new System.Windows.Forms.TreeNodeMouseClickEventHandler(this.treeView_NodeMouseClick);
			this.treeView.NodeMouseDoubleClick += new System.Windows.Forms.TreeNodeMouseClickEventHandler(this.TreeViewNodeMouseDoubleClick);
			this.treeView.KeyDown += new System.Windows.Forms.KeyEventHandler(this.TreeViewKeyDown);
			// 
			// imageListSmall
			// 
			this.imageListSmall.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageListSmall.ImageStream")));
			this.imageListSmall.TransparentColor = System.Drawing.Color.Transparent;
			this.imageListSmall.Images.SetKeyName(0, "folder.ico");
			this.imageListSmall.Images.SetKeyName(1, "sfolder.ico");
			this.imageListSmall.Images.SetKeyName(2, "file16.bmp");
			// 
			// imageListLarge
			// 
			this.imageListLarge.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageListLarge.ImageStream")));
			this.imageListLarge.TransparentColor = System.Drawing.Color.Transparent;
			this.imageListLarge.Images.SetKeyName(0, "folder1.ico");
			this.imageListLarge.Images.SetKeyName(1, "sfolder0.ico");
			this.imageListLarge.Images.SetKeyName(2, "file32.bmp");
			// 
			// toolStrip
			// 
			this.toolStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.refreshToolStripButton,
            this.toolStripSeparator1,
            this.collapseAllToolStripButton,
            this.expandAllToolStripButton,
            this.filterToolStripLabel,
            this.filterToolStripComboBox,
            this.toolStripSeparator2,
            this.biggerToolStripButton,
            this.toolStripSeparator3,
            this.multiToolStripDropDownButton,
            this.multiSelectToolStripButton});
			this.toolStrip.Location = new System.Drawing.Point(0, 0);
			this.toolStrip.Name = "toolStrip";
			this.toolStrip.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
			this.toolStrip.Size = new System.Drawing.Size(292, 25);
			this.toolStrip.TabIndex = 1;
			// 
			// refreshToolStripButton
			// 
			this.refreshToolStripButton.AutoToolTip = false;
			this.refreshToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
			this.refreshToolStripButton.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.refreshToolStripButton.ForeColor = System.Drawing.Color.Navy;
			this.refreshToolStripButton.Image = ((System.Drawing.Image)(resources.GetObject("refreshToolStripButton.Image")));
			this.refreshToolStripButton.ImageTransparentColor = System.Drawing.Color.Magenta;
			this.refreshToolStripButton.Name = "refreshToolStripButton";
			this.refreshToolStripButton.Size = new System.Drawing.Size(23, 22);
			this.refreshToolStripButton.Text = "X";
			this.refreshToolStripButton.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			this.refreshToolStripButton.ToolTipText = "Refresh";
			this.refreshToolStripButton.Click += new System.EventHandler(this.RefreshToolStripButtonClick);
			// 
			// toolStripSeparator1
			// 
			this.toolStripSeparator1.Name = "toolStripSeparator1";
			this.toolStripSeparator1.Size = new System.Drawing.Size(6, 25);
			// 
			// collapseAllToolStripButton
			// 
			this.collapseAllToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
			this.collapseAllToolStripButton.Image = ((System.Drawing.Image)(resources.GetObject("collapseAllToolStripButton.Image")));
			this.collapseAllToolStripButton.ImageTransparentColor = System.Drawing.Color.Magenta;
			this.collapseAllToolStripButton.Name = "collapseAllToolStripButton";
			this.collapseAllToolStripButton.Size = new System.Drawing.Size(23, 22);
			this.collapseAllToolStripButton.Text = "Collapse All";
			this.collapseAllToolStripButton.Click += new System.EventHandler(this.CollapseAllToolStripButtonClick);
			// 
			// expandAllToolStripButton
			// 
			this.expandAllToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
			this.expandAllToolStripButton.Image = ((System.Drawing.Image)(resources.GetObject("expandAllToolStripButton.Image")));
			this.expandAllToolStripButton.ImageTransparentColor = System.Drawing.Color.Magenta;
			this.expandAllToolStripButton.Name = "expandAllToolStripButton";
			this.expandAllToolStripButton.Size = new System.Drawing.Size(23, 22);
			this.expandAllToolStripButton.Text = "Expand All";
			this.expandAllToolStripButton.Click += new System.EventHandler(this.ExpandAllToolStripButtonClick);
			// 
			// filterToolStripLabel
			// 
			this.filterToolStripLabel.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right;
			this.filterToolStripLabel.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text;
			this.filterToolStripLabel.Image = ((System.Drawing.Image)(resources.GetObject("filterToolStripLabel.Image")));
			this.filterToolStripLabel.ImageTransparentColor = System.Drawing.Color.Magenta;
			this.filterToolStripLabel.Name = "filterToolStripLabel";
			this.filterToolStripLabel.RightToLeft = System.Windows.Forms.RightToLeft.No;
			this.filterToolStripLabel.Size = new System.Drawing.Size(43, 22);
			this.filterToolStripLabel.Text = "Filter :";
			this.filterToolStripLabel.Click += new System.EventHandler(this.RefreshToolStripButtonClick);
			// 
			// filterToolStripComboBox
			// 
			this.filterToolStripComboBox.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right;
			this.filterToolStripComboBox.Items.AddRange(new object[] {
            "*.*",
            "*.dat",
            "*.txt",
            "*.bmp",
            "*.wav",
            "*.wma",
            "*.exe"});
			this.filterToolStripComboBox.Name = "filterToolStripComboBox";
			this.filterToolStripComboBox.RightToLeft = System.Windows.Forms.RightToLeft.No;
			this.filterToolStripComboBox.Size = new System.Drawing.Size(80, 25);
			this.filterToolStripComboBox.Text = "*.*";
			// 
			// toolStripSeparator2
			// 
			this.toolStripSeparator2.Name = "toolStripSeparator2";
			this.toolStripSeparator2.Size = new System.Drawing.Size(6, 25);
			// 
			// biggerToolStripButton
			// 
			this.biggerToolStripButton.CheckOnClick = true;
			this.biggerToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
			this.biggerToolStripButton.Image = ((System.Drawing.Image)(resources.GetObject("biggerToolStripButton.Image")));
			this.biggerToolStripButton.ImageTransparentColor = System.Drawing.Color.Magenta;
			this.biggerToolStripButton.Name = "biggerToolStripButton";
			this.biggerToolStripButton.Size = new System.Drawing.Size(23, 22);
			this.biggerToolStripButton.Text = "Show 32x32 Icons";
			this.biggerToolStripButton.Click += new System.EventHandler(this.BiggerToolStripButtonClick);
			// 
			// toolStripSeparator3
			// 
			this.toolStripSeparator3.Name = "toolStripSeparator3";
			this.toolStripSeparator3.Size = new System.Drawing.Size(6, 25);
			// 
			// multiToolStripDropDownButton
			// 
			this.multiToolStripDropDownButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.None;
			this.multiToolStripDropDownButton.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.editAllFilesToolStripMenuItem,
            this.runAllFilesToolStripMenuItem,
            this.copyAllToolStripMenuItem,
            this.deleteAllToolStripMenuItem,
            this.toolStripSeparator4,
            this.clearSelectionsToolStripMenuItem});
			this.multiToolStripDropDownButton.Enabled = false;
			this.multiToolStripDropDownButton.Image = ((System.Drawing.Image)(resources.GetObject("multiToolStripDropDownButton.Image")));
			this.multiToolStripDropDownButton.ImageTransparentColor = System.Drawing.Color.Magenta;
			this.multiToolStripDropDownButton.Name = "multiToolStripDropDownButton";
			this.multiToolStripDropDownButton.RightToLeft = System.Windows.Forms.RightToLeft.No;
			this.multiToolStripDropDownButton.Size = new System.Drawing.Size(13, 22);
			this.multiToolStripDropDownButton.Text = "Multi-Handler";
			// 
			// editAllFilesToolStripMenuItem
			// 
			this.editAllFilesToolStripMenuItem.Name = "editAllFilesToolStripMenuItem";
			this.editAllFilesToolStripMenuItem.Size = new System.Drawing.Size(157, 22);
			this.editAllFilesToolStripMenuItem.Text = "Edit All Files";
			this.editAllFilesToolStripMenuItem.Click += new System.EventHandler(this.EditAllFilesToolStripMenuItemClick);
			// 
			// runAllFilesToolStripMenuItem
			// 
			this.runAllFilesToolStripMenuItem.Name = "runAllFilesToolStripMenuItem";
			this.runAllFilesToolStripMenuItem.Size = new System.Drawing.Size(157, 22);
			this.runAllFilesToolStripMenuItem.Text = "Run All Files";
			this.runAllFilesToolStripMenuItem.Click += new System.EventHandler(this.RunAllFilesToolStripMenuItemClick);
			// 
			// copyAllToolStripMenuItem
			// 
			this.copyAllToolStripMenuItem.Name = "copyAllToolStripMenuItem";
			this.copyAllToolStripMenuItem.Size = new System.Drawing.Size(157, 22);
			this.copyAllToolStripMenuItem.Text = "Copy All";
			this.copyAllToolStripMenuItem.Click += new System.EventHandler(this.CopyAllToolStripMenuItemClick);
			// 
			// deleteAllToolStripMenuItem
			// 
			this.deleteAllToolStripMenuItem.Name = "deleteAllToolStripMenuItem";
			this.deleteAllToolStripMenuItem.Size = new System.Drawing.Size(157, 22);
			this.deleteAllToolStripMenuItem.Text = "Delete All";
			this.deleteAllToolStripMenuItem.Click += new System.EventHandler(this.DeleteAllToolStripMenuItemClick);
			// 
			// toolStripSeparator4
			// 
			this.toolStripSeparator4.Name = "toolStripSeparator4";
			this.toolStripSeparator4.Size = new System.Drawing.Size(154, 6);
			// 
			// clearSelectionsToolStripMenuItem
			// 
			this.clearSelectionsToolStripMenuItem.Name = "clearSelectionsToolStripMenuItem";
			this.clearSelectionsToolStripMenuItem.Size = new System.Drawing.Size(157, 22);
			this.clearSelectionsToolStripMenuItem.Text = "Clear Selections";
			this.clearSelectionsToolStripMenuItem.Click += new System.EventHandler(this.ClearSelectionsToolStripMenuItemClick);
			// 
			// multiSelectToolStripButton
			// 
			this.multiSelectToolStripButton.CheckOnClick = true;
			this.multiSelectToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
			this.multiSelectToolStripButton.Image = ((System.Drawing.Image)(resources.GetObject("multiSelectToolStripButton.Image")));
			this.multiSelectToolStripButton.ImageTransparentColor = System.Drawing.Color.Magenta;
			this.multiSelectToolStripButton.Name = "multiSelectToolStripButton";
			this.multiSelectToolStripButton.RightToLeft = System.Windows.Forms.RightToLeft.No;
			this.multiSelectToolStripButton.Size = new System.Drawing.Size(23, 22);
			this.multiSelectToolStripButton.Text = "Toggle Multi-Select";
			this.multiSelectToolStripButton.CheckStateChanged += new System.EventHandler(this.MultiSelectToolStripButtonCheckedChanged);
			// 
			// defaultContextMenuStrip
			// 
			this.defaultContextMenuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.runToolStripMenuItem,
            this.editToolStripMenuItem,
            this.toolStripSeparator10,
            this.renameToolStripMenuItem,
            this.deleteToolStripMenuItem,
            this.copyToolStripMenuItem,
            this.toolStripSeparator17,
            this.toolStripMenuItem1});
			this.defaultContextMenuStrip.Name = "defaultContextMenuStrip";
			this.defaultContextMenuStrip.Size = new System.Drawing.Size(162, 148);
			// 
			// runToolStripMenuItem
			// 
			this.runToolStripMenuItem.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.runToolStripMenuItem.Name = "runToolStripMenuItem";
			this.runToolStripMenuItem.Size = new System.Drawing.Size(161, 22);
			this.runToolStripMenuItem.Text = "Run";
			this.runToolStripMenuItem.Click += new System.EventHandler(this.RunToolStripMenuItemClick);
			// 
			// editToolStripMenuItem
			// 
			this.editToolStripMenuItem.Name = "editToolStripMenuItem";
			this.editToolStripMenuItem.Size = new System.Drawing.Size(161, 22);
			this.editToolStripMenuItem.Text = "Edit";
			this.editToolStripMenuItem.Click += new System.EventHandler(this.EditToolStripMenuItemClick);
			// 
			// toolStripSeparator10
			// 
			this.toolStripSeparator10.Name = "toolStripSeparator10";
			this.toolStripSeparator10.Size = new System.Drawing.Size(158, 6);
			// 
			// renameToolStripMenuItem
			// 
			this.renameToolStripMenuItem.Name = "renameToolStripMenuItem";
			this.renameToolStripMenuItem.Size = new System.Drawing.Size(161, 22);
			this.renameToolStripMenuItem.Text = "Rename";
			this.renameToolStripMenuItem.Click += new System.EventHandler(this.RenameToolStripMenuItemClick);
			// 
			// deleteToolStripMenuItem
			// 
			this.deleteToolStripMenuItem.Name = "deleteToolStripMenuItem";
			this.deleteToolStripMenuItem.Size = new System.Drawing.Size(161, 22);
			this.deleteToolStripMenuItem.Text = "Delete";
			this.deleteToolStripMenuItem.Click += new System.EventHandler(this.DeleteToolStripMenuItemClick);
			// 
			// copyToolStripMenuItem
			// 
			this.copyToolStripMenuItem.Name = "copyToolStripMenuItem";
			this.copyToolStripMenuItem.Size = new System.Drawing.Size(161, 22);
			this.copyToolStripMenuItem.Text = "Copy";
			this.copyToolStripMenuItem.Click += new System.EventHandler(this.CopyToolStripMenuItemClick);
			// 
			// dirContextMenuStrip
			// 
			this.dirContextMenuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.expandChildNodesToolStripMenuItem,
            this.collapseChildNodesToolStripMenuItem,
            this.toolStripSeparator7,
            this.selectChildNodesToolStripMenuItem,
            this.selectFilesToolStripMenuItem,
            this.selectDirectoriesToolStripMenuItem,
            this.toolStripSeparator8,
            this.openInExplorerToolStripMenuItem,
            this.toolStripSeparator6,
            this.createNewFileToolStripMenuItem,
            this.createNewDirectoryToolStripMenuItem,
            this.toolStripSeparator5,
            this.copyToolStripMenuItem1,
            this.deleteToolStripMenuItem1,
            this.renameToolStripMenuItem1});
			this.dirContextMenuStrip.Name = "dirContextMenuStrip";
			this.dirContextMenuStrip.Size = new System.Drawing.Size(188, 270);
			// 
			// expandChildNodesToolStripMenuItem
			// 
			this.expandChildNodesToolStripMenuItem.Name = "expandChildNodesToolStripMenuItem";
			this.expandChildNodesToolStripMenuItem.Size = new System.Drawing.Size(187, 22);
			this.expandChildNodesToolStripMenuItem.Text = "Expand Child Nodes";
			this.expandChildNodesToolStripMenuItem.Click += new System.EventHandler(this.ExpandChildNodesToolStripMenuItemClick);
			// 
			// collapseChildNodesToolStripMenuItem
			// 
			this.collapseChildNodesToolStripMenuItem.Name = "collapseChildNodesToolStripMenuItem";
			this.collapseChildNodesToolStripMenuItem.Size = new System.Drawing.Size(187, 22);
			this.collapseChildNodesToolStripMenuItem.Text = "Collapse Child Nodes";
			this.collapseChildNodesToolStripMenuItem.Click += new System.EventHandler(this.CollapseChildNodesToolStripMenuItemClick);
			// 
			// toolStripSeparator7
			// 
			this.toolStripSeparator7.Name = "toolStripSeparator7";
			this.toolStripSeparator7.Size = new System.Drawing.Size(184, 6);
			// 
			// selectChildNodesToolStripMenuItem
			// 
			this.selectChildNodesToolStripMenuItem.Name = "selectChildNodesToolStripMenuItem";
			this.selectChildNodesToolStripMenuItem.Size = new System.Drawing.Size(187, 22);
			this.selectChildNodesToolStripMenuItem.Text = "Select Child Nodes";
			this.selectChildNodesToolStripMenuItem.Click += new System.EventHandler(this.SelectChildNodesToolStripMenuItemClick);
			// 
			// selectFilesToolStripMenuItem
			// 
			this.selectFilesToolStripMenuItem.Name = "selectFilesToolStripMenuItem";
			this.selectFilesToolStripMenuItem.Size = new System.Drawing.Size(187, 22);
			this.selectFilesToolStripMenuItem.Text = "Select Files";
			this.selectFilesToolStripMenuItem.Click += new System.EventHandler(this.SelectFilesToolStripMenuItemClick);
			// 
			// selectDirectoriesToolStripMenuItem
			// 
			this.selectDirectoriesToolStripMenuItem.Name = "selectDirectoriesToolStripMenuItem";
			this.selectDirectoriesToolStripMenuItem.Size = new System.Drawing.Size(187, 22);
			this.selectDirectoriesToolStripMenuItem.Text = "Select Directories";
			this.selectDirectoriesToolStripMenuItem.Click += new System.EventHandler(this.SelectDirectoriesToolStripMenuItemClick);
			// 
			// toolStripSeparator8
			// 
			this.toolStripSeparator8.Name = "toolStripSeparator8";
			this.toolStripSeparator8.Size = new System.Drawing.Size(184, 6);
			// 
			// openInExplorerToolStripMenuItem
			// 
			this.openInExplorerToolStripMenuItem.Name = "openInExplorerToolStripMenuItem";
			this.openInExplorerToolStripMenuItem.Size = new System.Drawing.Size(187, 22);
			this.openInExplorerToolStripMenuItem.Text = "Open in Explorer";
			this.openInExplorerToolStripMenuItem.Click += new System.EventHandler(this.OpenInExplorerToolStripMenuItemClick);
			// 
			// toolStripSeparator6
			// 
			this.toolStripSeparator6.Name = "toolStripSeparator6";
			this.toolStripSeparator6.Size = new System.Drawing.Size(184, 6);
			// 
			// createNewFileToolStripMenuItem
			// 
			this.createNewFileToolStripMenuItem.Name = "createNewFileToolStripMenuItem";
			this.createNewFileToolStripMenuItem.Size = new System.Drawing.Size(187, 22);
			this.createNewFileToolStripMenuItem.Text = "Create New File";
			this.createNewFileToolStripMenuItem.Click += new System.EventHandler(this.CreateNewFileToolStripMenuItemClick);
			// 
			// createNewDirectoryToolStripMenuItem
			// 
			this.createNewDirectoryToolStripMenuItem.Name = "createNewDirectoryToolStripMenuItem";
			this.createNewDirectoryToolStripMenuItem.Size = new System.Drawing.Size(187, 22);
			this.createNewDirectoryToolStripMenuItem.Text = "Create New Directory";
			this.createNewDirectoryToolStripMenuItem.Click += new System.EventHandler(this.CreateNewDirectoryToolStripMenuItemClick);
			// 
			// toolStripSeparator5
			// 
			this.toolStripSeparator5.Name = "toolStripSeparator5";
			this.toolStripSeparator5.Size = new System.Drawing.Size(184, 6);
			// 
			// copyToolStripMenuItem1
			// 
			this.copyToolStripMenuItem1.Name = "copyToolStripMenuItem1";
			this.copyToolStripMenuItem1.Size = new System.Drawing.Size(187, 22);
			this.copyToolStripMenuItem1.Text = "Copy";
			this.copyToolStripMenuItem1.Click += new System.EventHandler(this.CopyToolStripMenuItem1Click);
			// 
			// deleteToolStripMenuItem1
			// 
			this.deleteToolStripMenuItem1.Name = "deleteToolStripMenuItem1";
			this.deleteToolStripMenuItem1.Size = new System.Drawing.Size(187, 22);
			this.deleteToolStripMenuItem1.Text = "Delete";
			this.deleteToolStripMenuItem1.Click += new System.EventHandler(this.DeleteToolStripMenuItem1Click);
			// 
			// renameToolStripMenuItem1
			// 
			this.renameToolStripMenuItem1.Name = "renameToolStripMenuItem1";
			this.renameToolStripMenuItem1.Size = new System.Drawing.Size(187, 22);
			this.renameToolStripMenuItem1.Text = "Rename";
			this.renameToolStripMenuItem1.Click += new System.EventHandler(this.RenameToolStripMenuItem1Click);
			// 
			// backgroundDeleter
			// 
			this.backgroundDeleter.WorkerReportsProgress = true;
			this.backgroundDeleter.WorkerSupportsCancellation = true;
			this.backgroundDeleter.DoWork += new System.ComponentModel.DoWorkEventHandler(this.BackgroundDeleterDoWork);
			this.backgroundDeleter.ProgressChanged += new System.ComponentModel.ProgressChangedEventHandler(this.BackgroundDeleterProgressChanged);
			this.backgroundDeleter.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.BackgroundDeleterRunWorkerCompleted);
			// 
			// datContextMenuStrip
			// 
			this.datContextMenuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.editToolStripMenuItem1,
            this.editWithoutDecryptionToolStripMenuItem,
            this.runToolStripMenuItem4,
            this.toolStripSeparator15,
            this.renameToolStripMenuItem2,
            this.deleteToolStripMenuItem2,
            this.copyToolStripMenuItem2,
            this.toolStripSeparator22,
            this.toolStripMenuItem6});
			this.datContextMenuStrip.Name = "datContextMenuStrip";
			this.datContextMenuStrip.Size = new System.Drawing.Size(162, 170);
			// 
			// editToolStripMenuItem1
			// 
			this.editToolStripMenuItem1.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.editToolStripMenuItem1.Name = "editToolStripMenuItem1";
			this.editToolStripMenuItem1.Size = new System.Drawing.Size(119, 22);
			this.editToolStripMenuItem1.Text = "Edit";
			this.editToolStripMenuItem1.Click += new System.EventHandler(this.EditToolStripMenuItemClick);
			// 
			// editWithoutDecryptionToolStripMenuItem
			// 
			this.editWithoutDecryptionToolStripMenuItem.Name = "editWithoutDecryptionToolStripMenuItem";
			this.editWithoutDecryptionToolStripMenuItem.Size = new System.Drawing.Size(119, 22);
			this.editWithoutDecryptionToolStripMenuItem.Text = "Raw Edit";
			this.editWithoutDecryptionToolStripMenuItem.Click += new System.EventHandler(this.EditWithoutDecryptionToolStripMenuItemClick);
			// 
			// runToolStripMenuItem4
			// 
			this.runToolStripMenuItem4.Name = "runToolStripMenuItem4";
			this.runToolStripMenuItem4.Size = new System.Drawing.Size(119, 22);
			this.runToolStripMenuItem4.Text = "Run";
			this.runToolStripMenuItem4.Click += new System.EventHandler(this.RunToolStripMenuItemClick);
			// 
			// toolStripSeparator15
			// 
			this.toolStripSeparator15.Name = "toolStripSeparator15";
			this.toolStripSeparator15.Size = new System.Drawing.Size(116, 6);
			// 
			// renameToolStripMenuItem2
			// 
			this.renameToolStripMenuItem2.Name = "renameToolStripMenuItem2";
			this.renameToolStripMenuItem2.Size = new System.Drawing.Size(119, 22);
			this.renameToolStripMenuItem2.Text = "Rename";
			this.renameToolStripMenuItem2.Click += new System.EventHandler(this.RenameToolStripMenuItemClick);
			// 
			// deleteToolStripMenuItem2
			// 
			this.deleteToolStripMenuItem2.Name = "deleteToolStripMenuItem2";
			this.deleteToolStripMenuItem2.Size = new System.Drawing.Size(119, 22);
			this.deleteToolStripMenuItem2.Text = "Delete";
			this.deleteToolStripMenuItem2.Click += new System.EventHandler(this.DeleteToolStripMenuItemClick);
			// 
			// copyToolStripMenuItem2
			// 
			this.copyToolStripMenuItem2.Name = "copyToolStripMenuItem2";
			this.copyToolStripMenuItem2.Size = new System.Drawing.Size(119, 22);
			this.copyToolStripMenuItem2.Text = "Copy";
			this.copyToolStripMenuItem2.Click += new System.EventHandler(this.CopyToolStripMenuItemClick);
			// 
			// textContextMenuStrip
			// 
			this.textContextMenuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.editToolStripMenuItem2,
            this.toolStripSeparator14,
            this.renameToolStripMenuItem3,
            this.deleteToolStripMenuItem3,
            this.copyToolStripMenuItem3,
            this.toolStripSeparator21,
            this.toolStripMenuItem5});
			this.textContextMenuStrip.Name = "txtxmlContextMenuStrip";
			this.textContextMenuStrip.Size = new System.Drawing.Size(162, 126);
			// 
			// editToolStripMenuItem2
			// 
			this.editToolStripMenuItem2.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.editToolStripMenuItem2.Name = "editToolStripMenuItem2";
			this.editToolStripMenuItem2.Size = new System.Drawing.Size(117, 22);
			this.editToolStripMenuItem2.Text = "Edit";
			this.editToolStripMenuItem2.Click += new System.EventHandler(this.EditToolStripMenuItemClick);
			// 
			// toolStripSeparator14
			// 
			this.toolStripSeparator14.Name = "toolStripSeparator14";
			this.toolStripSeparator14.Size = new System.Drawing.Size(114, 6);
			// 
			// renameToolStripMenuItem3
			// 
			this.renameToolStripMenuItem3.Name = "renameToolStripMenuItem3";
			this.renameToolStripMenuItem3.Size = new System.Drawing.Size(117, 22);
			this.renameToolStripMenuItem3.Text = "Rename";
			this.renameToolStripMenuItem3.Click += new System.EventHandler(this.RenameToolStripMenuItemClick);
			// 
			// deleteToolStripMenuItem3
			// 
			this.deleteToolStripMenuItem3.Name = "deleteToolStripMenuItem3";
			this.deleteToolStripMenuItem3.Size = new System.Drawing.Size(117, 22);
			this.deleteToolStripMenuItem3.Text = "Delete";
			this.deleteToolStripMenuItem3.Click += new System.EventHandler(this.DeleteToolStripMenuItemClick);
			// 
			// copyToolStripMenuItem3
			// 
			this.copyToolStripMenuItem3.Name = "copyToolStripMenuItem3";
			this.copyToolStripMenuItem3.Size = new System.Drawing.Size(117, 22);
			this.copyToolStripMenuItem3.Text = "Copy";
			this.copyToolStripMenuItem3.Click += new System.EventHandler(this.CopyToolStripMenuItemClick);
			// 
			// videoContextMenuStrip
			// 
			this.videoContextMenuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.playToolStripMenuItem,
            this.runToolStripMenuItem1,
            this.editToolStripMenuItem3,
            this.toolStripSeparator9,
            this.renameToolStripMenuItem4,
            this.deleteToolStripMenuItem4,
            this.copyToolStripMenuItem4,
            this.toolStripSeparator18,
            this.toolStripMenuItem2});
			this.videoContextMenuStrip.Name = "aviContextMenuStrip";
			this.videoContextMenuStrip.Size = new System.Drawing.Size(162, 170);
			// 
			// playToolStripMenuItem
			// 
			this.playToolStripMenuItem.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.playToolStripMenuItem.Name = "playToolStripMenuItem";
			this.playToolStripMenuItem.Size = new System.Drawing.Size(117, 22);
			this.playToolStripMenuItem.Text = "Play";
			this.playToolStripMenuItem.Click += new System.EventHandler(this.PlayToolStripMenuItemClick);
			// 
			// runToolStripMenuItem1
			// 
			this.runToolStripMenuItem1.Name = "runToolStripMenuItem1";
			this.runToolStripMenuItem1.Size = new System.Drawing.Size(117, 22);
			this.runToolStripMenuItem1.Text = "Run";
			this.runToolStripMenuItem1.Click += new System.EventHandler(this.RunToolStripMenuItemClick);
			// 
			// editToolStripMenuItem3
			// 
			this.editToolStripMenuItem3.Name = "editToolStripMenuItem3";
			this.editToolStripMenuItem3.Size = new System.Drawing.Size(117, 22);
			this.editToolStripMenuItem3.Text = "Edit";
			this.editToolStripMenuItem3.Click += new System.EventHandler(this.EditToolStripMenuItemClick);
			// 
			// toolStripSeparator9
			// 
			this.toolStripSeparator9.Name = "toolStripSeparator9";
			this.toolStripSeparator9.Size = new System.Drawing.Size(114, 6);
			// 
			// renameToolStripMenuItem4
			// 
			this.renameToolStripMenuItem4.Name = "renameToolStripMenuItem4";
			this.renameToolStripMenuItem4.Size = new System.Drawing.Size(117, 22);
			this.renameToolStripMenuItem4.Text = "Rename";
			this.renameToolStripMenuItem4.Click += new System.EventHandler(this.RenameToolStripMenuItemClick);
			// 
			// deleteToolStripMenuItem4
			// 
			this.deleteToolStripMenuItem4.Name = "deleteToolStripMenuItem4";
			this.deleteToolStripMenuItem4.Size = new System.Drawing.Size(117, 22);
			this.deleteToolStripMenuItem4.Text = "Delete";
			this.deleteToolStripMenuItem4.Click += new System.EventHandler(this.DeleteToolStripMenuItemClick);
			// 
			// copyToolStripMenuItem4
			// 
			this.copyToolStripMenuItem4.Name = "copyToolStripMenuItem4";
			this.copyToolStripMenuItem4.Size = new System.Drawing.Size(117, 22);
			this.copyToolStripMenuItem4.Text = "Copy";
			this.copyToolStripMenuItem4.Click += new System.EventHandler(this.CopyToolStripMenuItemClick);
			// 
			// soundContextMenuStrip
			// 
			this.soundContextMenuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.playToolStripMenuItem1,
            this.runToolStripMenuItem2,
            this.editToolStripMenuItem4,
            this.toolStripSeparator11,
            this.renameToolStripMenuItem5,
            this.deleteToolStripMenuItem5,
            this.copyToolStripMenuItem5,
            this.toolStripSeparator19,
            this.toolStripMenuItem3});
			this.soundContextMenuStrip.Name = "wavwmaContextMenuStrip";
			this.soundContextMenuStrip.Size = new System.Drawing.Size(162, 170);
			// 
			// playToolStripMenuItem1
			// 
			this.playToolStripMenuItem1.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.playToolStripMenuItem1.Name = "playToolStripMenuItem1";
			this.playToolStripMenuItem1.Size = new System.Drawing.Size(117, 22);
			this.playToolStripMenuItem1.Text = "Play";
			this.playToolStripMenuItem1.Click += new System.EventHandler(this.PlayToolStripMenuItem1Click);
			// 
			// runToolStripMenuItem2
			// 
			this.runToolStripMenuItem2.Name = "runToolStripMenuItem2";
			this.runToolStripMenuItem2.Size = new System.Drawing.Size(117, 22);
			this.runToolStripMenuItem2.Text = "Run";
			this.runToolStripMenuItem2.Click += new System.EventHandler(this.RunToolStripMenuItemClick);
			// 
			// editToolStripMenuItem4
			// 
			this.editToolStripMenuItem4.Name = "editToolStripMenuItem4";
			this.editToolStripMenuItem4.Size = new System.Drawing.Size(117, 22);
			this.editToolStripMenuItem4.Text = "Edit";
			this.editToolStripMenuItem4.Click += new System.EventHandler(this.EditToolStripMenuItemClick);
			// 
			// toolStripSeparator11
			// 
			this.toolStripSeparator11.Name = "toolStripSeparator11";
			this.toolStripSeparator11.Size = new System.Drawing.Size(114, 6);
			// 
			// renameToolStripMenuItem5
			// 
			this.renameToolStripMenuItem5.Name = "renameToolStripMenuItem5";
			this.renameToolStripMenuItem5.Size = new System.Drawing.Size(117, 22);
			this.renameToolStripMenuItem5.Text = "Rename";
			this.renameToolStripMenuItem5.Click += new System.EventHandler(this.RenameToolStripMenuItemClick);
			// 
			// deleteToolStripMenuItem5
			// 
			this.deleteToolStripMenuItem5.Name = "deleteToolStripMenuItem5";
			this.deleteToolStripMenuItem5.Size = new System.Drawing.Size(117, 22);
			this.deleteToolStripMenuItem5.Text = "Delete";
			this.deleteToolStripMenuItem5.Click += new System.EventHandler(this.DeleteToolStripMenuItemClick);
			// 
			// copyToolStripMenuItem5
			// 
			this.copyToolStripMenuItem5.Name = "copyToolStripMenuItem5";
			this.copyToolStripMenuItem5.Size = new System.Drawing.Size(117, 22);
			this.copyToolStripMenuItem5.Text = "Copy";
			this.copyToolStripMenuItem5.Click += new System.EventHandler(this.CopyToolStripMenuItemClick);
			// 
			// imageContextMenuStrip
			// 
			this.imageContextMenuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.previewToolStripMenuItem,
            this.toolStripSeparator16,
            this.makeTransparentToolStripMenuItem,
            this.changePixelFormatToolStripMenuItem,
            this.makeMirroredToolStripMenuItem,
            this.toolStripSeparator12,
            this.runToolStripMenuItem3,
            this.editToolStripMenuItem5,
            this.toolStripSeparator13,
            this.renameToolStripMenuItem6,
            this.deleteToolStripMenuItem6,
            this.copyToolStripMenuItem6,
            this.toolStripSeparator20,
            this.toolStripMenuItem4});
			this.imageContextMenuStrip.Name = "contextMenuStrip1";
			this.imageContextMenuStrip.Size = new System.Drawing.Size(184, 248);
			// 
			// previewToolStripMenuItem
			// 
			this.previewToolStripMenuItem.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
			this.previewToolStripMenuItem.Name = "previewToolStripMenuItem";
			this.previewToolStripMenuItem.Size = new System.Drawing.Size(183, 22);
			this.previewToolStripMenuItem.Text = "Preview";
			this.previewToolStripMenuItem.Click += new System.EventHandler(this.PreviewToolStripMenuItemClick);
			// 
			// toolStripSeparator16
			// 
			this.toolStripSeparator16.Name = "toolStripSeparator16";
			this.toolStripSeparator16.Size = new System.Drawing.Size(180, 6);
			// 
			// makeTransparentToolStripMenuItem
			// 
			this.makeTransparentToolStripMenuItem.Name = "makeTransparentToolStripMenuItem";
			this.makeTransparentToolStripMenuItem.Size = new System.Drawing.Size(183, 22);
			this.makeTransparentToolStripMenuItem.Text = "Make Transparent";
			this.makeTransparentToolStripMenuItem.Click += new System.EventHandler(this.MakeTransparentToolStripMenuItemClick);
			// 
			// changePixelFormatToolStripMenuItem
			// 
			this.changePixelFormatToolStripMenuItem.Name = "changePixelFormatToolStripMenuItem";
			this.changePixelFormatToolStripMenuItem.Size = new System.Drawing.Size(183, 22);
			this.changePixelFormatToolStripMenuItem.Text = "Change Pixel Format";
			this.changePixelFormatToolStripMenuItem.Click += new System.EventHandler(this.ChangePixelFormatToolStripMenuItemClick);
			// 
			// makeMirroredToolStripMenuItem
			// 
			this.makeMirroredToolStripMenuItem.Name = "makeMirroredToolStripMenuItem";
			this.makeMirroredToolStripMenuItem.Size = new System.Drawing.Size(183, 22);
			this.makeMirroredToolStripMenuItem.Text = "Make Mirrored";
			this.makeMirroredToolStripMenuItem.Click += new System.EventHandler(this.MakeMirroredToolStripMenuItemClick);
			// 
			// toolStripSeparator12
			// 
			this.toolStripSeparator12.Name = "toolStripSeparator12";
			this.toolStripSeparator12.Size = new System.Drawing.Size(180, 6);
			// 
			// runToolStripMenuItem3
			// 
			this.runToolStripMenuItem3.Name = "runToolStripMenuItem3";
			this.runToolStripMenuItem3.Size = new System.Drawing.Size(183, 22);
			this.runToolStripMenuItem3.Text = "Run";
			this.runToolStripMenuItem3.Click += new System.EventHandler(this.RunToolStripMenuItemClick);
			// 
			// editToolStripMenuItem5
			// 
			this.editToolStripMenuItem5.Name = "editToolStripMenuItem5";
			this.editToolStripMenuItem5.Size = new System.Drawing.Size(183, 22);
			this.editToolStripMenuItem5.Text = "Edit";
			this.editToolStripMenuItem5.Click += new System.EventHandler(this.EditToolStripMenuItemClick);
			// 
			// toolStripSeparator13
			// 
			this.toolStripSeparator13.Name = "toolStripSeparator13";
			this.toolStripSeparator13.Size = new System.Drawing.Size(180, 6);
			// 
			// renameToolStripMenuItem6
			// 
			this.renameToolStripMenuItem6.Name = "renameToolStripMenuItem6";
			this.renameToolStripMenuItem6.Size = new System.Drawing.Size(183, 22);
			this.renameToolStripMenuItem6.Text = "Rename";
			this.renameToolStripMenuItem6.Click += new System.EventHandler(this.RenameToolStripMenuItemClick);
			// 
			// deleteToolStripMenuItem6
			// 
			this.deleteToolStripMenuItem6.Name = "deleteToolStripMenuItem6";
			this.deleteToolStripMenuItem6.Size = new System.Drawing.Size(183, 22);
			this.deleteToolStripMenuItem6.Text = "Delete";
			this.deleteToolStripMenuItem6.Click += new System.EventHandler(this.DeleteToolStripMenuItemClick);
			// 
			// copyToolStripMenuItem6
			// 
			this.copyToolStripMenuItem6.Name = "copyToolStripMenuItem6";
			this.copyToolStripMenuItem6.Size = new System.Drawing.Size(183, 22);
			this.copyToolStripMenuItem6.Text = "Copy";
			this.copyToolStripMenuItem6.Click += new System.EventHandler(this.CopyToolStripMenuItemClick);
			// 
			// populateTreeView
			// 
			this.populateTreeView.WorkerReportsProgress = true;
			this.populateTreeView.WorkerSupportsCancellation = true;
			this.populateTreeView.DoWork += new System.ComponentModel.DoWorkEventHandler(this.PopulateTreeViewDoWork);
			this.populateTreeView.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.PopulateTreeViewRunWorkerCompleted);
			// 
			// toolStripSeparator17
			// 
			this.toolStripSeparator17.Name = "toolStripSeparator17";
			this.toolStripSeparator17.Size = new System.Drawing.Size(158, 6);
			this.toolStripSeparator17.Click += new System.EventHandler(this.OpenInExplorerToolStripMenuItemClick);
			// 
			// toolStripMenuItem1
			// 
			this.toolStripMenuItem1.Name = "toolStripMenuItem1";
			this.toolStripMenuItem1.Size = new System.Drawing.Size(161, 22);
			this.toolStripMenuItem1.Text = "Open in Explorer";
			this.toolStripMenuItem1.Click += new System.EventHandler(this.OpenFileInExplorerToolStripMenuItemClick);
			// 
			// toolStripSeparator18
			// 
			this.toolStripSeparator18.Name = "toolStripSeparator18";
			this.toolStripSeparator18.Size = new System.Drawing.Size(158, 6);
			// 
			// toolStripMenuItem2
			// 
			this.toolStripMenuItem2.Name = "toolStripMenuItem2";
			this.toolStripMenuItem2.Size = new System.Drawing.Size(161, 22);
			this.toolStripMenuItem2.Text = "Open in Explorer";
			this.toolStripMenuItem2.Click += new System.EventHandler(this.OpenFileInExplorerToolStripMenuItemClick);
			// 
			// toolStripSeparator19
			// 
			this.toolStripSeparator19.Name = "toolStripSeparator19";
			this.toolStripSeparator19.Size = new System.Drawing.Size(158, 6);
			// 
			// toolStripMenuItem3
			// 
			this.toolStripMenuItem3.Name = "toolStripMenuItem3";
			this.toolStripMenuItem3.Size = new System.Drawing.Size(161, 22);
			this.toolStripMenuItem3.Text = "Open in Explorer";
			this.toolStripMenuItem3.Click += new System.EventHandler(this.OpenFileInExplorerToolStripMenuItemClick);
			// 
			// toolStripSeparator20
			// 
			this.toolStripSeparator20.Name = "toolStripSeparator20";
			this.toolStripSeparator20.Size = new System.Drawing.Size(180, 6);
			// 
			// toolStripMenuItem4
			// 
			this.toolStripMenuItem4.Name = "toolStripMenuItem4";
			this.toolStripMenuItem4.Size = new System.Drawing.Size(183, 22);
			this.toolStripMenuItem4.Text = "Open in Explorer";
			this.toolStripMenuItem4.Click += new System.EventHandler(this.OpenFileInExplorerToolStripMenuItemClick);
			// 
			// toolStripSeparator21
			// 
			this.toolStripSeparator21.Name = "toolStripSeparator21";
			this.toolStripSeparator21.Size = new System.Drawing.Size(158, 6);
			// 
			// toolStripMenuItem5
			// 
			this.toolStripMenuItem5.Name = "toolStripMenuItem5";
			this.toolStripMenuItem5.Size = new System.Drawing.Size(161, 22);
			this.toolStripMenuItem5.Text = "Open in Explorer";
			this.toolStripMenuItem5.Click += new System.EventHandler(this.OpenFileInExplorerToolStripMenuItemClick);
			// 
			// toolStripSeparator22
			// 
			this.toolStripSeparator22.Name = "toolStripSeparator22";
			this.toolStripSeparator22.Size = new System.Drawing.Size(158, 6);
			// 
			// toolStripMenuItem6
			// 
			this.toolStripMenuItem6.Name = "toolStripMenuItem6";
			this.toolStripMenuItem6.Size = new System.Drawing.Size(161, 22);
			this.toolStripMenuItem6.Text = "Open in Explorer";
			this.toolStripMenuItem6.Click += new System.EventHandler(this.OpenFileInExplorerToolStripMenuItemClick);
			// 
			// SolutionExplorer
			// 
			this.AutoHidePortion = 300D;
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(292, 374);
			this.Controls.Add(this.treeView);
			this.Controls.Add(this.toolStrip);
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
			this.Name = "SolutionExplorer";
			this.ShowHint = WeifenLuo.WinFormsUI.Docking.DockState.DockRightAutoHide;
			this.ShowInTaskbar = false;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
			this.TabText = "Solution Explorer";
			this.Text = "Solution Explorer";
			this.ToolTipText = "Solution Explorer";
			this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.SolutionExplorerFormClosed);
			this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.SolutionExplorerKeyDown);
			this.toolStrip.ResumeLayout(false);
			this.toolStrip.PerformLayout();
			this.defaultContextMenuStrip.ResumeLayout(false);
			this.dirContextMenuStrip.ResumeLayout(false);
			this.datContextMenuStrip.ResumeLayout(false);
			this.textContextMenuStrip.ResumeLayout(false);
			this.videoContextMenuStrip.ResumeLayout(false);
			this.soundContextMenuStrip.ResumeLayout(false);
			this.imageContextMenuStrip.ResumeLayout(false);
			this.ResumeLayout(false);
			this.PerformLayout();

		}
		public System.Windows.Forms.ToolStripComboBox filterToolStripComboBox;
		public System.Windows.Forms.ToolStripButton refreshToolStripButton;
		public System.Windows.Forms.ToolStripMenuItem makeMirroredToolStripMenuItem;
		public System.Windows.Forms.ToolStripMenuItem runToolStripMenuItem4;
		public System.ComponentModel.BackgroundWorker populateTreeView;
		public System.Windows.Forms.ToolStripMenuItem changePixelFormatToolStripMenuItem;
		public System.Windows.Forms.ToolStripMenuItem makeTransparentToolStripMenuItem;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator16;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator13;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator12;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator11;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator9;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator14;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator15;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator10;
		public System.Windows.Forms.ToolStripMenuItem openInExplorerToolStripMenuItem;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator5;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator6;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator8;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator7;
		public System.Windows.Forms.ToolStripMenuItem copyToolStripMenuItem6;
		public System.Windows.Forms.ToolStripMenuItem deleteToolStripMenuItem6;
		public System.Windows.Forms.ToolStripMenuItem renameToolStripMenuItem6;
		public System.Windows.Forms.ToolStripMenuItem editToolStripMenuItem5;
		public System.Windows.Forms.ToolStripMenuItem runToolStripMenuItem3;
		public System.Windows.Forms.ToolStripMenuItem previewToolStripMenuItem;
		public System.Windows.Forms.ContextMenuStrip imageContextMenuStrip;
		public System.Windows.Forms.ToolStripMenuItem copyToolStripMenuItem5;
		public System.Windows.Forms.ToolStripMenuItem deleteToolStripMenuItem5;
		public System.Windows.Forms.ToolStripMenuItem renameToolStripMenuItem5;
		public System.Windows.Forms.ToolStripMenuItem editToolStripMenuItem4;
		public System.Windows.Forms.ToolStripMenuItem runToolStripMenuItem2;
		public System.Windows.Forms.ToolStripMenuItem playToolStripMenuItem1;
		public System.Windows.Forms.ContextMenuStrip textContextMenuStrip;
		public System.Windows.Forms.ContextMenuStrip videoContextMenuStrip;
		public System.Windows.Forms.ContextMenuStrip soundContextMenuStrip;
		public System.Windows.Forms.ToolStripMenuItem copyToolStripMenuItem4;
		public System.Windows.Forms.ToolStripMenuItem deleteToolStripMenuItem4;
		public System.Windows.Forms.ToolStripMenuItem renameToolStripMenuItem4;
		public System.Windows.Forms.ToolStripMenuItem editToolStripMenuItem3;
		public System.Windows.Forms.ToolStripMenuItem runToolStripMenuItem1;
		public System.Windows.Forms.ToolStripMenuItem playToolStripMenuItem;
		public System.Windows.Forms.ToolStripMenuItem copyToolStripMenuItem3;
		public System.Windows.Forms.ToolStripMenuItem deleteToolStripMenuItem3;
		public System.Windows.Forms.ToolStripMenuItem renameToolStripMenuItem3;
		public System.Windows.Forms.ToolStripMenuItem editToolStripMenuItem2;
		public System.Windows.Forms.ToolStripMenuItem copyToolStripMenuItem2;
		public System.Windows.Forms.ToolStripMenuItem deleteToolStripMenuItem2;
		public System.Windows.Forms.ToolStripMenuItem renameToolStripMenuItem2;
		public System.Windows.Forms.ToolStripMenuItem editWithoutDecryptionToolStripMenuItem;
		public System.Windows.Forms.ToolStripMenuItem editToolStripMenuItem1;
		public System.Windows.Forms.ContextMenuStrip datContextMenuStrip;
		public System.Windows.Forms.ToolStripMenuItem selectDirectoriesToolStripMenuItem;
		public System.Windows.Forms.ToolStripMenuItem selectFilesToolStripMenuItem;
		public System.Windows.Forms.ToolStripMenuItem selectChildNodesToolStripMenuItem;
		public System.ComponentModel.BackgroundWorker backgroundDeleter;
		public System.Windows.Forms.ToolStripMenuItem clearSelectionsToolStripMenuItem;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator4;
		public System.Windows.Forms.ToolStripDropDownButton multiToolStripDropDownButton;
		public System.Windows.Forms.ToolStripMenuItem deleteAllToolStripMenuItem;
		public System.Windows.Forms.ToolStripMenuItem copyAllToolStripMenuItem;
		public System.Windows.Forms.ToolStripMenuItem runAllFilesToolStripMenuItem;
		public System.Windows.Forms.ToolStripMenuItem editAllFilesToolStripMenuItem;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
		public System.Windows.Forms.ToolStripButton multiSelectToolStripButton;
		public System.Windows.Forms.ToolStripMenuItem copyToolStripMenuItem1;
		public System.Windows.Forms.ToolStripMenuItem deleteToolStripMenuItem1;
		public System.Windows.Forms.ToolStripMenuItem renameToolStripMenuItem1;
		public System.Windows.Forms.ToolStripMenuItem expandChildNodesToolStripMenuItem;
		public System.Windows.Forms.ToolStripMenuItem createNewDirectoryToolStripMenuItem;
		public System.Windows.Forms.ToolStripMenuItem createNewFileToolStripMenuItem;
		public System.Windows.Forms.ToolStripMenuItem collapseChildNodesToolStripMenuItem;
		public System.Windows.Forms.ContextMenuStrip dirContextMenuStrip;
		public System.Windows.Forms.ToolStripMenuItem copyToolStripMenuItem;
		public System.Windows.Forms.ToolStripMenuItem deleteToolStripMenuItem;
		public System.Windows.Forms.ToolStripMenuItem renameToolStripMenuItem;
		public System.Windows.Forms.ToolStripMenuItem editToolStripMenuItem;
		public System.Windows.Forms.ToolStripMenuItem runToolStripMenuItem;
		public System.Windows.Forms.ContextMenuStrip defaultContextMenuStrip;
		public System.Windows.Forms.ToolStripButton biggerToolStripButton;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
		public System.Windows.Forms.ToolStripButton collapseAllToolStripButton;
		public System.Windows.Forms.ToolStripButton filterToolStripLabel;
		public System.Windows.Forms.ImageList imageListSmall;
		public System.Windows.Forms.ImageList imageListLarge;
		public System.Windows.Forms.ToolStripButton expandAllToolStripButton;
		public System.Windows.Forms.ToolStrip toolStrip;
		public System.Windows.Forms.TreeView treeView;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator17;
		public System.Windows.Forms.ToolStripMenuItem toolStripMenuItem1;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator18;
		public System.Windows.Forms.ToolStripMenuItem toolStripMenuItem2;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator19;
		public System.Windows.Forms.ToolStripMenuItem toolStripMenuItem3;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator20;
		public System.Windows.Forms.ToolStripMenuItem toolStripMenuItem4;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator22;
		public System.Windows.Forms.ToolStripMenuItem toolStripMenuItem6;
		public System.Windows.Forms.ToolStripSeparator toolStripSeparator21;
		public System.Windows.Forms.ToolStripMenuItem toolStripMenuItem5;
	}
}
