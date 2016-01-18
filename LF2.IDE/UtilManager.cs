using System;
using System.IO;
using System.Collections.Generic;
using System.Reflection;
using System.Threading;

namespace LF2.IDE
{
	public static class UtilManager
	{
		public static Plugger<DataUtil> Utils;
		public static object UtilLock = new object();

		public static DataUtil ActiveUtil { get { return Utils[Settings.Current.dataUtil]; } }

		public static void GetUtils(string directory)
		{
			lock (UtilLock)
			{
				Utils = new Plugger<DataUtil>();
				if (Directory.Exists(directory))
					Utils.PlugOn(directory);
			}
		}
	}

	public abstract class DataUtil
	{
		protected static string EncryptionKey { get { return Settings.Current.encryptionKey; } }
		protected static string DecryptionKey { get { return Settings.Current.decryptionKey; } }

		public abstract string Decrypt(string filepath);
		public abstract void Encrypt(string filepath, string text);
	}
}
