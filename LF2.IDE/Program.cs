using System;
using System.Diagnostics;
using System.Drawing.Imaging;
using System.Globalization;
using System.Drawing;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Windows.Forms;
using System.Windows.Forms.VisualStyles;
using Microsoft.VisualBasic.ApplicationServices;
using ProtoBuf.Meta;

namespace LF2.IDE
{
	internal sealed partial class Program
	{
		[STAThread]
		static void Main(string[] args)
		{
			try
			{
				MainForm.stopWatch = System.Diagnostics.Stopwatch.StartNew();
				Application.SetUnhandledExceptionMode(UnhandledExceptionMode.CatchException);
				Application.EnableVisualStyles();
				Application.SetCompatibleTextRenderingDefault(true);

				using (MainForm = new MainForm(args))
					SingleInstanceApplication.Run(MainForm, NewInstanceHandler);
			}
			catch (Exception ex)
			{
				string nl = Environment.NewLine;
				File.AppendAllText(exeDir + "\\FatalError.log", ex.ToString() + nl + nl, Encoding.Default);
				Process.Start(exeDir + "\\FatalError.log");
			}
			finally
			{
				MainForm.stopWatch.Reset();
			}
		}

		public static MainForm MainForm;

		public static void NewInstanceHandler(object sender, StartupNextInstanceEventArgs e)
		{
			e.BringToForeground = true;
			MainForm.NewInstance(e.CommandLine);
		}

		public class SingleInstanceApplication : WindowsFormsApplicationBase
		{
			private SingleInstanceApplication()
			{
				base.IsSingleInstance = true;
			}

			public static void Run(Form form, StartupNextInstanceEventHandler startupHandler)
			{
				SingleInstanceApplication app = new SingleInstanceApplication();
				app.MainForm = form;
				app.StartupNextInstance += startupHandler;
				app.Run(Environment.GetCommandLineArgs());
			}
		}

		public static readonly string exeDir = Path.GetDirectoryName(Application.ExecutablePath);

		public static readonly string langPath = exeDir + "\\data.lang.xml";
		public static readonly string dockingPath = exeDir + "\\docking.xml";
		public static readonly string utilDir = exeDir + "\\DataUtils";
		public static readonly string plugDir = exeDir + "\\Plugins";
		public static readonly string templateDir = exeDir + "\\Templates";
		public const string downloadPage = "https://github.com/NightmareX1337/LF2.IDE/releases";
		public const string webPage = "http://www.lf-empire.de/forum/showthread.php?tid=9064";
		public const string updateInfoLink = "https://raw.githubusercontent.com/NightmareX1337/LF2.IDE/master/UPDATE";

		public const string Title = "LF2.IDE";
	}
}
