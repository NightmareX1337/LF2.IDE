using System;
using System.Globalization;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Xml;
using System.Xml.Serialization;
using ScintillaNET;
using System.Drawing;
using System.Windows.Forms;

namespace LF2.IDE
{
	public sealed class Settings
	{
		public static Settings Current = new Settings();

		public static readonly string SettingsDir = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) + "\\LF2.IDE",
			SettingsPath = SettingsDir + "\\settings.xml";

		public string lfPath = "lf2.exe",
			encryptionKey = "odBearBecauseHeIsVeryGoodSiuHungIsAGo",
			decryptionKey = "odBearBecauseHeIsVeryGoodSiuHungIsAGo",
			dataUtil = null;

		public bool checkUpdatesAuto = true,
			autoComplete = true,
			saveDocStates = true,
			syncDesign = false,
			ignoreIncorrectLfPath = false,
			autoLoadOpointViewer = false;

		public Rectangle window = new Rectangle(0, 0, 1200, 550);
		public FormWindowState windowState = FormWindowState.Maximized;

		public List<string> recentFileHistory = new List<string>(8),
			activePlugins = new List<string>();

		public List<DocSet> documentSettings;

		public void Reload()
		{
			if (File.Exists(SettingsPath))
			{
				try
				{
					using (FileStream settings = new FileStream(SettingsPath, FileMode.Open, FileAccess.Read))
					{
						XmlSerializer xs = new XmlSerializer(typeof(Settings));
						Current = (Settings)xs.Deserialize(settings);
					}
				}
				catch
				{
					try
					{
						File.Delete(SettingsPath);
					}
					finally { }
				}
			}
		}

		public void Save()
		{
			if (!Directory.Exists(SettingsDir))
				Directory.CreateDirectory(SettingsDir);
			using (FileStream settings = new FileStream(SettingsPath, FileMode.Create, FileAccess.Write))
			{
				XmlSerializer xs = new XmlSerializer(typeof(Settings));
				xs.Serialize(settings, Current);
			}
		}
	}

	public class DocSet
	{
		public string filePath;

		public LineWrappingMode lineWrappingMode = LineWrappingMode.None;

		public bool showWhiteSpaces = false,
			showEndOfLineChars = false;

		public int firstVisibleLine = 0,
			selectionStart = 0,
			selectionEnd = 0;
	}
}
