using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows.Forms;
using Microsoft.VisualBasic.FileIO;

namespace LF2.IDE
{
	public partial class SolutionExplorer : WeifenLuo.WinFormsUI.Docking.DockContent
	{
		public SolutionExplorer(MainForm main)
		{
			mainForm = main;
			InitializeComponent();
			iconListManager = new IconListManager(imageListSmall, imageListLarge);
		}

		MainForm mainForm;
		public Stopwatch stopWatch = new Stopwatch();

		// TODO: Reduce code duplication

		public TreeNode GetFiltered(TreeNode node, string pattern)
		{
			TreeNode result = node.Clone() as TreeNode;
			foreach (TreeNode tn in result.Nodes)
				GetFilteredRef(tn, pattern);
			for (int i = result.Nodes.Count - 1; i >= 0; i--)
				if (result.Nodes[i].Tag is FileInfo && !Regex.IsMatch((result.Nodes[i].Tag as FileInfo).Name, pattern, RegexOptions.CultureInvariant | RegexOptions.IgnoreCase))
					result.Nodes.RemoveAt(i);
			return result;
		}

		void GetFilteredRef(TreeNode node, string pattern)
		{
			foreach (TreeNode tn in node.Nodes)
				GetFilteredRef(tn, pattern);
			for (int i = node.Nodes.Count - 1; i >= 0; i--)
				if (node.Nodes[i].Tag is FileInfo && !Regex.IsMatch((node.Nodes[i].Tag as FileInfo).Name, pattern, RegexOptions.CultureInvariant | RegexOptions.IgnoreCase))
					node.Nodes.RemoveAt(i);
		}

		public string DestinationFolder { get { return Path.GetDirectoryName(Settings.Current.lfPath); } }

		public void PopulateTreeView(string target)
		{
			if (Directory.Exists(target))
			{
				stopWatch.Restart();
				populateTreeView.RunWorkerAsync(new PopulationData(target, filterToolStripComboBox.Text));
			}
		}

		class PopulationData
		{
			public string target, filter;

			public PopulationData(string target, string filter)
			{
				this.target = target;
				this.filter = filter;
			}
		}

		public class FileSystemNode
		{
			public FileSystemInfo fileSystem;
			public List<FileSystemNode> nodes;

			public FileSystemNode(FileSystemInfo fileSystem, IEnumerable<FileSystemNode> nodes = null)
			{
				this.fileSystem = fileSystem;
				if (nodes != null)
					this.nodes.AddRange(nodes);
			}
		}

		void PopulateTreeView_DoWork(object sender, DoWorkEventArgs e)
		{
			var data = (PopulationData)e.Argument;
			DirectoryInfo dir = new DirectoryInfo(data.target);
			var rootNode = new FileSystemNode(dir);
			GetFileSystemTree(dir.GetDirectories(), rootNode, data.filter);
			foreach (FileInfo file in dir.GetFiles(data.filter))
			{
				if (populateTreeView.CancellationPending)
					break;
				var item = new FileSystemNode(file);
				rootNode.nodes.Add(item);
			}
			e.Result = rootNode;
		}

		private void GetFileSystemTree(IEnumerable<DirectoryInfo> subDirs, FileSystemNode nodeToAddTo, string filter)
		{
			DirectoryInfo[] subSubDirs;
			foreach (DirectoryInfo subDir in subDirs)
			{
				if (populateTreeView.CancellationPending)
					return;
				FileSystemNode aNode = new FileSystemNode(subDir);
				aNode.nodes = new List<FileSystemNode>(16);
				subSubDirs = subDir.GetDirectories();
				if (subSubDirs.Length != 0)
				{
					GetFileSystemTree(subSubDirs, aNode, filter);
				}
				if (nodeToAddTo.nodes == null)
				{
					nodeToAddTo.nodes = new List<FileSystemNode>(16);
				}
				nodeToAddTo.nodes.Add(aNode);
				foreach (FileInfo file in subDir.GetFiles(filter))
				{
					if (populateTreeView.CancellationPending)
						return;
					FileSystemNode item = new FileSystemNode(file);
					aNode.nodes.Add(item);
				}
			}
		}

		private void GetFileSystemTree(IEnumerable<DirectoryInfo> subDirs, TreeNode nodeToAddTo, string filter)
		{
			TreeNode aNode;
			DirectoryInfo[] subSubDirs;
			foreach (DirectoryInfo subDir in subDirs)
			{
				if (populateTreeView.CancellationPending)
					return;
				aNode = new TreeNode(subDir.Name, 0, 1);
				aNode.Tag = subDir;
				subSubDirs = subDir.GetDirectories();
				if (subSubDirs.Length != 0)
				{
					GetFileSystemTree(subSubDirs, aNode, filter);
				}
				nodeToAddTo.Nodes.Add(aNode);
				foreach (FileInfo file in subDir.GetFiles(filter))
				{
					if (populateTreeView.CancellationPending)
						return;
					int img = iconListManager.AddFileIcon(file.FullName);
					TreeNode item = new TreeNode(file.Name, img, img);
					item.Tag = file;
					aNode.Nodes.Add(item);
				}
			}
		}

