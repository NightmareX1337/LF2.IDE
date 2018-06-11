using System;
using System.Collections.Generic;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.InteropServices;
using System.IO;
using System.Drawing.Imaging;

namespace LF2.IDE
{
	public static class HelperTools
	{
		public static Bitmap GetClonedBitmap(string bmpFile)
		{
			Bitmap bmp;
			using (Bitmap img = new Bitmap(bmpFile))
			{
				bmp = new Bitmap(img.Width, img.Height, PixelFormat.Format32bppRgb);
				using (Graphics g = Graphics.FromImage(bmp))
					g.DrawImage(img, 0, 0, img.Width, img.Height);
			}
			return bmp;
		}

		public static Bitmap GetDetachedBitmap(string bmpFile)
		{
			Bitmap img;
			using (MemoryStream ms = new MemoryStream())
			{
				using (Bitmap bmp = new Bitmap(bmpFile))
				{
					bmp.Save(ms, ImageFormat.Bmp);
				}
				img = new Bitmap(ms);
			}
			return img;
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
