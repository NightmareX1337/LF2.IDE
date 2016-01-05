using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LF2.IDE
{
	public partial class FormIDL : Form
	{
		public FormIDL(MainForm main)
		{
			mainForm = main;
			InitializeComponent();
		}

		MainForm mainForm;

		#region WndProc
		//enum WM
		//{
		//	MOUSEMOVE	= 512,
		//	LBUTTONDOWN	= 513,
		//	LBUTTONUP	= 514
		//}

		//protected override void WndProc(ref Message m)
		//{
		//	if (loaded && (WM)m.Msg == WM.MOUSEMOVE)
		//	{
		//		richTextBox1.AppendText("\r\n" + (WM)m.Msg + ": " + (((int)m.LParam) << 16 >> 16) + " " + (((int)m.LParam) >> 16) + " " + m.LParam + " " + m.WParam);
		//		richTextBox1.Select(richTextBox1.TextLength, 0);
		//		richTextBox1.ScrollToCaret();
		//	}
		//	base.WndProc(ref m);
		//}
		#endregion WndProc

		[DllImport("user32.dll", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Winapi)]
		public static extern bool SetForegroundWindow(HandleRef window);

		private void buttonLoad_Click(object sender, EventArgs e)
		{
			if (mainForm.ActiveDocument == null)
			{
				label_Result.Text = "No active document";
				return;
			}
			if (mainForm.ActiveDocument.DocumentType != DocumentType.BgData && mainForm.ActiveDocument.DocumentType != DocumentType.ObjectData && mainForm.ActiveDocument.DocumentType != DocumentType.StageData)
			{
				label_Result.Text = "Unsupported document type: " + mainForm.ActiveDocument.DocumentType;
				return;
			}
			int result = int.MinValue;
			try
			{
				if (comboBox_Process.SelectedIndex < 0 || 
					(comboBox_DataType.SelectedIndex < 0) || 
					(comboBox_DataType.SelectedIndex == 0 && (comboBox_ObjId.SelectedIndex < 0 || comboBox_ObjType.SelectedIndex < 0)) || 
					(comboBox_DataType.SelectedIndex == 2 && (comboBox_BgId.SelectedIndex < 0)))
					return;

				string dat = mainForm.ActiveDocument.Scintilla.Text;
				
				Process p = procs[comboBox_Process.SelectedIndex];
				if(p.HasExited)
				{
					RefreshProcessList();
					return;
				}
				p = Process.GetProcessById(p.Id); // refresh for most up-to-date thread list

				int[] threads = new int[p.Threads.Count];
				for (int i = 0; i < threads.Length; i++)
				{
					threads[i] = p.Threads[i].Id;
				}
				
				int suspendResult;
				var suspend = (int[])threads.Clone();
				var resume = (int[])threads.Clone();
				try
				{
					if ((suspendResult = IDL.SuspendThreadList(suspend, threads.Length, 1)) != 0)
					{
						throw new ApplicationException("Process suspending failed: " + p.Id);
					}
					result =  IDL.InstantLoad(dat, dat.Length,
						 p.Id,
						 (DataType)comboBox_DataType.SelectedIndex,
						 comboBox_DataType.SelectedIndex == 0 ? comboBox_ObjId.SelectedIndex :
						 comboBox_DataType.SelectedIndex == 1 ? (-1) : // not to be used
						 comboBox_BgId.SelectedIndex,
						 comboBox_DataType.SelectedIndex == 0 ? (ObjectType)comboBox_ObjType.SelectedIndex : ObjectType.Invalid,
						 this.Handle);
				}
				finally
				{
					IDL.SuspendThreadList(resume, threads.Length, 0);
					if (result == 0)
					{
						label_Result.Text = "Successful";
						SetForegroundWindow(new HandleRef(p, p.MainWindowHandle));
						this.Close();
					}
					else
					{
						label_Result.Text = "Error code: " + result;
					}
				}
			}
			catch(DllNotFoundException)
			{
				MessageBox.Show("'IDL.dll' could not be found, it's required to make instant data loading possible.\r\n" + 
					"If you think it supposed to come with the download please contact me (the developer) at LFE Forums (Help/Web...) or report a bug at GitHub:\r\n" + 
					Program.githubPage, 
					Program.Title, MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
			catch(ApplicationException ex)
			{
				MessageBox.Show(ex.ToString(), "Instant Data Loading Error");
			}
			catch (Exception ex)
			{
				mainForm.formEventLog.Error(ex, "Instant Data Loading Error");
			}
		}

		private void buttonCancel_Click(object sender, EventArgs e)
		{
			this.Close();
		}

		private void RefreshProcessList()
		{
			procs = Process.GetProcessesByName("lf2");
			comboBox_Process.Items.Clear();
			foreach (Process proc in procs)
				comboBox_Process.Items.Add("[" + proc.Id + "] " + proc.MainModule.FileName);

			if (comboBox_Process.Items.Count == 1)
				comboBox_Process.SelectedIndex = 0;
			else if (comboBox_Process.Items.Count > 1)
				comboBox_Process.SelectedIndex = -1;
		}

		Process[] procs;
		public static DataTxt dataTxt;
		public static DateTime dataTxtLastModification = DateTime.MinValue;

		private void FormIDL_Load(object sender, EventArgs e)
		{
			FreshLoad();
		}

		public void FreshLoad()
		{
			DocumentForm doc = mainForm.ActiveDocument;
			if(doc == null)
			{
				return;
			}
			comboBox_ObjId.SelectedIndex = -1;
			comboBox_DataType.SelectedIndex = -1;
			comboBox_ObjType.SelectedIndex = -1;
			comboBox_BgId.SelectedIndex = -1;
			label_Result.Text = "";

			RefreshProcessList();
			
			switch (doc.DocumentType)
			{
				case DocumentType.ObjectData:
					comboBox_DataType.SelectedIndex = 0;
					comboBox_DataType.Enabled = true;
					break;
				case DocumentType.StageData:
					comboBox_DataType.SelectedIndex = 1;
					comboBox_DataType.Enabled = true;
					break;
				case DocumentType.BgData:
					comboBox_DataType.SelectedIndex = 2;
					comboBox_DataType.Enabled = true;
					break;
				default:
					label_Result.Text = "Unsupported document type: " + doc.DocumentType.ToString();
					comboBox_ObjId.Enabled = false;
					comboBox_DataType.Enabled = false;
					comboBox_ObjType.Enabled = false;
					comboBox_BgId.Enabled = false;
					break;
			}
			string lfDir = Path.GetDirectoryName(Settings.Current.lfPath), dataTxtFile = lfDir + "\\data\\data.txt";
			if (!File.Exists(dataTxtFile))
			{
				MessageBox.Show("'data.txt' could not found. Make sure you set 'LF2 Path' correct in the settings menu.", Program.Title);
				this.Close();
				return;
			}
			DateTime modification = File.GetLastWriteTime(dataTxtFile);
			if (modification > dataTxtLastModification)
			{
				comboBox_BgId.Items.Clear();
				comboBox_ObjId.Items.Clear();
				
				dataTxtFile = File.ReadAllText(dataTxtFile);
				if (IDL.ReadDataTxt(dataTxtFile, dataTxtFile.Length, ref dataTxt.objects, ref dataTxt.objCount, ref dataTxt.backgrounds, ref dataTxt.bgCount, this.Handle) != 0)
					return;

				dataTxtLastModification = modification;
				
				for (int i = 0; i < dataTxt.objCount; i++)
					comboBox_ObjId.Items.Add(string.Format("id: {0}  type: {1}  file: {2}", dataTxt.objects[i].id, (byte)dataTxt.objects[i].type, dataTxt.objects[i].file));

				for (int i = 0; i < dataTxt.bgCount; i++)
					comboBox_BgId.Items.Add(string.Format("id: {0}  file: {1}", dataTxt.backgrounds[i].id, dataTxt.backgrounds[i].file));
			}

			for(int i = 0; i < dataTxt.objCount; i++)
			{
				if (doc.FilePath != null ? doc.FilePath.EndsWith(dataTxt.objects[i].file, StringComparison.InvariantCultureIgnoreCase) : doc.TabText.EndsWith(dataTxt.objects[i].file, StringComparison.InvariantCultureIgnoreCase))
				{
					comboBox_ObjId.SelectedIndex = i;
					comboBox_ObjType.SelectedIndex = (int)dataTxt.objects[i].type;
					comboBox_DataType.SelectedIndex = 0;
					break;
				}
			}

			for (int i = 0; i < dataTxt.bgCount; i++)
			{
				if (doc.FilePath != null ? doc.FilePath.EndsWith(dataTxt.backgrounds[i].file, StringComparison.InvariantCultureIgnoreCase) : doc.TabText.EndsWith(dataTxt.backgrounds[i].file, StringComparison.InvariantCultureIgnoreCase))
				{
					comboBox_BgId.SelectedIndex = i;
					comboBox_DataType.SelectedIndex = 2;
					break;
				}
			}
		}

		private void comboBox_DataType_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (comboBox_DataType.SelectedIndex == 0)
			{
				comboBox_ObjType.Enabled = true;
				comboBox_ObjId.Enabled = true;
				comboBox_BgId.Enabled = false;
			}
			else if (comboBox_DataType.SelectedIndex == 1)
			{
				comboBox_ObjType.Enabled = false;
				comboBox_ObjId.Enabled = false;
				comboBox_BgId.Enabled = false;
			}
			else if (comboBox_DataType.SelectedIndex == 2)
			{
				comboBox_ObjType.Enabled = false;
				comboBox_ObjId.Enabled = false;
				comboBox_BgId.Enabled = true;
			}
		}

		private void button_Refresh_Click(object sender, EventArgs e)
		{
			RefreshProcessList();
		}
	}
}