		void GenerateTreeNodes(FileSystemNode fsNode, TreeNode treeNode)
		{
			if (fsNode.nodes == null)
				throw new ArgumentNullException("fsNode.nodes");

			foreach(var fs in fsNode.nodes)
			{
				if (fs.fileSystem is DirectoryInfo)
				{
					DirectoryInfo dir = (DirectoryInfo)fs.fileSystem;
					TreeNode item = new TreeNode(dir.Name, 0, 1);
					item.Tag = dir;
					treeNode.Nodes.Add(item);
					GenerateTreeNodes(fs, item); 
				}
				else if (fs.fileSystem is FileInfo)
				{
					FileInfo file = (FileInfo)fs.fileSystem;
					int img = iconListManager.AddFileIcon(file.FullName);
					TreeNode item = new TreeNode(file.Name, img, img);
					item.Tag = file;
					treeNode.Nodes.Add(item);
				}
			}
		}

		void PopulateTreeView_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
		{
			try
			{
				if (e.Error != null)
					throw e.Error;

				treeView.Nodes.Clear();
				var fsNode = (FileSystemNode)e.Result;
				TreeNode treeNode = new TreeNode(fsNode.fileSystem.Name, 0, 1);
				treeNode.Tag = fsNode.fileSystem;
				GenerateTreeNodes(fsNode, treeNode);
				treeView.Nodes.Add(treeNode);
				treeNode.Expand();
				mainForm.formEventLog.Log("Solution Explorer Refreshed (" + filterToolStripComboBox.Text + "): " + stopWatch.Elapsed, true);
			}
			catch(Exception ex)
			{
				mainForm.formEventLog.Error(ex, "Solution Folder Loading Error");
			}
			finally
			{
				refreshToolStripButton.DisplayStyle = ToolStripItemDisplayStyle.Image;
			}
			stopWatch.Reset();
		}

		void RefreshToolStripButton_Click(object sender, EventArgs e)
		{
			if (populateTreeView.IsBusy)
			{
				populateTreeView.CancelAsync();
				return;
			}

			if (!File.Exists(Settings.Current.lfPath))
			{
				FormSettings fs = new FormSettings(forceCorrectLfPath : true);
				if (fs.ShowDialog(mainForm) != DialogResult.OK)
					return;
			}

			refreshToolStripButton.DisplayStyle = ToolStripItemDisplayStyle.Text;
			PopulateTreeView(DestinationFolder);
			this.Show();
		}

		IconListManager iconListManager;

		void treeViewNode_MouseClick(object sender, TreeNodeMouseClickEventArgs e)
		{
			TreeNode newSelected = e.Node;
			DirectoryInfo nodeDirInfo;
			FileInfo nodeFileInfo;

			if (newSelected.Tag is DirectoryInfo)
			{
				nodeDirInfo = (DirectoryInfo)newSelected.Tag;
				nodeDirInfo.Refresh();
				if (!nodeDirInfo.Exists)
				{
					newSelected.Remove();
					return;
				}

				if (e.Button == MouseButtons.Right)
				{
					treeView.SelectedNode = newSelected;
					dirContextMenuStrip.Show(treeView, e.Location);
				}
			}
			else if (newSelected.Tag is FileInfo)
			{
				nodeFileInfo = (FileInfo)newSelected.Tag;
				nodeFileInfo.Refresh();
				if (!nodeFileInfo.Exists)
				{
					newSelected.Remove();
					return;
				}

				if (e.Button == MouseButtons.Right)
				{
					treeView.SelectedNode = newSelected;
					string ext = nodeFileInfo.Extension.ToLowerInvariant();
					switch (ext)
					{
						case ".dat":
							datContextMenuStrip.Show(treeView, e.Location);
							break;
						case ".txt":
						case ".xml":
							textContextMenuStrip.Show(treeView, e.Location);
							break;
						case ".avi":
							videoContextMenuStrip.Show(treeView, e.Location);
							break;
						case ".wav":
						case ".wma":
							soundContextMenuStrip.Show(treeView, e.Location);
							break;
						case ".bmp":
						case ".dib":
						case ".png":
						case ".jpg":
						case ".jpeg":
						case ".jpe":
						case ".jfif":
						case ".gif":
						case ".emf":
						case ".tif":
						case ".tiff":
						case ".wmf":
							imageContextMenuStrip.Show(treeView, e.Location);
							break;
						default:
							defaultContextMenuStrip.Show(treeView, e.Location);
							break;
					}
				}
			}
		}

