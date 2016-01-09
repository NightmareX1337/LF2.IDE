namespace LF2.IDE
{
	partial class FormSettings
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
			this.textBox_EncryptionKey = new System.Windows.Forms.TextBox();
			this.label_EncryptionKey = new System.Windows.Forms.Label();
			this.textBox_DecryptionKey = new System.Windows.Forms.TextBox();
			this.label_DecryptionKey = new System.Windows.Forms.Label();
			this.button_BlaBlaBlah = new System.Windows.Forms.Button();
			this.openFileDialog = new System.Windows.Forms.OpenFileDialog();
			this.textBox_Path = new System.Windows.Forms.TextBox();
			this.label_LF2Path = new System.Windows.Forms.Label();
			this.groupBox_Cryptology = new System.Windows.Forms.GroupBox();
			this.groupBox_DataUtil = new System.Windows.Forms.GroupBox();
			this.radioButton_Default = new System.Windows.Forms.RadioButton();
			this.radioButton_External = new System.Windows.Forms.RadioButton();
			this.comboBox_DataUtils = new System.Windows.Forms.ComboBox();
			this.groupBox_Debugger = new System.Windows.Forms.GroupBox();
			this.button_OK = new System.Windows.Forms.Button();
			this.button_Cancel = new System.Windows.Forms.Button();
			this.groupBox_PluginManager = new System.Windows.Forms.GroupBox();
			this.label_PluginWarning = new System.Windows.Forms.Label();
			this.listView_Plugins = new System.Windows.Forms.ListView();
			this.columnHeader_Plugin = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
			this.columnHeader_Name = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
			this.columnHeader_Author = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
			this.columnHeader_IdeVersion = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
			this.columnHeader_Description = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
			this.columnHeader_Warning = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
			this.columnHeader_Web = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
			this.groupBox_EditorSettings = new System.Windows.Forms.GroupBox();
			this.checkBox_SaveDocStates = new System.Windows.Forms.CheckBox();
			this.checkBox_AutoComplete = new System.Windows.Forms.CheckBox();
			this.groupBox_Cryptology.SuspendLayout();
			this.groupBox_DataUtil.SuspendLayout();
			this.groupBox_Debugger.SuspendLayout();
			this.groupBox_PluginManager.SuspendLayout();
			this.groupBox_EditorSettings.SuspendLayout();
			this.SuspendLayout();
			// 
			// textBox_EncryptionKey
			// 
			this.textBox_EncryptionKey.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.textBox_EncryptionKey.Location = new System.Drawing.Point(96, 19);
			this.textBox_EncryptionKey.Name = "textBox_EncryptionKey";
			this.textBox_EncryptionKey.Size = new System.Drawing.Size(658, 20);
			this.textBox_EncryptionKey.TabIndex = 0;
			this.textBox_EncryptionKey.Text = "odBearBecauseHeIsVeryGoodSiuHungIsAGo";
			// 
			// label_EncryptionKey
			// 
			this.label_EncryptionKey.AutoSize = true;
			this.label_EncryptionKey.Location = new System.Drawing.Point(6, 22);
			this.label_EncryptionKey.Name = "label_EncryptionKey";
			this.label_EncryptionKey.Size = new System.Drawing.Size(84, 13);
			this.label_EncryptionKey.TabIndex = 1;
			this.label_EncryptionKey.Text = "Encryption Key :";
			// 
			// textBox_DecryptionKey
			// 
			this.textBox_DecryptionKey.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.textBox_DecryptionKey.Location = new System.Drawing.Point(96, 45);
			this.textBox_DecryptionKey.Name = "textBox_DecryptionKey";
			this.textBox_DecryptionKey.Size = new System.Drawing.Size(658, 20);
			this.textBox_DecryptionKey.TabIndex = 1;
			this.textBox_DecryptionKey.Text = "odBearBecauseHeIsVeryGoodSiuHungIsAGo";
			// 
			// label_DecryptionKey
			// 
			this.label_DecryptionKey.AutoSize = true;
			this.label_DecryptionKey.Location = new System.Drawing.Point(6, 48);
			this.label_DecryptionKey.Name = "label_DecryptionKey";
			this.label_DecryptionKey.Size = new System.Drawing.Size(85, 13);
			this.label_DecryptionKey.TabIndex = 1;
			this.label_DecryptionKey.Text = "Decryption Key :";
			// 
			// button_BlaBlaBlah
			// 
			this.button_BlaBlaBlah.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.button_BlaBlaBlah.Location = new System.Drawing.Point(730, 19);
			this.button_BlaBlaBlah.Name = "button_BlaBlaBlah";
			this.button_BlaBlaBlah.Size = new System.Drawing.Size(24, 20);
			this.button_BlaBlaBlah.TabIndex = 3;
			this.button_BlaBlaBlah.Text = "...";
			this.button_BlaBlaBlah.UseCompatibleTextRendering = true;
			this.button_BlaBlaBlah.UseVisualStyleBackColor = true;
			this.button_BlaBlaBlah.Click += new System.EventHandler(this.LookUp);
			// 
			// openFileDialog
			// 
			this.openFileDialog.FileName = "lf2.exe";
			this.openFileDialog.Filter = "All Files|*.*|All Executable Files|*.exe|LF2 Executable Files|lf2.exe";
			this.openFileDialog.FilterIndex = 3;
			this.openFileDialog.ReadOnlyChecked = true;
			this.openFileDialog.RestoreDirectory = true;
			// 
			// textBox_Path
			// 
			this.textBox_Path.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.textBox_Path.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
			this.textBox_Path.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.HistoryList;
			this.textBox_Path.BackColor = System.Drawing.SystemColors.Window;
			this.textBox_Path.Location = new System.Drawing.Point(68, 19);
			this.textBox_Path.Name = "textBox_Path";
			this.textBox_Path.Size = new System.Drawing.Size(656, 20);
			this.textBox_Path.TabIndex = 2;
			this.textBox_Path.Text = "lf2.exe";
			// 
			// label_LF2Path
			// 
			this.label_LF2Path.AutoSize = true;
			this.label_LF2Path.Location = new System.Drawing.Point(6, 22);
			this.label_LF2Path.Name = "label_LF2Path";
			this.label_LF2Path.Size = new System.Drawing.Size(56, 13);
			this.label_LF2Path.TabIndex = 1;
			this.label_LF2Path.Text = "LF2 Path :";
			// 
			// groupBox_Cryptology
			// 
			this.groupBox_Cryptology.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.groupBox_Cryptology.Controls.Add(this.groupBox_DataUtil);
			this.groupBox_Cryptology.Controls.Add(this.label_EncryptionKey);
			this.groupBox_Cryptology.Controls.Add(this.textBox_EncryptionKey);
			this.groupBox_Cryptology.Controls.Add(this.textBox_DecryptionKey);
			this.groupBox_Cryptology.Controls.Add(this.label_DecryptionKey);
			this.groupBox_Cryptology.Location = new System.Drawing.Point(12, 12);
			this.groupBox_Cryptology.Name = "groupBox_Cryptology";
			this.groupBox_Cryptology.Size = new System.Drawing.Size(760, 129);
			this.groupBox_Cryptology.TabIndex = 4;
			this.groupBox_Cryptology.TabStop = false;
			this.groupBox_Cryptology.Text = "Cryptology";
			// 
			// groupBox_DataUtil
			// 
			this.groupBox_DataUtil.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.groupBox_DataUtil.Controls.Add(this.radioButton_Default);
			this.groupBox_DataUtil.Controls.Add(this.radioButton_External);
			this.groupBox_DataUtil.Controls.Add(this.comboBox_DataUtils);
			this.groupBox_DataUtil.Location = new System.Drawing.Point(6, 71);
			this.groupBox_DataUtil.Name = "groupBox_DataUtil";
			this.groupBox_DataUtil.Size = new System.Drawing.Size(748, 52);
			this.groupBox_DataUtil.TabIndex = 4;
			this.groupBox_DataUtil.TabStop = false;
			this.groupBox_DataUtil.Text = "Data Utility";
			// 
			// radioButton_Default
			// 
			this.radioButton_Default.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right)));
			this.radioButton_Default.AutoSize = true;
			this.radioButton_Default.Location = new System.Drawing.Point(6, 20);
			this.radioButton_Default.Name = "radioButton_Default";
			this.radioButton_Default.Size = new System.Drawing.Size(59, 17);
			this.radioButton_Default.TabIndex = 3;
			this.radioButton_Default.TabStop = true;
			this.radioButton_Default.Text = "Default";
			this.radioButton_Default.UseVisualStyleBackColor = true;
			// 
			// radioButton_External
			// 
			this.radioButton_External.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right)));
			this.radioButton_External.AutoSize = true;
			this.radioButton_External.Location = new System.Drawing.Point(90, 20);
			this.radioButton_External.Name = "radioButton_External";
			this.radioButton_External.Size = new System.Drawing.Size(69, 17);
			this.radioButton_External.TabIndex = 3;
			this.radioButton_External.TabStop = true;
			this.radioButton_External.Text = "External :";
			this.radioButton_External.UseVisualStyleBackColor = true;
			// 
			// comboBox_DataUtils
			// 
			this.comboBox_DataUtils.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right)));
			this.comboBox_DataUtils.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.comboBox_DataUtils.FormattingEnabled = true;
			this.comboBox_DataUtils.Location = new System.Drawing.Point(165, 19);
			this.comboBox_DataUtils.Name = "comboBox_DataUtils";
			this.comboBox_DataUtils.Size = new System.Drawing.Size(577, 21);
			this.comboBox_DataUtils.TabIndex = 2;
			// 
			// groupBox_Debugger
			// 
			this.groupBox_Debugger.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.groupBox_Debugger.Controls.Add(this.label_LF2Path);
			this.groupBox_Debugger.Controls.Add(this.textBox_Path);
			this.groupBox_Debugger.Controls.Add(this.button_BlaBlaBlah);
			this.groupBox_Debugger.Location = new System.Drawing.Point(12, 393);
			this.groupBox_Debugger.Name = "groupBox_Debugger";
			this.groupBox_Debugger.Size = new System.Drawing.Size(760, 50);
			this.groupBox_Debugger.TabIndex = 5;
			this.groupBox_Debugger.TabStop = false;
			this.groupBox_Debugger.Text = "Debugger";
			// 
			// button_OK
			// 
			this.button_OK.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
			this.button_OK.Location = new System.Drawing.Point(314, 452);
			this.button_OK.Name = "button_OK";
			this.button_OK.Size = new System.Drawing.Size(75, 23);
			this.button_OK.TabIndex = 60;
			this.button_OK.Text = "OK";
			this.button_OK.UseCompatibleTextRendering = true;
			this.button_OK.UseVisualStyleBackColor = true;
			this.button_OK.Click += new System.EventHandler(this.OK);
			// 
			// button_Cancel
			// 
			this.button_Cancel.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
			this.button_Cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
			this.button_Cancel.Location = new System.Drawing.Point(395, 452);
			this.button_Cancel.Name = "button_Cancel";
			this.button_Cancel.Size = new System.Drawing.Size(75, 23);
			this.button_Cancel.TabIndex = 65;
			this.button_Cancel.Text = "Cancel";
			this.button_Cancel.UseCompatibleTextRendering = true;
			this.button_Cancel.UseVisualStyleBackColor = true;
			this.button_Cancel.Click += new System.EventHandler(this.Cancel);
			// 
			// groupBox_PluginManager
			// 
			this.groupBox_PluginManager.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.groupBox_PluginManager.Controls.Add(this.label_PluginWarning);
			this.groupBox_PluginManager.Controls.Add(this.listView_Plugins);
			this.groupBox_PluginManager.Location = new System.Drawing.Point(12, 222);
			this.groupBox_PluginManager.Name = "groupBox_PluginManager";
			this.groupBox_PluginManager.Size = new System.Drawing.Size(760, 165);
			this.groupBox_PluginManager.TabIndex = 66;
			this.groupBox_PluginManager.TabStop = false;
			this.groupBox_PluginManager.Text = "Plugin Manager";
			// 
			// label_PluginWarning
			// 
			this.label_PluginWarning.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
			this.label_PluginWarning.AutoSize = true;
			this.label_PluginWarning.Location = new System.Drawing.Point(196, 149);
			this.label_PluginWarning.Name = "label_PluginWarning";
			this.label_PluginWarning.Size = new System.Drawing.Size(369, 13);
			this.label_PluginWarning.TabIndex = 1;
			this.label_PluginWarning.Text = "Deactivating plugins that don\'t support unregistering will take effect on restart" +
    "";
			// 
			// listView_Plugins
			// 
			this.listView_Plugins.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.listView_Plugins.CheckBoxes = true;
			this.listView_Plugins.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader_Plugin,
            this.columnHeader_Name,
            this.columnHeader_Author,
            this.columnHeader_IdeVersion,
            this.columnHeader_Description,
            this.columnHeader_Warning,
            this.columnHeader_Web});
			this.listView_Plugins.FullRowSelect = true;
			this.listView_Plugins.HeaderStyle = System.Windows.Forms.ColumnHeaderStyle.Nonclickable;
			this.listView_Plugins.Location = new System.Drawing.Point(6, 19);
			this.listView_Plugins.Name = "listView_Plugins";
			this.listView_Plugins.Size = new System.Drawing.Size(748, 127);
			this.listView_Plugins.TabIndex = 0;
			this.listView_Plugins.UseCompatibleStateImageBehavior = false;
			this.listView_Plugins.View = System.Windows.Forms.View.Details;
			// 
			// columnHeader_Plugin
			// 
			this.columnHeader_Plugin.Text = "Plugin";
			this.columnHeader_Plugin.Width = 140;
			// 
			// columnHeader_Name
			// 
			this.columnHeader_Name.Text = "Name";
			this.columnHeader_Name.Width = 122;
			// 
			// columnHeader_Author
			// 
			this.columnHeader_Author.Text = "Author";
			this.columnHeader_Author.Width = 88;
			// 
			// columnHeader_IdeVersion
			// 
			this.columnHeader_IdeVersion.Text = "IDE Version";
			this.columnHeader_IdeVersion.Width = 68;
			// 
			// columnHeader_Description
			// 
			this.columnHeader_Description.DisplayIndex = 6;
			this.columnHeader_Description.Text = "Description";
			this.columnHeader_Description.Width = 142;
			// 
			// columnHeader_Warning
			// 
			this.columnHeader_Warning.DisplayIndex = 4;
			this.columnHeader_Warning.Text = "Warning";
			this.columnHeader_Warning.Width = 92;
			// 
			// columnHeader_Web
			// 
			this.columnHeader_Web.DisplayIndex = 5;
			this.columnHeader_Web.Text = "Web";
			this.columnHeader_Web.Width = 92;
			// 
			// groupBox_EditorSettings
			// 
			this.groupBox_EditorSettings.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.groupBox_EditorSettings.Controls.Add(this.checkBox_SaveDocStates);
			this.groupBox_EditorSettings.Controls.Add(this.checkBox_AutoComplete);
			this.groupBox_EditorSettings.Location = new System.Drawing.Point(12, 147);
			this.groupBox_EditorSettings.Name = "groupBox_EditorSettings";
			this.groupBox_EditorSettings.Size = new System.Drawing.Size(760, 69);
			this.groupBox_EditorSettings.TabIndex = 67;
			this.groupBox_EditorSettings.TabStop = false;
			this.groupBox_EditorSettings.Text = "Editor Settings";
			// 
			// checkBox_SaveDocStates
			// 
			this.checkBox_SaveDocStates.AutoSize = true;
			this.checkBox_SaveDocStates.Location = new System.Drawing.Point(6, 42);
			this.checkBox_SaveDocStates.Name = "checkBox_SaveDocStates";
			this.checkBox_SaveDocStates.Size = new System.Drawing.Size(174, 17);
			this.checkBox_SaveDocStates.TabIndex = 0;
			this.checkBox_SaveDocStates.Text = "Reload previous files on startup";
			this.checkBox_SaveDocStates.UseVisualStyleBackColor = true;
			// 
			// checkBox_AutoComplete
			// 
			this.checkBox_AutoComplete.AutoSize = true;
			this.checkBox_AutoComplete.Location = new System.Drawing.Point(6, 19);
			this.checkBox_AutoComplete.Name = "checkBox_AutoComplete";
			this.checkBox_AutoComplete.Size = new System.Drawing.Size(193, 17);
			this.checkBox_AutoComplete.TabIndex = 0;
			this.checkBox_AutoComplete.Text = "Trigger auto complete automatically";
			this.checkBox_AutoComplete.UseVisualStyleBackColor = true;
			// 
			// FormSettings
			// 
			this.AcceptButton = this.button_OK;
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.CancelButton = this.button_Cancel;
			this.ClientSize = new System.Drawing.Size(784, 484);
			this.Controls.Add(this.groupBox_EditorSettings);
			this.Controls.Add(this.groupBox_PluginManager);
			this.Controls.Add(this.button_Cancel);
			this.Controls.Add(this.button_OK);
			this.Controls.Add(this.groupBox_Debugger);
			this.Controls.Add(this.groupBox_Cryptology);
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "FormSettings";
			this.ShowIcon = false;
			this.ShowInTaskbar = false;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
			this.Text = "Settings";
			this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FormSettings_FormClosing);
			this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.FormSetFormClosed);
			this.Load += new System.EventHandler(this.FormSetLoad);
			this.groupBox_Cryptology.ResumeLayout(false);
			this.groupBox_Cryptology.PerformLayout();
			this.groupBox_DataUtil.ResumeLayout(false);
			this.groupBox_DataUtil.PerformLayout();
			this.groupBox_Debugger.ResumeLayout(false);
			this.groupBox_Debugger.PerformLayout();
			this.groupBox_PluginManager.ResumeLayout(false);
			this.groupBox_PluginManager.PerformLayout();
			this.groupBox_EditorSettings.ResumeLayout(false);
			this.groupBox_EditorSettings.PerformLayout();
			this.ResumeLayout(false);

		}

		public System.Windows.Forms.RadioButton radioButton_External;
		public System.Windows.Forms.RadioButton radioButton_Default;
		public System.Windows.Forms.Button button_BlaBlaBlah;
		public System.Windows.Forms.Button button_OK;
		public System.Windows.Forms.Button button_Cancel;
		public System.Windows.Forms.GroupBox groupBox_DataUtil;
		public System.Windows.Forms.ComboBox comboBox_DataUtils;
		public System.Windows.Forms.GroupBox groupBox_Cryptology;
		public System.Windows.Forms.GroupBox groupBox_Debugger;
		public System.Windows.Forms.Label label_LF2Path;
		public System.Windows.Forms.TextBox textBox_Path;
		public System.Windows.Forms.OpenFileDialog openFileDialog;
		public System.Windows.Forms.Label label_DecryptionKey;
		public System.Windows.Forms.TextBox textBox_DecryptionKey;
		public System.Windows.Forms.Label label_EncryptionKey;
		public System.Windows.Forms.TextBox textBox_EncryptionKey;
		private System.Windows.Forms.GroupBox groupBox_PluginManager;
		private System.Windows.Forms.ListView listView_Plugins;
		private System.Windows.Forms.Label label_PluginWarning;
		private System.Windows.Forms.ColumnHeader columnHeader_Plugin;
		private System.Windows.Forms.ColumnHeader columnHeader_Name;
		private System.Windows.Forms.ColumnHeader columnHeader_Author;
		private System.Windows.Forms.ColumnHeader columnHeader_IdeVersion;
		private System.Windows.Forms.ColumnHeader columnHeader_Warning;
		private System.Windows.Forms.ColumnHeader columnHeader_Web;
		private System.Windows.Forms.ColumnHeader columnHeader_Description;
		private System.Windows.Forms.GroupBox groupBox_EditorSettings;
		private System.Windows.Forms.CheckBox checkBox_AutoComplete;
		private System.Windows.Forms.CheckBox checkBox_SaveDocStates;
	}
}
