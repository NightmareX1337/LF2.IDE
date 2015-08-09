using System.Runtime.InteropServices;

namespace LF2.IDE
{
	public class IDL
	{
		[DllImport("IDL.dll", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.Cdecl)]
		public static extern int InstantDataLoader([MarshalAs(UnmanagedType.LPStr)]string data, int procId, int objId, int datType);
	}
}