		void TreeViewNode_MouseDoubleClick(object sender, TreeNodeMouseClickEventArgs e)
		{
			TreeNode newSelected = e.Node;
			FileInfo nodeFileInfo;
			ProcessStartInfo psi;

			if (newSelected.IsSelected && e.Button == MouseButtons.Left)
			{
				if (newSelected.Tag is FileInfo)
				{
					nodeFileInfo = (FileInfo)newSelected.Tag;
					nodeFileInfo.Refresh();
					if (nodeFileInfo.Exists)
					{
						string ext = nodeFileInfo.Extension.ToLowerInvariant();
						switch (ext)
						{
							case ".dat":
							case ".txt":
							case ".xml":
								mainForm.Open(nodeFileInfo.FullName, true);
								break;
							case ".avi":
								mainForm.media.Show();
								mainForm.media.axWindowsMediaPlayer.URL = nodeFileInfo.FullName;
								mainForm.media.axWindowsMediaPlayer.Ctlcontrols.play();
								break;
							case ".wav":
							case ".wma":
								mainForm.media.axWindowsMediaPlayer.URL = nodeFileInfo.FullName;
								mainForm.media.axWindowsMediaPlayer.Ctlcontrols.play();
								break;
							case ".bmp":
							case ".dib":
							case ".png":
							case ".jpg":
							case ".jpeg":
							case ".jpe":
							case ".jfif":
							case ".gif":
							case ".emf":
							case ".tif":
							case ".tiff":
							case ".wmf":
								Bitmap img = (Bitmap)Image.FromFile(nodeFileInfo.FullName);
								FormSpriteViewer fp = new FormSpriteViewer(img, this);
								fp.Show(mainForm);
								break;
							default:
								try
								{
									psi = new ProcessStartInfo();
									psi.FileName = nodeFileInfo.FullName;
									psi.WorkingDirectory = nodeFileInfo.Directory.FullName;
									Process.Start(psi);
								}
								catch (Exception ex)
								{
									mainForm.formEventLog.Error(ex, "ERROR");
									this.Show();
								}
								break;
						}
					}
					else
					{
						newSelected.Remove();
					}
				}
			}
		}

		void ExpandAllToolStripButton_Click(object sender, EventArgs e)
		{
			treeView.ExpandAll();
		}

		void CollapseAllToolStripButton_Click(object sender, EventArgs e)
		{
			treeView.CollapseAll();
		}

		static readonly char[] illegalChars = ("\\/|:*?\"<>").ToCharArray();

		void TreeView_AfterLabelEdit(object sender, NodeLabelEditEventArgs e)
		{
			try
			{
				if (string.IsNullOrWhiteSpace(e.Label) || e.Label.IndexOfAny(illegalChars) != -1)
				{
					e.CancelEdit = true;
					return;
				}

				TreeNode node = e.Node;
				if (node.Tag is FileInfo)
				{
					FileInfo fi = (FileInfo)node.Tag;
					fi.Refresh();
					string fns = fi.Directory.FullName + "\\" + e.Label;
					if (fi.Exists)
					{
						if (!File.Exists(fns))
						{
							fi.MoveTo(fns);
							FileInfo file = new FileInfo(fns);
							node.Tag = file;
							node.ImageIndex = node.SelectedImageIndex = iconListManager.AddFileIcon(fns);
						}
					}
					else
					{
						node.Remove();
					}
				}
				else if (node.Tag is DirectoryInfo)
				{
					DirectoryInfo di = (DirectoryInfo)node.Tag;
					di.Refresh();
					string fms = di.Parent.FullName + "\\" + e.Label;
					if (di.Exists)
					{
						if(Directory.Exists(fms))
							di.MoveTo(fms);
							DirectoryInfo dir = new DirectoryInfo(fms);
							node.Tag = dir;
							node.Nodes.Clear();
							GetFileSystemTree(dir.GetDirectories(), node, filterToolStripComboBox.Text);
							foreach (FileInfo file in dir.GetFiles(filterToolStripComboBox.Text))
							{
								int img = iconListManager.AddFileIcon(file.FullName);
								TreeNode item = new TreeNode(file.Name, img, img);
								item.Tag = file;
								node.Nodes.Add(item);
							}
					}
					else
					{
						node.Remove();
					}
				}
			}
			catch (Exception ex)
			{
				e.CancelEdit = true;
				mainForm.formEventLog.Log(ex.ToString(), "ERROR", true);
			}
		}

		void BiggerToolStripButton_Click(object sender, EventArgs e)
		{
			treeView.ImageList = biggerToolStripButton.Checked ? imageListLarge : imageListSmall;
			treeView.ItemHeight = biggerToolStripButton.Checked ? 35 : 19;
		}

		void SolutionExplorer_KeyDown(object sender, KeyEventArgs e)
		{

		}

