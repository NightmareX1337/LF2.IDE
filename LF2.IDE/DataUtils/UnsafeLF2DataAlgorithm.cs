//css_co /unsafe;
using System;
using System.Text;
using System.IO;
using LF2.IDE;

//public abstract class DataUtil
//{
//	protected static string EncryptionKey { get { return Settings.Current.encryptionKey; } }
//	protected static string DecryptionKey { get { return Settings.Current.decryptionKey; } }

//	public abstract string Decrypt(string filepath);
//	public abstract void Encrypt(string filepath, string text);
//}

public class UnsafeLF2DataAlgorithm : DataUtil
{
	public unsafe override string Decrypt(string filepath)
	{
		int dec, pass;
		byte[] buffer = File.ReadAllBytes(filepath);
		byte[] decryptedtext = new byte[dec = Math.Max(0, buffer.Length - 123)];
		byte* password = stackalloc byte[pass = EncryptionKey.Length];

		if (pass == 0) return Encoding.ASCII.GetString(buffer);

		for (int i = 0; i < pass; i++)
			password[i] = (byte)EncryptionKey[i];

		fixed (byte* b = buffer, d = decryptedtext)
		{
			for (int i = 0, j = 123; i < dec; i++, j++)
				d[i] = (byte)(b[j] - password[i % pass]);
		}

		return Encoding.ASCII.GetString(decryptedtext);
	}

	public unsafe override void Encrypt(string filepath, string text)
	{
		int len, pass, txt;
		byte[] dat = new byte[len = 123 + (txt = text.Length)];
		byte* password = stackalloc byte[pass = DecryptionKey.Length];

		for (int i = 0; i < pass; i++)
			password[i] = (byte)DecryptionKey[i];

		fixed (byte* d = dat)
		{
			for (int i = 0; i < 123; i++)
				d[i] = 0;

			fixed (char* t = text)
			{
				if (pass == 0)
					for (int i = 0; i < txt; i++)
						d[i + 123] = (byte)t[i];
				else
					for (int i = 0, j = 123; i < txt; i++, j++)
						d[j] = (byte)((byte)t[i] + password[i % pass]);
			}
		}

		File.WriteAllBytes(filepath, dat);
	}
}