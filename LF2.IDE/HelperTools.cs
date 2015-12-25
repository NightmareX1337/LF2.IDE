using System;
using System.Collections.Generic;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.InteropServices;

namespace LF2.IDE
{
	public static class HelperTools
	{
		public static Bitmap GetClonedBitmap(string bmpFile)
		{
			Bitmap bmp;
			using (Bitmap img = new Bitmap(bmpFile))
			{
				bmp = new Bitmap(img.Width, img.Height, System.Drawing.Imaging.PixelFormat.Format32bppRgb);
				using (Graphics g = Graphics.FromImage(bmp))
					g.DrawImage(img, 0, 0, img.Width, img.Height);
			}
			return bmp;
		}

		public static void SuspendProcess(int procId, bool suspend)
		{
			SuspendProcess(Process.GetProcessById(procId), suspend);
		}

		public static void SuspendProcess(Process proc, bool suspend)
		{
			SuspendThreadList(proc.Threads, suspend);
		}

		public static void SuspendThreadList(ProcessThreadCollection threads, bool suspend)
		{
			int[] threadList = new int[threads.Count];
			for (int i = 0; i < threadList.Length; i++)
			{
				threadList[i] = threads[i].Id;
			}
			IDL.SuspendThreadList(threadList, threadList.Length, suspend ? 1 : 0);
		}
	}
}