		void TreeView_KeyDown(object sender, KeyEventArgs e)
		{
			TreeNode newSelected = treeView.SelectedNode;
			if (newSelected == null) return;
			FileInfo nodeFileInfo;
			DirectoryInfo nodeDirInfo;
			ProcessStartInfo psi;

			if (newSelected.Tag is FileInfo)
			{
				nodeFileInfo = (FileInfo)newSelected.Tag;
				if (e.KeyCode == Keys.Enter)
				{
					e.Handled = true;
					if (nodeFileInfo.Exists)
					{
						string ext = nodeFileInfo.Extension.ToLowerInvariant();
						switch (ext)
						{
							case ".dat":
							case ".txt":
							case ".xml":
								mainForm.Open(nodeFileInfo.FullName, true);
								break;
							case ".avi":
								mainForm.media.Show();
								mainForm.media.axWindowsMediaPlayer.URL = nodeFileInfo.FullName;
								mainForm.media.axWindowsMediaPlayer.Ctlcontrols.play();
								break;
							case ".wav":
							case ".wma":
								mainForm.media.axWindowsMediaPlayer.URL = nodeFileInfo.FullName;
								mainForm.media.axWindowsMediaPlayer.Ctlcontrols.play();
								break;
							case ".bmp":
							case ".dib":
							case ".png":
							case ".jpg":
							case ".jpeg":
							case ".jpe":
							case ".jfif":
							case ".gif":
							case ".emf":
							case ".tif":
							case ".tiff":
							case ".wmf":
								Bitmap img = (Bitmap)Image.FromFile(nodeFileInfo.FullName);
								FormSpriteViewer fp = new FormSpriteViewer(img, this);
								fp.Show(mainForm);
								break;
							default:
								try
								{
									psi = new ProcessStartInfo();
									psi.FileName = nodeFileInfo.FullName;
									psi.WorkingDirectory = nodeFileInfo.Directory.FullName;
									Process.Start(psi);
								}
								catch (Exception ex)
								{
									mainForm.formEventLog.Error(ex, "ERROR");
									this.Show();
								}
								break;
						}
					}
					else
					{
						newSelected.Remove();
					}
				}
				else if (e.KeyCode == Keys.Delete)
				{
					e.Handled = true;
					//if (MessageBox.Show("Are you sure to delete '" + nodeFileInfo.Name + "' file?", this.Text, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
					{
						bool cancelled = false;
						try
						{
							FileSystem.DeleteFile(nodeFileInfo.FullName, UIOption.AllDialogs, e.Shift ? RecycleOption.DeletePermanently : RecycleOption.SendToRecycleBin, UICancelOption.ThrowException);
						}
						catch (OperationCanceledException)
						{
							cancelled = true;
						}
						if (!cancelled)
							newSelected.Remove();
					}
				}
			}
			else if (newSelected.Tag is DirectoryInfo)
			{
				nodeDirInfo = (DirectoryInfo)newSelected.Tag;
				if (e.KeyCode == Keys.Delete)
				{
					e.Handled = true;
					//if (MessageBox.Show("Are you sure to delete '" + nodeDirInfo.Name + "' directory and it's dependencies?", this.Text, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
					{
						bool cancelled = false;
						try
						{
							FileSystem.DeleteDirectory(nodeDirInfo.FullName, UIOption.AllDialogs, e.Shift ? RecycleOption.DeletePermanently : RecycleOption.SendToRecycleBin, UICancelOption.ThrowException);
						}
						catch (OperationCanceledException)
						{
							cancelled = true;
						}
						if (!cancelled)
							newSelected.Remove();
					}
				}
			}
			this.Show();
		}

		void TreeView_BeforeLabelEdit(object sender, NodeLabelEditEventArgs e)
		{
			if (!e.Node.IsSelected) e.CancelEdit = true;
		}

		void RenameToolStripMenuItem_Click(object sender, EventArgs e)
		{
			treeView.SelectedNode.BeginEdit();
		}

		void EditToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (treeView.SelectedNode.Tag is FileInfo)
			{
				FileInfo fi = (FileInfo)treeView.SelectedNode.Tag;
				mainForm.Open(fi.FullName, true);
			}
		}

