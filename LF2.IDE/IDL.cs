using System;
using System.Runtime.InteropServices;

namespace LF2.IDE
{
	public enum MsgType : byte
	{
		Message,
		Error,
		Warning
	}

	[UnmanagedFunctionPointer(CallingConvention.Winapi)]
	public delegate void Logger([MarshalAs(UnmanagedType.LPStr)]string msg, [MarshalAs(UnmanagedType.LPStr)]string title, MsgType msgType);

	internal static class IDL
	{
		[DllImport("IDL.dll", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.Cdecl)]
		public static extern int InstantLoad(
			[MarshalAs(UnmanagedType.LPStr, SizeParamIndex = 1)]string data, int length,
			int procId,
			DataType dataType,
			int datId,
			ObjectType objType,
			IntPtr hMainWindow,
			[MarshalAs(UnmanagedType.FunctionPtr)]Logger logFunc);

		[DllImport("IDL.dll", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.Cdecl)]
		public static extern int SuspendThreadList(
			[MarshalAs(UnmanagedType.LPArray, SizeParamIndex = 1)]int[] threads, int length, 
			int bSuspend);
		
		[DllImport("IDL.dll", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.Cdecl)]
		public static extern int ReadDataTxt(
			[MarshalAs(UnmanagedType.LPWStr, SizeParamIndex = 1)]string dataTxtFile, int length,
			[MarshalAs(UnmanagedType.LPArray, SizeParamIndex = 3)]ref ObjectData[] objects, ref int objCount,
			[MarshalAs(UnmanagedType.LPArray, SizeParamIndex = 5)]ref BackgroundData[] backgrounds, ref int bgCount, 
			IntPtr hMainWindow);
	}

	[StructLayout(LayoutKind.Sequential)]
	public struct ObjectData
	{
		public int id;
		public ObjectType type;
		[MarshalAs(UnmanagedType.LPWStr)]
		public string file;
	}

	[StructLayout(LayoutKind.Sequential)]
	public struct BackgroundData
	{
		public int id;
		[MarshalAs(UnmanagedType.LPWStr)]
		public string file;
	}

	[StructLayout(LayoutKind.Sequential)]
	public struct DataTxt
	{
		[MarshalAs(UnmanagedType.LPArray)]
		public ObjectData[] objects;
		[MarshalAs(UnmanagedType.LPArray)]
		public BackgroundData[] backgrounds;
		public int objCount;
		public int bgCount;
	}
}
