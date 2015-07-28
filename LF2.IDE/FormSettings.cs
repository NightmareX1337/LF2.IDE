using System.Security.Principal;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;
using Microsoft.Win32;
using System.Threading;

namespace LF2.IDE
{
	public partial class FormSettings : Form
	{
		public FormSettings()
		{
			InitializeComponent();
		}

		void FormSetLoad(object sender, EventArgs e)
		{
			textBox_EncryptionKey.Text = Settings.Current.encryptionKey;
			textBox_DecryptionKey.Text = Settings.Current.decryptionKey;
			textBox_Path.Text = (string.IsNullOrEmpty(Settings.Current.lfPath) ? "lf2.exe" : Settings.Current.lfPath);
			radioButton_External.Checked = !(radioButton_Default.Checked = string.IsNullOrEmpty(Settings.Current.dataUtil));
			checkBox_AutoComplete.Checked = Settings.Current.autoComplete;
			checkBox_SaveDocStates.Checked = Settings.Current.saveDocStates;

			if (UtilManager.UtilLock)
			{
				this.Dispose();
				return;
			}
			foreach (string key in UtilManager.Utils.PluginKeys)
				comboBox_DataUtils.Items.Add(key);
			comboBox_DataUtils.SelectedItem = Settings.Current.dataUtil;

			if (MainForm.PluginLock)
			{
				this.Dispose();
				return;
			}
			foreach (string plug in MainForm.Plugins.PluginKeys)
			{
				ListViewItem lvi = new ListViewItem(new string[]
				{
					plug,
					MainForm.Plugins[plug].Name == null ? "<null>" : MainForm.Plugins[plug].Name,
					MainForm.Plugins[plug].Author == null ? "<null>" : MainForm.Plugins[plug].Author,
					MainForm.Plugins[plug].IdeVersion == null ? "<null>" : MainForm.Plugins[plug].IdeVersion,
					MainForm.Plugins[plug].Description == null ? "<null>" : MainForm.Plugins[plug].Description,
					MainForm.Plugins[plug].Warning == null ? "<null>" : MainForm.Plugins[plug].Warning,
					MainForm.Plugins[plug].Web == null ? "<null>" : MainForm.Plugins[plug].Web
				});
				if (Settings.Current.activePlugins.Contains(plug))
					lvi.Checked = true;
				listView_Plugins.Items.Add(lvi);
			}

			ActiveControl = textBox_Path;
			textBox_Path.Focus();
		}

		void LookUp(object sender, EventArgs e)
		{
			if (openFileDialog.ShowDialog() == DialogResult.OK)
				textBox_Path.Text = (string)openFileDialog.FileName;
		}

		void OK(object sender, EventArgs e)
		{
			this.DialogResult = DialogResult.OK;
		}

		void Cancel(object sender, EventArgs e)
		{
			this.DialogResult = DialogResult.Cancel;
		}

		void FormSetFormClosed(object sender, FormClosedEventArgs e)
		{
			if (this.DialogResult == DialogResult.OK)
			{
				Settings.Current.encryptionKey = textBox_EncryptionKey.Text;
				Settings.Current.decryptionKey = textBox_DecryptionKey.Text;
				Settings.Current.lfPath = (string.IsNullOrEmpty(textBox_Path.Text) ? "lf2.exe" : textBox_Path.Text);
				Settings.Current.dataUtil = (radioButton_Default.Checked || string.IsNullOrEmpty(comboBox_DataUtils.Text)) ? null : comboBox_DataUtils.Text;
				Settings.Current.autoComplete = checkBox_AutoComplete.Checked;
				Settings.Current.saveDocStates = checkBox_SaveDocStates.Checked;

				foreach(ListViewItem item in listView_Plugins.Items)
				{
					if (Settings.Current.activePlugins.Contains(item.Text) && !item.Checked)
					{
						Settings.Current.activePlugins.Remove(item.Text);
						MainForm.Plugins[item.Text].Unregister();
					}
					else if (!Settings.Current.activePlugins.Contains(item.Text) && item.Checked)
					{
						MainForm.Plugins[item.Text].Register();
						Settings.Current.activePlugins.Add(item.Text);
					}
				}
			}
		}
	}
}