		void RunToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (treeView.SelectedNode.Tag is FileInfo)
			{
				FileInfo fi = (FileInfo)treeView.SelectedNode.Tag;
				try
				{
					ProcessStartInfo psi = new ProcessStartInfo();
					psi.FileName = fi.FullName;
					psi.WorkingDirectory = fi.Directory.FullName;
					Process.Start(psi);
				}
				catch (Exception ex)
				{
					mainForm.formEventLog.Error(ex, "ERROR");
					this.Show();
				}
			}
		}

		void DeleteToolStripMenuItemClick(object sender, EventArgs e)
		{
			if (treeView.SelectedNode.Tag is FileInfo)
			{
				FileInfo fi = (FileInfo)treeView.SelectedNode.Tag;
				//if (MessageBox.Show("Are you sure to delete '" + fi.Name + "' file?", this.Text, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
				{
					bool cancelled = false;
					try
					{
						FileSystem.DeleteFile(fi.FullName, UIOption.AllDialogs, RecycleOption.SendToRecycleBin, UICancelOption.ThrowException);
					}
					catch (OperationCanceledException)
					{
						cancelled = true;
					}
					if (!cancelled)
						treeView.SelectedNode.Remove();
				}
			}
		}

		void CopyToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (treeView.SelectedNode.Tag is FileInfo)
			{
				FileInfo fi = (FileInfo)treeView.SelectedNode.Tag;
				StringCollection files = new StringCollection();
				files.Add(fi.FullName);
				Clipboard.SetFileDropList(files);
			}
		}

		void ExpandChildNodesToolStripMenuItem_Click(object sender, EventArgs e)
		{
			treeView.SelectedNode.ExpandAll();
		}

		void CollapseChildNodesToolStripMenuItem_Click(object sender, EventArgs e)
		{
			treeView.SelectedNode.Collapse(false);
		}

		void CreateNewFileToolStripMenuItem_Click(object sender, EventArgs e)
		{
			TreeNode selected = treeView.SelectedNode;
			if (selected.Tag is DirectoryInfo)
			{
				DirectoryInfo di = (DirectoryInfo)selected.Tag;
				di.Refresh();
				FileInfo[] fia = di.GetFiles();
				int j = 0;
				for (int i = 0; i < fia.Length; i++)
				{
					if (fia[i].Name == "New File" + (j == 0 ? "" : " " + j)) j++;
				}
				string file = "New File" + (j == 0 ? "" : " " + j), path = di.FullName + "\\" + file;
				TreeNode node = new TreeNode(file, 2, 2);
				if (File.Exists(path))
				{
					MessageBox.Show("What's going on here?!!", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
				}
				else
				{
					File.Create(path);
					node.Tag = new FileInfo(path);
					selected.Nodes.Add(node);
					selected.Expand();
					treeView.SelectedNode = node;
					node.BeginEdit();
				}
			}
		}

		void CreateNewDirectoryToolStripMenuItem_Click(object sender, EventArgs e)
		{
			TreeNode selected = treeView.SelectedNode;
			if (selected.Tag is DirectoryInfo)
			{
				DirectoryInfo di = (DirectoryInfo)selected.Tag;
				di.Refresh();
				DirectoryInfo[] dia = di.GetDirectories();
				int j = 0;
				for (int i = 0; i < dia.Length; i++)
				{
					if (dia[i].Name == "New Directory" + (j == 0 ? "" : " " + j)) j++;
				}
				string dir = "New Directory" + (j == 0 ? "" : " " + j), path = di.FullName + "\\" + dir;
				TreeNode node = new TreeNode(dir, 0, 1);
				if (Directory.Exists(path))
				{
					MessageBox.Show("What's going on here?!!", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
				}
				else
				{
					Directory.CreateDirectory(path);
					node.Tag = new DirectoryInfo(path);
					selected.Nodes.Insert(0, node);
					selected.Expand();
					treeView.SelectedNode = node;
					node.BeginEdit();
				}
			}
		}

		void RenameToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			treeView.SelectedNode.BeginEdit();
		}

		void DeleteToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			if (treeView.SelectedNode.Tag is DirectoryInfo)
			{
				DirectoryInfo di = (DirectoryInfo)treeView.SelectedNode.Tag;
				//if (MessageBox.Show("Are you sure to delete '" + di.Name + "' directory and it's dependencies?", this.Text, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
				{
					bool cancelled = false;
					try
					{
						FileSystem.DeleteDirectory(di.FullName, UIOption.AllDialogs, RecycleOption.SendToRecycleBin, UICancelOption.ThrowException);
					}
					catch (OperationCanceledException)
					{
						cancelled = true;
					}
					if(!cancelled)
						treeView.SelectedNode.Remove();
				}
			}
		}

		void CopyToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			if (treeView.SelectedNode.Tag is DirectoryInfo)
			{
				DirectoryInfo di = (DirectoryInfo)treeView.SelectedNode.Tag;
				StringCollection files = new StringCollection();
				files.Add(di.FullName);
				Clipboard.SetFileDropList(files);
			}
		}

		void MultiSelectToolStripButton_CheckedChanged(object sender, EventArgs e)
		{
			treeView.CheckBoxes = multiToolStripDropDownButton.Enabled = multiSelectToolStripButton.Checked;
		}

		void EditAllFilesToolStripMenuItem_Click(object sender, EventArgs e)
		{
			foreach (TreeNode node in treeView.Nodes)
			{
				if (node.Nodes.Count > 0)
					EditAllFiles(node.Nodes);

				if (node.Checked && node.Tag is FileInfo)
				{
					FileInfo nodeFileInfo = (FileInfo)node.Tag;
					nodeFileInfo.Refresh();
					if (nodeFileInfo.Exists)
						mainForm.Open(nodeFileInfo.FullName, true);
					else
						node.Remove();
				}
			}
		}

		void EditAllFiles(TreeNodeCollection nodes)
		{
			foreach (TreeNode node in nodes)
			{
				if (node.Nodes.Count > 0)
				{
					EditAllFiles(node.Nodes);
				}
				if (node.Checked && node.Tag is FileInfo)
				{
					FileInfo nodeFileInfo = (FileInfo)node.Tag;
					nodeFileInfo.Refresh();
					if (nodeFileInfo.Exists)
					{
						mainForm.Open(nodeFileInfo.FullName, true);
					}
					else
					{
						node.Remove();
					}
				}
			}
		}

		void RunAllFilesToolStripMenuItem_Click(object sender, EventArgs e)
		{
			foreach (TreeNode node in treeView.Nodes)
			{
				if (node.Nodes.Count > 0)
				{
					RunAllFiles(node.Nodes);
				}
				if (node.Checked && node.Tag is FileInfo)
				{
					FileInfo nodeFileInfo = (FileInfo)node.Tag;
					nodeFileInfo.Refresh();
					if (nodeFileInfo.Exists)
					{
						try
						{
							ProcessStartInfo psi = new ProcessStartInfo();
							psi.FileName = nodeFileInfo.FullName;
							psi.WorkingDirectory = nodeFileInfo.Directory.FullName;
							Process.Start(psi);
						}
						catch (Exception ex)
						{
							mainForm.formEventLog.Error(ex, "ERROR");
							this.Show();
						}
					}
					else
					{
						node.Remove();
					}
				}
			}
		}

		void RunAllFiles(TreeNodeCollection nodes)
		{
			foreach (TreeNode node in nodes)
			{
				if (node.Nodes.Count > 0)
				{
					RunAllFiles(node.Nodes);
				}
				if (node.Checked && node.Tag is FileInfo)
				{
					FileInfo nodeFileInfo = (FileInfo)node.Tag;
					nodeFileInfo.Refresh();
					if (nodeFileInfo.Exists)
					{
						try
						{
							ProcessStartInfo psi = new ProcessStartInfo();
							psi.FileName = nodeFileInfo.FullName;
							psi.WorkingDirectory = nodeFileInfo.Directory.FullName;
							Process.Start(psi);
						}
						catch (Exception ex)
						{
							mainForm.formEventLog.Error(ex, "ERROR");
							this.Show();
						}
					}
					else
					{
						node.Remove();
					}
				}
			}
		}

		void ClearSelectionsToolStripMenuItem_Click(object sender, EventArgs e)
		{
			foreach (TreeNode node in treeView.Nodes)
			{
				if (node.Nodes.Count > 0)
				{
					ClearSelections(node.Nodes);
				}
				if (node.Checked)
				{
					node.Checked = false;
				}
			}
		}

		void ClearSelections(TreeNodeCollection nodes)
		{
			foreach (TreeNode node in nodes)
			{
				if (node.Nodes.Count > 0)
				{
					ClearSelections(node.Nodes);
				}
				if (node.Checked)
				{
					node.Checked = false;
				}
			}
		}

		void DeleteAllToolStripMenuItem_Click(object sender, EventArgs e)
		{
			List<TreeNode> deleting = new List<TreeNode>(0);
			foreach (TreeNode node in treeView.Nodes)
			{
				if (!node.Checked && node.Nodes.Count > 0)
				{
					AddForDeletionRecursive(node.Nodes, deleting);
				}
				if (node.Checked)
				{
					deleting.Add(node);
				}
			}
			if (deleting.Count > 0)
			{
				string deleteList = "";
				foreach (TreeNode tnt in deleting)
				{
					if (tnt.Tag is FileInfo)
					{
						FileInfo fi = (FileInfo)tnt.Tag;
						fi.Refresh();
						deleteList += "File: '" + fi.FullName + "'\r\n";
					}
					else if (tnt.Tag is DirectoryInfo)
					{
						DirectoryInfo di = (DirectoryInfo)tnt.Tag;
						di.Refresh();
						deleteList += "Directory: '" + di.FullName + "'\r\n";
					}
				}
				if (MessageBox.Show(this, "Are sure to delete these files, directories and their dependencies?\r\n" + deleteList, this.Text, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
				{
					backgroundDeleter.RunWorkerAsync(deleting);
					this.Show();
				}
				else
					this.Show();
			}
		}

		void AddForDeletionRecursive(TreeNodeCollection nodes, List<TreeNode> deleting)
		{
			foreach (TreeNode node in nodes)
			{
				if (!node.Checked && node.Nodes.Count > 0)
				{
					AddForDeletionRecursive(node.Nodes, deleting);
				}
				if (node.Checked)
				{
					deleting.Add(node);
				}
			}
		}

		void FilterToolStripLabel_Click(object sender, EventArgs e)
		{
			refreshToolStripButton.PerformClick();
		}

		void BackgroundDeleter_DoWork(object sender, DoWorkEventArgs e)
		{
			List<TreeNode> deleting = (List<TreeNode>)e.Argument;
			e.Result = deleting;
			foreach (TreeNode node in deleting)
			{
				if (backgroundDeleter.CancellationPending)
				{
					e.Cancel = true;
					return;
				}
				if (node.Tag is FileInfo)
				{
					FileInfo fi = (FileInfo)node.Tag;
					fi.Refresh();
					if (fi.Exists)
					{
						fi.Delete();
					}
				}
				else if (node.Tag is DirectoryInfo)
				{
					DirectoryInfo di = (DirectoryInfo)node.Tag;
					di.Refresh();
					if (di.Exists)
					{
						di.Delete(true);
					}
				}
			}
		}

		void BackgroundDeleter_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
		{
			if (e.Result != null)
			{
				var deleting = (List<TreeNode>)e.Result;
				foreach (var node in deleting)
				{
					if (node.Tag is FileSystemInfo)
					{
						FileSystemInfo fsi = (FileSystemInfo)node.Tag;
						fsi.Refresh();
						if (!fsi.Exists)
							node.Remove();
					}
				}
			}
			if (e.Error != null)
			{
				mainForm.formEventLog.Error(e.Error, "Async File Deletion Error");
			}
		}

		void SelectChildNodesToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (treeView.SelectedNode.Tag is DirectoryInfo)
			{
				TreeNode selected = treeView.SelectedNode;
				foreach (TreeNode node in selected.Nodes)
				{
					node.Checked = true;
				}
			}
		}

		void SelectFilesToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (treeView.SelectedNode.Tag is DirectoryInfo)
			{
				TreeNode selected = treeView.SelectedNode;
				foreach (TreeNode node in selected.Nodes)
				{
					if (node.Tag is FileInfo)
						node.Checked = true;
					else
						node.Checked = false;
				}
			}
		}

		void SelectDirectoriesToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (treeView.SelectedNode.Tag is DirectoryInfo)
			{
				TreeNode selected = treeView.SelectedNode;
				foreach (TreeNode node in selected.Nodes)
				{
					if (node.Tag is DirectoryInfo)
						node.Checked = true;
					else
						node.Checked = false;
				}
			}
		}

		void PreviewToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (treeView.SelectedNode.Tag is FileInfo)
			{
				FileInfo fi = (FileInfo)treeView.SelectedNode.Tag;
				FormSpriteViewer fp = new FormSpriteViewer(Image.FromFile(fi.FullName), this);
				fp.Show(mainForm);
			}
		}

		void CopyAllToolStripMenuItem_Click(object sender, EventArgs e)
		{
			StringCollection sc = new StringCollection();
			foreach (TreeNode node in treeView.Nodes)
			{
				if (node.Nodes.Count > 0)
				{
					CopyAll(node.Nodes, sc);
				}
				if (node.Checked)
				{
					if (node.Tag is FileInfo)
					{
						FileInfo fi = (FileInfo)node.Tag;
						fi.Refresh();
						if (fi.Exists)
						{
							sc.Add(fi.FullName);
						}
						else
							node.Remove();
					}
					else if (node.Tag is DirectoryInfo)
					{
						DirectoryInfo di = (DirectoryInfo)node.Tag;
						di.Refresh();
						if (di.Exists)
						{
							sc.Add(di.FullName);
						}
						else
							node.Remove();
					}
				}
			}
			Clipboard.SetFileDropList(sc);
		}

		void CopyAll(TreeNodeCollection nodes, StringCollection sc)
		{
			foreach (TreeNode node in nodes)
			{
				if (node.Nodes.Count > 0)
				{
					CopyAll(node.Nodes, sc);
				}
				if (node.Checked)
				{
					if (node.Tag is FileInfo)
					{
						FileInfo fi = (FileInfo)node.Tag;
						fi.Refresh();
						if (fi.Exists)
						{
							sc.Add(fi.FullName);
						}
						else
							node.Remove();
					}
					else if (node.Tag is DirectoryInfo)
					{
						DirectoryInfo di = (DirectoryInfo)node.Tag;
						di.Refresh();
						if (di.Exists)
						{
							sc.Add(di.FullName);
						}
						else
							node.Remove();
					}
				}
			}
		}

		void OpenInExplorerToolStripMenuItem_Click(object sender, EventArgs e)
		{
			TreeNode node = treeView.SelectedNode;
			DirectoryInfo di = (DirectoryInfo)node.Tag;
			ProcessStartInfo psi = new ProcessStartInfo(di.FullName);
			Process.Start(psi);
		}

		void OpenFileInExplorerToolStripMenuItem_Click(object sender, EventArgs e)
		{
			TreeNode node = treeView.SelectedNode;
			FileInfo di = (FileInfo)node.Tag;
			ProcessStartInfo psi = new ProcessStartInfo("explorer", "/select, " + di.FullName);
			Process.Start(psi);
		}

		void EditWithoutDecryptionToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (treeView.SelectedNode.Tag is FileInfo)
			{
				FileInfo fi = (FileInfo)treeView.SelectedNode.Tag;
				DocumentForm doc = new DocumentForm(mainForm);
				doc.Scintilla.AppendText(File.ReadAllText(fi.FullName, Encoding.Default));
				doc.Scintilla.UndoRedo.EmptyUndoBuffer();
				doc.Scintilla.Modified = false;
				doc.TabText = Path.GetFileNameWithoutExtension(fi.Name);
				doc.FilePath = fi.Directory.FullName + "\\" + Path.GetFileNameWithoutExtension(fi.Name);
				doc.Show(mainForm.DockPanel);
			}
		}

		void PlayToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			TreeNode node = treeView.SelectedNode;
			FileInfo nodeFileInfo;

			if (node.Tag is FileInfo)
			{
				nodeFileInfo = (FileInfo)node.Tag;
				nodeFileInfo.Refresh();
				if (nodeFileInfo.Exists)
				{
					mainForm.media.axWindowsMediaPlayer.URL = nodeFileInfo.FullName;
					mainForm.media.axWindowsMediaPlayer.Ctlcontrols.play();
				}
				else
				{
					node.Remove();
				}
			}
		}

		void PlayToolStripMenuItem_Click(object sender, EventArgs e)
		{
			TreeNode node = treeView.SelectedNode;
			FileInfo nodeFileInfo;

			if (node.Tag is FileInfo)
			{
				nodeFileInfo = (FileInfo)node.Tag;
				nodeFileInfo.Refresh();
				if (nodeFileInfo.Exists)
				{
					mainForm.media.Show();
					mainForm.media.axWindowsMediaPlayer.URL = nodeFileInfo.FullName;
					mainForm.media.axWindowsMediaPlayer.Ctlcontrols.play();
				}
				else
				{
					node.Remove();
				}
			}
		}

		void MakeTransparentToolStripMenuItem_Click(object sender, EventArgs e)
		{
			TreeNode node = treeView.SelectedNode;
			FileInfo nodeFileInfo;

			if (node.Tag is FileInfo)
			{
				nodeFileInfo = (FileInfo)node.Tag;
				nodeFileInfo.Refresh();
				if (nodeFileInfo.Exists)
				{
					FormTransparencyTools ft = new FormTransparencyTools(nodeFileInfo.FullName, mainForm);
					ft.Show(mainForm);
				}
				else
				{
					node.Remove();
				}
			}
		}

		void ChangePixelFormatToolStripMenuItem_Click(object sender, EventArgs e)
		{
			TreeNode node = treeView.SelectedNode;
			FileInfo nodeFileInfo;

			if (node.Tag is FileInfo)
			{
				nodeFileInfo = (FileInfo)node.Tag;
				nodeFileInfo.Refresh();
				if (nodeFileInfo.Exists)
				{
					FormImageSaver ft = new FormImageSaver(nodeFileInfo.FullName, true, mainForm);
					ft.ShowDialog(mainForm);
					this.Show();
				}
				else
				{
					node.Remove();
				}
			}
		}

		PreviewForm preview = new PreviewForm();
		TreeNode lastPreview = null;

		void TreeViewNode_MouseHover(object sender, TreeNodeMouseHoverEventArgs e)
		{
			TreeNode node = e.Node;
			Point p = treeView.PointToScreen(new Point(-160, 0));
			p.Y = Cursor.Position.Y - 75;
			if (node == lastPreview)
			{
				preview.Set(p, 1000);
				return;
			}
			lastPreview = node;
			if (node.Tag is FileInfo)
			{
				FileInfo nodeFileInfo = (FileInfo)node.Tag;
				nodeFileInfo.Refresh();
				if (nodeFileInfo.Exists)
				{
					if (nodeFileInfo.Length < 10000000L)
					{
						string ext = nodeFileInfo.Extension.ToLowerInvariant();
						switch (ext)
						{
							case ".bmp":
							case ".dib":
							case ".png":
							case ".jpg":
							case ".jpeg":
							case ".jpe":
							case ".jfif":
							case ".gif":
							case ".emf":
							case ".tif":
							case ".tiff":
							case ".wmf":
								Image img = Image.FromFile(nodeFileInfo.FullName);
								if (preview.IsDisposed) preview = new PreviewForm();
								preview.Set(img, p, 1500);
								if (!preview.Visible) preview.Show(this);
								break;
						}
					}
				}
				else node.Remove();
			}
		}

		void MakeMirroredToolStripMenuItem_Click(object sender, EventArgs e)
		{
			TreeNode node = treeView.SelectedNode;
			FileInfo nodeFileInfo;

			if (node.Tag is FileInfo)
			{
				nodeFileInfo = (FileInfo)node.Tag;
				nodeFileInfo.Refresh();
				if (nodeFileInfo.Exists)
				{
					FormSpriteMirrorer ft = new FormSpriteMirrorer(nodeFileInfo.FullName, mainForm);
					ft.ShowDialog(mainForm);
					this.Show();
				}
				else
				{
					node.Remove();
				}
			}
		}

		void SolutionExplorer_FormClosed(object sender, FormClosedEventArgs e)
		{
			stopWatch.Reset();
		}

		private void dirContextMenuStrip_Opening(object sender, CancelEventArgs e)
		{
			pasteToolStripMenuItem.Enabled = Clipboard.ContainsFileDropList();
		}

		private void filterToolStripComboBox_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.KeyData == Keys.Enter)
			{
				refreshToolStripButton.PerformClick();
				e.Handled = true;
				e.SuppressKeyPress = true;
			}
		}

		private void pasteToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (treeView.SelectedNode.Tag is DirectoryInfo)
			{
				try
				{
					DirectoryInfo dir = (DirectoryInfo)treeView.SelectedNode.Tag;
					StringCollection files = Clipboard.GetFileDropList();
					if (files != null)
					{
						foreach (string fso in files)
						{
							if (File.Exists(fso))
							{
								FileSystem.CopyFile(fso, dir.FullName + "\\" + Path.GetFileName(fso), UIOption.AllDialogs, UICancelOption.ThrowException); //TODO: fix unhandled exception
							}
							else if (Directory.Exists(fso) && !(string.Equals(fso, dir.FullName.Substring(0, fso.Length), StringComparison.InvariantCultureIgnoreCase)))
							{
								FileSystem.CopyDirectory(fso, dir.FullName + "\\" + Path.GetFileName(fso), UIOption.AllDialogs, UICancelOption.ThrowException);
							}
						}
						treeView.SelectedNode.Nodes.Clear();
						GetFileSystemTree(dir.EnumerateDirectories(), treeView.SelectedNode, filterToolStripComboBox.Text);
						foreach (FileInfo file in dir.EnumerateFiles(filterToolStripComboBox.Text))
						{
							int img = iconListManager.AddFileIcon(file.FullName);
							TreeNode item = new TreeNode(file.Name, img, img);
							item.Tag = file;
							treeView.SelectedNode.Nodes.Add(item);
						}
						treeView.Refresh();
					}
				}
				catch (OperationCanceledException) { }
			}
		}
	}
}
