using System;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace LF2.IDE
{
	public class IconReader
	{
		public enum IconSize
		{
			/// <summary>
			/// 32x32
			/// </summary>
			Large = 0,
			/// <summary>
			/// 16x16
			/// </summary>
			Small = 1
		}

		public static System.Drawing.Icon GetFileIcon(string name, IconSize size, bool linkOverlay)
		{
			Shell32.SHFILEINFO shfi = new Shell32.SHFILEINFO();
			uint flags = Shell32.SHGFI_ICON | Shell32.SHGFI_USEFILEATTRIBUTES;

			if (true == linkOverlay) flags |= Shell32.SHGFI_LINKOVERLAY;

			if (size == IconSize.Small)
				flags |= Shell32.SHGFI_SMALLICON;
			else
				flags |= Shell32.SHGFI_LARGEICON;

			Shell32.SHGetFileInfo(name, Shell32.FILE_ATTRIBUTE_NORMAL, ref shfi, (uint)System.Runtime.InteropServices.Marshal.SizeOf(shfi), flags);

			// Clean-up properly
			System.Drawing.Icon icon = (System.Drawing.Icon)System.Drawing.Icon.FromHandle(shfi.hIcon).Clone();
			User32.DestroyIcon(shfi.hIcon);
			return icon;
		}
	}

	public class Shell32
	{

		public const int MAX_PATH = 256;
		[StructLayout(LayoutKind.Sequential)]
		public struct SHITEMID
		{
			public ushort cb;
			[MarshalAs(UnmanagedType.LPArray)]
			public byte[] abID;
		}

		[StructLayout(LayoutKind.Sequential)]
		public struct ITEMIDLIST
		{
			public SHITEMID mkid;
		}

		[StructLayout(LayoutKind.Sequential)]
		public struct BROWSEINFO
		{
			public IntPtr hwndOwner;
			public IntPtr pidlRoot;
			public IntPtr pszDisplayName;
			[MarshalAs(UnmanagedType.LPTStr)]
			public string lpszTitle;
			public uint ulFlags;
			public IntPtr lpfn;
			public int lParam;
			public IntPtr iImage;
		}

		// Browsing for directory.
		public const uint BIF_RETURNONLYFSDIRS = 0x0001;
		public const uint BIF_DONTGOBELOWDOMAIN = 0x0002;
		public const uint BIF_STATUSTEXT = 0x0004;
		public const uint BIF_RETURNFSANCESTORS = 0x0008;
		public const uint BIF_EDITBOX = 0x0010;
		public const uint BIF_VALIDATE = 0x0020;
		public const uint BIF_NEWDIALOGSTYLE = 0x0040;
		public const uint BIF_USENEWUI = (BIF_NEWDIALOGSTYLE | BIF_EDITBOX);
		public const uint BIF_BROWSEINCLUDEURLS = 0x0080;
		public const uint BIF_BROWSEFORCOMPUTER = 0x1000;
		public const uint BIF_BROWSEFORPRINTER = 0x2000;
		public const uint BIF_BROWSEINCLUDEFILES = 0x4000;
		public const uint BIF_SHAREABLE = 0x8000;

		[StructLayout(LayoutKind.Sequential)]
		public struct SHFILEINFO
		{
			public const int NAMESIZE = 80;
			public IntPtr hIcon;
			public int iIcon;
			public uint dwAttributes;
			[MarshalAs(UnmanagedType.ByValTStr, SizeConst = MAX_PATH)]
			public string szDisplayName;
			[MarshalAs(UnmanagedType.ByValTStr, SizeConst = NAMESIZE)]
			public string szTypeName;
		};

		public const uint SHGFI_ICON = 0x000000100;	 // get icon
		public const uint SHGFI_DISPLAYNAME = 0x000000200;	 // get display name
		public const uint SHGFI_TYPENAME = 0x000000400;	 // get type name
		public const uint SHGFI_ATTRIBUTES = 0x000000800;	 // get attributes
		public const uint SHGFI_ICONLOCATION = 0x000001000;	 // get icon location
		public const uint SHGFI_EXETYPE = 0x000002000;	 // return exe type
		public const uint SHGFI_SYSICONINDEX = 0x000004000;	 // get system icon index
		public const uint SHGFI_LINKOVERLAY = 0x000008000;	 // put a link overlay on icon
		public const uint SHGFI_SELECTED = 0x000010000;	 // show icon in selected state
		public const uint SHGFI_ATTR_SPECIFIED = 0x000020000;	 // get only specified attributes
		public const uint SHGFI_LARGEICON = 0x000000000;	 // get large icon
		public const uint SHGFI_SMALLICON = 0x000000001;	 // get small icon
		public const uint SHGFI_OPENICON = 0x000000002;	 // get open icon
		public const uint SHGFI_SHELLICONSIZE = 0x000000004;	 // get shell size icon
		public const uint SHGFI_PIDL = 0x000000008;	 // pszPath is a pidl
		public const uint SHGFI_USEFILEATTRIBUTES = 0x000000010;	 // use passed dwFileAttribute
		public const uint SHGFI_ADDOVERLAYS = 0x000000020;	 // apply the appropriate overlays
		public const uint SHGFI_OVERLAYINDEX = 0x000000040;	 // Get the index of the overlay

		public const uint FILE_ATTRIBUTE_DIRECTORY = 0x00000010;
		public const uint FILE_ATTRIBUTE_NORMAL = 0x00000080;

		[DllImport("Shell32.dll")]
		public static extern IntPtr SHGetFileInfo(
			string pszPath,
			uint dwFileAttributes,
			ref SHFILEINFO psfi,
			uint cbFileInfo,
			uint uFlags
			);
	}

	/// <summary>
	/// Wraps necessary functions imported from User32.dll. Code courtesy of MSDN Cold Rooster Consulting example.
	/// </summary>
	public class User32
	{
		/// <summary>
		/// Provides access to function required to delete handle. This method is used internally
		/// and is not required to be called separately.
		/// </summary>
		/// <param name="hIcon">Pointer to icon handle.</param>
		/// <returns>N/A</returns>
		[DllImport("User32.dll")]
		public static extern int DestroyIcon(IntPtr hIcon);
	}

	public class IconListManager
	{
		private Hashtable _extensionList = new Hashtable();
		private List<ImageList> _imageLists = new List<ImageList>(1);
		private IconReader.IconSize _iconSize;
		bool ManageBothSizes = false; //flag, used to determine whether to create two ImageLists.

		/// <summary>
		/// Creates an instance of <c>IconListManager</c> that will add icons to a single <c>ImageList</c> using the
		/// specified <c>IconSize</c>.
		/// </summary>
		/// <param name="imageList"><c>ImageList</c> to add icons to.</param>
		/// <param name="iconSize">Size to use (either 32 or 16 pixels).</param>
		public IconListManager(System.Windows.Forms.ImageList imageList, IconReader.IconSize iconSize)
		{
			// Initialise the members of the class that will hold the image list we're
			// targeting, as well as the icon size (32 or 16)
			_imageLists.Add(imageList);
			_iconSize = iconSize;
		}

		/// <summary>
		/// Creates an instance of IconListManager that will add icons to two <c>ImageList</c> types. The two
		/// image lists are intended to be one for large icons, and the other for small icons.
		/// </summary>
		/// <param name="smallImageList">The <c>ImageList</c> that will hold small icons.</param>
		/// <param name="largeImageList">The <c>ImageList</c> that will hold large icons.</param>
		public IconListManager(System.Windows.Forms.ImageList smallImageList, System.Windows.Forms.ImageList largeImageList)
		{
			//add both our image lists
			_imageLists.Add(smallImageList);
			_imageLists.Add(largeImageList);

			//set flag
			ManageBothSizes = true;
		}

		/// <summary>
		/// Extensions that can have different icons for instance.
		/// </summary>
		static readonly string repeaters = "exe ico msc src lnk ani cur";

		/// <summary>
		/// Used internally, adds the extension to the hashtable, so that its value can then be returned.
		/// </summary>
		/// <param name="Extension"><c>String</c> of the file's extension.</param>
		/// <param name="ImageListPosition">Position of the extension in the <c>ImageList</c>.</param>
		private void AddExtension(string Extension, int ImageListPosition)
		{
			_extensionList.Add(Extension, ImageListPosition);
		}

		/// <summary>
		/// Called publicly to add a file's icon to the ImageList.
		/// </summary>
		/// <param name="filePath">Full path to the file.</param>
		/// <returns>Integer of the icon's position in the ImageList</returns>
		public int AddFileIcon(string filePath)
		{
			// Check if the file exists, otherwise, throw exception.
			if (!System.IO.File.Exists(filePath))
				throw new System.IO.FileNotFoundException("No such file");

			// Split it down so we can get the extension
			string[] splitPath = filePath.Split(new Char[] { '.' });
			string extension = (string)splitPath.GetValue(splitPath.GetUpperBound(0));

			//Check that we haven't already got the extension, if we have, then
			//return back its index
			if (_extensionList.ContainsKey(filePath))
				return (int)_extensionList[filePath];
			else if (!repeaters.Contains(extension) && _extensionList.ContainsKey(extension.ToUpper()))
				return (int)_extensionList[extension.ToUpper()];		//return existing index
			else
			{
				// It's not already been added, so add it and record its position.

				int pos = ((ImageList)_imageLists[0]).Images.Count;		//store current count -- new item's index

				if (ManageBothSizes)
				{
					//managing two lists, so add it to small first, then large
					_imageLists[0].Images.Add(IconReader.GetFileIcon(filePath, IconReader.IconSize.Small, false));
					_imageLists[1].Images.Add(IconReader.GetFileIcon(filePath, IconReader.IconSize.Large, false));
				}
				else
					//only doing one size, so use IconSize as specified in _iconSize.
					_imageLists[0].Images.Add(IconReader.GetFileIcon(filePath, _iconSize, false));	//add to image list

				AddExtension(repeaters.Contains(extension) ? filePath : extension.ToUpper(), pos);	// add to hash table
				return pos;
			}
		}

		/// <summary>
		/// Clears any <c>ImageLists</c> that <c>IconListManager</c> is managing.
		/// </summary>
		public void ClearLists()
		{
			foreach (ImageList imageList in _imageLists)
				imageList.Images.Clear();	//clear current imagelist.

			_extensionList.Clear();			//empty hashtable of entries too.
		}
	}
}
