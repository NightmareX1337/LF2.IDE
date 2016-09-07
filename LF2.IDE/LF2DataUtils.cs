using System;
using System.Text;
using System.IO;
using System.Collections.Generic;
using System.Drawing;

namespace LF2.IDE
{
	public static class LF2DataUtils
	{
		public static string EncryptionKey { get { return Settings.Current.encryptionKey; } }
		public static string DecryptionKey { get { return Settings.Current.decryptionKey; } }

		public static string Decrypt(string filepath)
		{
			lock (UtilManager.UtilLock)
			{
				if (!string.IsNullOrEmpty(Settings.Current.dataUtil))
				{
					return UtilManager.ActiveUtil.Decrypt(filepath);
				}
			}

			byte[] buffer = File.ReadAllBytes(filepath);
			byte[] decryptedtext = new byte[Math.Max(0, buffer.Length - 123)];
			string password = EncryptionKey;

			if (string.IsNullOrEmpty(password)) return Encoding.ASCII.GetString(buffer);

			for (int i = 0, j = 123; i < decryptedtext.Length; i++, j++)
				unchecked
				{
					decryptedtext[i] = (byte)(buffer[j] - (byte)password[i % password.Length]);
				}

			return Encoding.ASCII.GetString(decryptedtext);
		}

		public static void Encrypt(string text, string filepath)
		{
			lock (UtilManager.UtilLock)
			{
				if (!string.IsNullOrEmpty(Settings.Current.dataUtil))
				{
					UtilManager.ActiveUtil.Encrypt(filepath, text);
					return;
				}
			}

			byte[] dat = new byte[123 + text.Length];
			string password = DecryptionKey;

			for (int i = 0; i < 123; i++)
				dat[i] = 0;
			if (string.IsNullOrEmpty(password))
				for (int i = 0, j = 123; i < text.Length; i++, j++)
					dat[j] = (byte)text[i];
			else
				for (int i = 0, j = 123; i < text.Length; i++, j++)
					dat[j] = (byte)((byte)text[i] + (byte)password[i % password.Length]);

			File.WriteAllBytes(filepath, dat);
		}

		/*
		public static unsafe string DecryptUnsafe(string filepath)
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
					unchecked
					{
						d[i] = (byte)(b[j] - password[i % pass]);
					}

			}

			return Encoding.ASCII.GetString(decryptedtext);
		}

		public static unsafe void EncryptUnsafe(string text, string filepath)
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
		*/

		public static List<string> GetFrames(string dat)
		{
			List<string> frames = new List<string>(400);
			for (int i = dat.IndexOf("<frame>"); i >= 0; i = dat.IndexOf("<frame>", i + 7))
			{
				int j = dat.IndexOf("<frame_end>", i + 7);
				if (j < 0)
					return frames;
				frames.Add(dat.Substring(i, j + 11));
			}
			return frames;
		}

		public static class Pattern
		{
			public const string frame = @"<frame>\s*(\d*)\s*(\w*)",
				pic = @"pic:\s*(\d*)",
				state = @"state:\s*(\d*)",
				wait = @"wait:\s*(\d*)",
				next = @"next:\s*(\d*)",
				dvx = @"dvx:\s*(\d*)",
				dvy = @"dvx:\s*(\d*)",
				dvz = @"dvz:\s*(\d*)",
				centerx = @"cenrex:\s*(\d*)",
				centery = @"cenrey:\s*(\d*)",
				hit_Fa = @"hit_Fa:\s*(\d*)",
				hit_Ua = @"hit_Ua:\s*(\d*)",
				hit_Da = @"hit_Da:\s*(\d*)",
				hit_Fj = @"hit_Fj:\s*(\d*)",
				hit_Uj = @"hit_Uj:\s*(\d*)",
				hit_Dj = @"hit_Dj:\s*(\d*)",
				hit_ja = @"hit_ja:\s*(\d*)",
				hit_a = @"hit_a:\s*(\d*)",
				hit_d = @"hit_d:\s*(\d*)",
				hit_j = @"hit_j:\s*(\d*)",
				sound = @"sound:\s*(.*)";
		}

		public class Opoint // 8 fields
		{
			public int? kind;
			public int? x;
			public int? y;
			public int? action;
			public int? dvx;
			public int? dvy;
			public int? oid;
			public int? facing;

			// God save us from ever needing to write this kind of creepy code
			public override string ToString()
			{
				StringBuilder str = new StringBuilder(32);
				str.Append("   opoint:\n      ");
				if (kind.HasValue)
					str.Append("kind: ").Append(kind.Value).Append("  ");
				if (x.HasValue)
					str.Append("x: ").Append(x.Value).Append("  ");
				if (y.HasValue)
					str.Append("y: ").Append(y.Value).Append("  ");
				if (action.HasValue)
					str.Append("action: ").Append(action.Value).Append("  ");
				if (dvx.HasValue)
					str.Append("dvx: ").Append(dvx.Value).Append("  ");
				if (dvy.HasValue)
					str.Append("dvy: ").Append(dvy.Value).Append("  ");
				if (oid.HasValue)
					str.Append("oid: ").Append(oid.Value).Append("  ");
				if (facing.HasValue)
					str.Append("facing: ").Append(facing.Value).Append("  ");
				str.Remove(str.Length - 2, 2);
				str.Append("\n   opoint_end:");
				return str.ToString();
			}

			// God save us from ever needing to write this kind of creepy code
			public static explicit operator TagBox.OPoint(Opoint obj)
			{
				return new TagBox.OPoint()
				{
					action = obj.action,
					dvx = obj.dvx.HasValue ? obj.dvx.Value : 0,
					dvy = obj.dvy.HasValue ? obj.dvy.Value : 0,
					facing = obj.facing,
					kind = obj.kind,
					oid = obj.oid,
					x = obj.x.HasValue ? obj.x.Value : 0,
					y = obj.y.HasValue ? obj.y.Value : 0
				};
			}

			// God save us from ever needing to write this kind of creepy code
			public static explicit operator Opoint(TagBox.OPoint obj)
			{
				return new Opoint()
				{
					action = obj.action,
					dvx = obj.dvx,
					dvy = obj.dvy,
					facing = obj.facing,
					kind = obj.kind,
					oid = obj.oid,
					x = obj.x,
					y = obj.y
				};
			}
		}

		public class Bpoint // 2 fields
		{
			public int? x;
			public int? y;

			public override string ToString()
			{
				StringBuilder str = new StringBuilder(32);
				str.Append("   bpoint:\n      ");
				if (x.HasValue)
					str.Append("x: ").Append(x.Value).Append("  ");
				if (y.HasValue)
					str.Append("y: ").Append(y.Value).Append("  ");
				str.Remove(str.Length - 2, 2);
				str.Append("\n   bpoint_end:");
				return str.ToString();
			}

			public static explicit operator Point?(Bpoint obj)
			{
				if (obj.x.HasValue && obj.y.HasValue)
					return new Point((int)obj.x, (int)obj.y);
				else
					return null;
			}

			public static explicit operator Bpoint(Point? obj)
			{
				return obj.HasValue ? new Bpoint() { x = obj.Value.X, y = obj.Value.Y } : new Bpoint();
			}
		}

		public class Cpoint // 19 fields
		{
			public int? kind;
			public int? x;
			public int? y;
			public int? injury;
			public int? fronthurtact;
			public int? cover;
			public int? backhurtact;
			public int? vaction;
			public int? aaction;
			public int? jaction;
			public int? daction;
			public int? throwvx;
			public int? throwvy;
			public bool? hurtable;
			public int? decrease;
			public bool? dircontrol;
			public int? taction;
			public int? throwinjury;
			public int? throwvz;

			// God save us from ever needing to write this kind of creepy code
			public override string ToString()
			{
				StringBuilder str = new StringBuilder(128);
				str.Append("   cpoint:\n      ");
				if (kind.HasValue)
					str.Append("kind: ").Append(kind.Value).Append("  ");
				if (x.HasValue)
					str.Append("x: ").Append(x.Value).Append("  ");
				if (y.HasValue)
					str.Append("y: ").Append(y.Value).Append("  ");
				if (injury.HasValue)
					str.Append("injury: ").Append(injury.Value).Append("  ");
				if (fronthurtact.HasValue)
					str.Append("fronthurtact: ").Append(fronthurtact.Value).Append("  ");
				if (cover.HasValue)
					str.Append("cover: ").Append(cover.Value).Append("  ");
				if (backhurtact.HasValue)
					str.Append("backhurtact: ").Append(backhurtact.Value).Append("  ");
				if (vaction.HasValue)
					str.Append("vaction: ").Append(vaction.Value).Append("  ");
				if (aaction.HasValue)
					str.Append("aaction: ").Append(aaction.Value).Append("  ");
				if (jaction.HasValue)
					str.Append("jaction: ").Append(jaction.Value).Append("  ");
				if (daction.HasValue)
					str.Append("daction: ").Append(daction.Value).Append("  ");
				if (throwvx.HasValue)
					str.Append("throwvx: ").Append(throwvx.Value).Append("  ");
				if (throwvy.HasValue)
					str.Append("throwvy: ").Append(throwvy.Value).Append("  ");
				if (hurtable.HasValue)
					str.Append("hurtable: ").Append(hurtable.Value ? "1" : "0").Append("  ");
				if (decrease.HasValue)
					str.Append("decrease: ").Append(decrease.Value).Append("  ");
				if (dircontrol.HasValue)
					str.Append("dircontrol: ").Append(dircontrol.Value ? "1" : "0").Append("  ");
				if (taction.HasValue)
					str.Append("taction: ").Append(taction.Value).Append("  ");
				if (throwinjury.HasValue)
					str.Append("throwinjury: ").Append(throwinjury.Value).Append("  ");
				if (throwvz.HasValue)
					str.Append("throwvz: ").Append(throwvz.Value).Append("  ");
				str.Remove(str.Length - 2, 2);
				str.Append("\n   cpoint_end:");
				return str.ToString();
			}

			// God save us from ever needing to write this kind of creepy code
			public static explicit operator TagBox.CPoint(Cpoint obj)
			{
				return new TagBox.CPoint()
				{
					aaction = obj.aaction,
					backhurtact = obj.backhurtact,
					cover = obj.cover,
					decrease = obj.decrease,
					dircontrol = obj.dircontrol,
					fronthurtact = obj.fronthurtact,
					hurtable = obj.hurtable,
					injury = obj.injury,
					kind = obj.kind,
					taction = obj.taction,
					throwinjury = obj.throwinjury,
					throwvx = obj.throwvx.HasValue ? obj.throwvx.Value : 0,
					throwvy = obj.throwvy.HasValue ? obj.throwvy.Value : 0,
					throwvz = obj.throwvz,
					vaction = obj.vaction,
					x = obj.x.HasValue ? obj.x.Value : 0,
					y = obj.y.HasValue ? obj.y.Value : 0,
				};
			}

			// God save us from ever needing to write this kind of creepy code
			public static explicit operator Cpoint(TagBox.CPoint obj)
			{
				return new Cpoint()
				{
					aaction = obj.aaction,
					backhurtact = obj.backhurtact,
					cover = obj.cover,
					decrease = obj.decrease,
					dircontrol = obj.dircontrol,
					fronthurtact = obj.fronthurtact,
					hurtable = obj.hurtable,
					injury = obj.injury,
					kind = obj.kind,
					taction = obj.taction,
					throwinjury = obj.throwinjury,
					throwvx = obj.throwvx,
					throwvy = obj.throwvy,
					throwvz = obj.throwvz,
					vaction = obj.vaction,
					x = obj.x,
					y = obj.y
				};
			}
		}

		public class Wpoint // 9 fields
		{
			public int? kind;
			public int? x;
			public int? y;
			public int? weaponact;
			public int? attacking;
			public bool? cover;
			public int? dvx;
			public int? dvy;
			public int? dvz;

			// God save us from ever needing to write this kind of creepy code
			public override string ToString()
			{
				StringBuilder str = new StringBuilder(128);
				str.Append("   wpoint:\n      ");
				if (kind.HasValue)
					str.Append("kind: ").Append(kind.Value).Append("  ");
				if (x.HasValue)
					str.Append("x: ").Append(x.Value).Append("  ");
				if (y.HasValue)
					str.Append("y: ").Append(y.Value).Append("  ");
				if (weaponact.HasValue)
					str.Append("weaponact: ").Append(weaponact.Value).Append("  ");
				if (attacking.HasValue)
					str.Append("attacking: ").Append(attacking.Value).Append("  ");
				if (cover.HasValue)
					str.Append("cover: ").Append(cover.Value ? "1" : "0").Append("  ");
				if (dvx.HasValue)
					str.Append("dvx: ").Append(dvx.Value).Append("  ");
				if (dvy.HasValue)
					str.Append("dvy: ").Append(dvy.Value).Append("  ");
				if (dvz.HasValue)
					str.Append("dvz: ").Append(dvz.Value).Append("  ");
				str.Remove(str.Length - 2, 2);
				str.Append("\n   wpoint_end:");
				return str.ToString();
			}

			// God save us from ever needing to write this kind of creepy code
			public static explicit operator TagBox.WPoint(Wpoint obj)
			{
				return new TagBox.WPoint()
				{
					attacking = obj.attacking,
					cover = obj.cover,
					dvx = obj.dvx.HasValue ? obj.dvx.Value : 0,
					dvy = obj.dvy.HasValue ? obj.dvy.Value : 0,
					dvz = obj.dvz,
					kind = obj.kind,
					weaponact = obj.weaponact,
					x = obj.x.HasValue ? obj.x.Value : 0,
					y = obj.y.HasValue ? obj.y.Value : 0
				};
			}

			// God save us from ever needing to write this kind of creepy code
			public static explicit operator Wpoint(TagBox.WPoint obj)
			{
				return new Wpoint()
				{
					attacking = obj.attacking,
					cover = obj.cover,
					dvx = obj.dvx,
					dvy = obj.dvy,
					dvz = obj.dvz,
					kind = obj.kind,
					weaponact = obj.weaponact,
					x = obj.x,
					y = obj.y
				};
			}
		}

		public class Itr // 16 fields
		{
			public int? kind;
			public int? x;
			public int? y;
			public int? w;
			public int? h;
			public int? dvx;
			public int? dvy;
			public int? fall;
			public int? arest;
			public int? vrest;
			public int? effect;
			public int? catchingact1;
			public int? caughtact1;
			public int? catchingact2;
			public int? caughtact2;
			public int? bdefend;
			public int? injury;
			public int? zwidth;

			// God save us from ever needing to write this kind of creepy code
			public override string ToString()
			{
				StringBuilder str = new StringBuilder(128);
				str.Append("   itr:\n      ");
				if (kind.HasValue)
					str.Append("kind: ").Append(kind.Value).Append("  ");
				if (x.HasValue)
					str.Append("x: ").Append(x.Value).Append("  ");
				if (y.HasValue)
					str.Append("y: ").Append(y.Value).Append("  ");
				if (w.HasValue)
					str.Append("w: ").Append(w.Value).Append("  ");
				if (h.HasValue)
					str.Append("h: ").Append(h.Value).Append("  ");
				if (dvx.HasValue)
					str.Append("dvx: ").Append(dvx.Value).Append("  ");
				if (dvy.HasValue)
					str.Append("dvy: ").Append(dvy.Value).Append("  ");
				if (fall.HasValue)
					str.Append("fall: ").Append(fall.Value).Append("  ");
				if (arest.HasValue)
					str.Append("arest: ").Append(arest.Value).Append("  ");
				if (vrest.HasValue)
					str.Append("vrest: ").Append(vrest.Value).Append("  ");
				if (effect.HasValue)
					str.Append("effect: ").Append(effect.Value).Append("  ");
				if (bdefend.HasValue)
					str.Append("bdefend: ").Append(bdefend.Value).Append("  ");
				if (injury.HasValue)
					str.Append("injury: ").Append(injury.Value).Append("  ");
				if (zwidth.HasValue)
					str.Append("zwidth: ").Append(zwidth.Value).Append("  ");
				if (catchingact1.HasValue || catchingact2.HasValue || caughtact1.HasValue || caughtact2.HasValue)
					str.Append("\n      ");
				if (catchingact1.HasValue && catchingact2.HasValue)
					str.Append("catchingact: ").Append(catchingact1.Value).Append(" ").Append(catchingact2.Value).Append("  ");
				if (caughtact1.HasValue && caughtact2.HasValue)
					str.Append("caughtact: ").Append(caughtact1.Value).Append(" ").Append(caughtact2.Value).Append("  ");
				str.Remove(str.Length - 2, 2);
				str.Append("\n   itr_end:");
				return str.ToString();
			}

			// God save us from ever needing to write this kind of creepy code
			public static explicit operator TagBox.Itr(Itr obj)
			{
				return new TagBox.Itr()
				{
					arest = obj.arest,
					bdefend = obj.bdefend,
					catchingact1 = obj.catchingact1,
					catchingact2 = obj.catchingact2,
					caughtact1 = obj.caughtact1,
					caughtact2 = obj.caughtact2,
					dvx = obj.dvx.HasValue ? obj.dvx.Value : 0,
					dvy = obj.dvy.HasValue ? obj.dvy.Value : 0,
					effect = obj.effect,
					fall = obj.fall,
					h = obj.h.HasValue ? obj.h.Value : 0,
					injury = obj.injury,
					kind = obj.kind.HasValue ? obj.kind.Value : 0,
					vrest = obj.vrest,
					w = obj.w.HasValue ? obj.w.Value : 0,
					x = obj.x.HasValue ? obj.x.Value : 0,
					y = obj.y.HasValue ? obj.y.Value : 0,
					zwidth = obj.zwidth
				};
			}

			// God save us from ever needing to write this kind of creepy code
			public static explicit operator Itr(TagBox.Itr obj)
			{
				return new Itr()
				{
					arest = obj.arest,
					bdefend = obj.bdefend,
					catchingact1 = obj.catchingact1,
					catchingact2 = obj.catchingact2,
					caughtact1 = obj.caughtact1,
					caughtact2 = obj.caughtact2,
					dvx = obj.dvx,
					dvy = obj.dvy,
					effect = obj.effect,
					fall = obj.fall,
					h = obj.h,
					injury = obj.injury,
					kind = obj.kind,
					vrest = obj.vrest,
					w = obj.w,
					x = obj.x,
					y = obj.y,
					zwidth = obj.zwidth
				};
			}
		}

		public class Bdy // 5 fields
		{
			public int? kind;
			public int? x;
			public int? y;
			public int? w;
			public int? h;

			public override string ToString()
			{
				StringBuilder str = new StringBuilder(64);
				str.Append("   bdy:\n      ");
				if (w.HasValue)
					str.Append("kind: ").Append(kind.Value).Append("  ");
				if (x.HasValue)
					str.Append("x: ").Append(x.Value).Append("  ");
				if (y.HasValue)
					str.Append("y: ").Append(y.Value).Append("  ");
				if (w.HasValue)
					str.Append("w: ").Append(w.Value).Append("  ");
				if (h.HasValue)
					str.Append("h: ").Append(h.Value).Append("  ");
				str.Remove(str.Length - 2, 2);
				str.Append("\n   bdy_end:");
				return str.ToString();
			}

			public static explicit operator TagBox.Bdy(Bdy obj)
			{
				return new TagBox.Bdy()
				{
					h = obj.h.HasValue ? obj.h.Value : 0,
					kind = obj.kind,
					w = obj.w.HasValue ? obj.w.Value : 0,
					x = obj.x.HasValue ? obj.x.Value : 0,
					y = obj.y.HasValue ? obj.y.Value : 0
				};
			}

			public static explicit operator Bdy(TagBox.Bdy obj)
			{
				return new Bdy()
				{
					h = obj.h,
					kind = obj.kind,
					w = obj.w,
					x = obj.x,
					y = obj.y
				};
			}
		}

		public class Frame // 29 fields
		{
			public int index;
			public string caption;
			public int? pic;
			public int? state;
			public int? wait;
			public int? next;
			public int? centerx;
			public int? centery;
			public int? dvx;
			public int? dvy;
			public int? dvz;
			public int? mp;
			public int? hit_a;
			public int? hit_d;
			public int? hit_j;
			public int? hit_Fa;
			public int? hit_Ua;
			public int? hit_Da;
			public int? hit_Fj;
			public int? hit_Uj;
			public int? hit_Dj;
			public int? hit_ja;
			public string sound;
			public Opoint opoint;
			public Bpoint bpoint;
			public Cpoint cpoint;
			public Wpoint wpoint;
			public Bdy[] bdys;
			public Itr[] itrs;
			
			public override string ToString()
			{
				StringBuilder str = new StringBuilder(128);
				str.Append("<frame> ").Append(index).Append(" ").Append(caption).Append("\n   ");
				if (pic.HasValue)
					str.Append("pic: ").Append(pic.Value).Append("  ");
				if (state.HasValue)
					str.Append("state: ").Append(state.Value).Append("  ");
				if (wait.HasValue)
					str.Append("wait: ").Append(wait.Value).Append("  ");
				if (next.HasValue)
					str.Append("next: ").Append(next.Value).Append("  ");
				if (dvx.HasValue)
					str.Append("dvx: ").Append(dvx.Value).Append("  ");
				if (dvy.HasValue)
					str.Append("dvy: ").Append(dvy.Value).Append("  ");
				if (dvz.HasValue)
					str.Append("dvz: ").Append(dvz.Value).Append("  ");
				if (centerx.HasValue)
					str.Append("centerx: ").Append(centerx.Value).Append("  ");
				if (centery.HasValue)
					str.Append("centery: ").Append(centery.Value).Append("  ");
				if (mp.HasValue)
					str.Append("mp: ").Append(mp.Value).Append("  ");
				if (hit_a.HasValue)
					str.Append("hit_a: ").Append(hit_a.Value).Append("  ");
				if (hit_d.HasValue)
					str.Append("hit_d: ").Append(hit_d.Value).Append("  ");
				if (hit_j.HasValue)
					str.Append("hit_j: ").Append(hit_j.Value).Append("  ");
				if (hit_Fa.HasValue)
					str.Append("hit_Fa: ").Append(hit_Fa.Value).Append("  ");
				if (hit_Ua.HasValue)
					str.Append("hit_Ua: ").Append(hit_Ua.Value).Append("  ");
				if (hit_Da.HasValue)
					str.Append("hit_Da: ").Append(hit_Da.Value).Append("  ");
				if (hit_Fj.HasValue)
					str.Append("hit_Fj: ").Append(hit_Fj.Value).Append("  ");
				if (hit_Uj.HasValue)
					str.Append("hit_Uj: ").Append(hit_Uj.Value).Append("  ");
				if (hit_Dj.HasValue)
					str.Append("hit_Dj: ").Append(hit_Dj.Value).Append("  ");
				if (hit_ja.HasValue)
					str.Append("hit_ja: ").Append(hit_ja.Value).Append("  ");
				str.Remove(str.Length - 2, 2);
				if (sound != null)
					str.Append("\n   sound: ").Append(sound);
				if (bpoint != null)
					str.Append("\n").Append(bpoint.ToString());
				if (opoint != null)
					str.Append("\n").Append(opoint.ToString());
				if (cpoint != null)
					str.Append("\n").Append(cpoint.ToString());
				if (wpoint != null)
					str.Append("\n").Append(wpoint.ToString());
				if (itrs != null)
				{
					foreach (var itr in itrs)
						str.Append("\n").Append(itr.ToString());
				}
				if (bdys != null)
				{
					foreach (var bdy in bdys)
						str.Append("\n").Append(bdy.ToString());
				}
				str.Append("\n<frame_end>");
				return str.ToString();
			}
		}

		static readonly List<char>
			tokenDelim = new List<char>(new char[] { ' ', '\t', '\r', '\n' }),
			tokemDelimEnd = new List<char>(new char[] { '>', ':' }),
			tokenDelimBegin = new List<char>(new char[] { '<' });

		public static string[] TokenizeFrame(string frame)
		{
			List<string> tokens = new List<string>(128);
			bool tokenState = false;
			int tokenStart = 0;
			for (int i = 0; i < frame.Length; i++)
			{
				if (tokenDelimBegin.Contains(frame[i]))
				{
					if (tokenState)
					{
						tokens.Add(frame.Substring(tokenStart, i - tokenStart));
						tokenStart = i;
						continue;
					}
					else
					{
						tokenStart = i;
						tokenState = true;
						continue;
					}
				}
				else if (tokemDelimEnd.Contains(frame[i]))
				{
					if (tokenState)
					{
						tokens.Add(frame.Substring(tokenStart, i - tokenStart + 1));
						tokenState = false;
						continue;
					}
					else
					{
						throw new DataSyntaxException("Syntax Error: Encountered token ending delimeter");
					}
				}
				else if (tokenDelim.Contains(frame[i]))
				{
					if (tokenState)
					{
						tokens.Add(frame.Substring(tokenStart, i - tokenStart));
						tokenState = false;
						continue;
					}
				}
				else
				{
					if (tokenState)
					{
						continue;
					}
					else
					{
						tokenStart = i;
						tokenState = true;
					}
				}
			}
			return tokens.ToArray();
		}

		enum DataState
		{
			frameElement,
			opoint,
			bpoint,
			cpoint,
			wpoint,
			bdy,
			itr
		}

		public static Frame ReadFrame(string frame)
		{
			return ReadFrame(TokenizeFrame(frame));
		}

		// God save us from ever needing to write this kind of creepy code
		public static Frame ReadFrame(string[] frameTokens)
		{
			if (frameTokens.Length > 2 && frameTokens[0] == "<frame>" && frameTokens[frameTokens.Length - 1] == "<frame_end>")
			{
				Frame frame = new Frame();
				List<Bdy> bdys = new List<Bdy>();
				List<Itr> itrs = new List<Itr>();
				DataState dataState = DataState.frameElement;
				frame.index = int.Parse(frameTokens[1]);
				frame.caption = frameTokens[2];
				for (int i = 3; i < frameTokens.Length; i++)
				{
					string token = frameTokens[i];
					if (dataState == DataState.frameElement)
					{
						switch (token)
						{
							case "pic:":
								frame.pic = int.Parse(frameTokens[++i]);
								break;
							case "state:":
								frame.state = int.Parse(frameTokens[++i]);
								break;
							case "wait:":
								frame.wait = int.Parse(frameTokens[++i]);
								break;
							case "next:":
								frame.next = int.Parse(frameTokens[++i]);
								break;
							case "centerx:":
								frame.centerx = int.Parse(frameTokens[++i]);
								break;
							case "centery:":
								frame.centery = int.Parse(frameTokens[++i]);
								break;
							case "dvx:":
								frame.dvx = int.Parse(frameTokens[++i]);
								break;
							case "dvy:":
								frame.dvy = int.Parse(frameTokens[++i]);
								break;
							case "dvz:":
								frame.dvz = int.Parse(frameTokens[++i]);
								break;
							case "mp:":
								frame.mp = int.Parse(frameTokens[++i]);
								break;
							case "hit_a:":
								frame.hit_a = int.Parse(frameTokens[++i]);
								break;
							case "hit_d:":
								frame.hit_d = int.Parse(frameTokens[++i]);
								break;
							case "hit_j:":
								frame.hit_j = int.Parse(frameTokens[++i]);
								break;
							case "hit_Fa:":
								frame.hit_Fa = int.Parse(frameTokens[++i]);
								break;
							case "hit_Ua:":
								frame.hit_Ua = int.Parse(frameTokens[++i]);
								break;
							case "hit_Da:":
								frame.hit_Da = int.Parse(frameTokens[++i]);
								break;
							case "hit_Fj:":
								frame.hit_Fj = int.Parse(frameTokens[++i]);
								break;
							case "hit_Uj:":
								frame.hit_Uj = int.Parse(frameTokens[++i]);
								break;
							case "hit_Dj:":
								frame.hit_Dj = int.Parse(frameTokens[++i]);
								break;
							case "hit_ja:":
								frame.hit_ja = int.Parse(frameTokens[++i]);
								break;
							case "sound:":
								frame.sound = frameTokens[++i];
								break;
							case "opoint:":
								frame.opoint = new Opoint();
								dataState = DataState.opoint;
								break;
							case "wpoint:":
								frame.wpoint = new Wpoint();
								dataState = DataState.wpoint;
								break;
							case "bpoint:":
								frame.bpoint = new Bpoint();
								dataState = DataState.bpoint;
								break;
							case "cpoint:":
								frame.cpoint = new Cpoint();
								dataState = DataState.cpoint;
								break;
							case "bdy:":
								bdys.Add(new Bdy());
								dataState = DataState.bdy;
								break;
							case "itr:":
								itrs.Add(new Itr());
								dataState = DataState.itr;
								break;
						}
					}
					else if (dataState == DataState.opoint)
					{
						switch (token)
						{
							case "kind:":
								frame.opoint.kind = int.Parse(frameTokens[++i]);
								break;
							case "x:":
								frame.opoint.x = int.Parse(frameTokens[++i]);
								break;
							case "y:":
								frame.opoint.y = int.Parse(frameTokens[++i]);
								break;
							case "action:":
								frame.opoint.action = int.Parse(frameTokens[++i]);
								break;
							case "dvx:":
								frame.opoint.dvx = int.Parse(frameTokens[++i]);
								break;
							case "dvy:":
								frame.opoint.dvy = int.Parse(frameTokens[++i]);
								break;
							case "oid:":
								frame.opoint.oid = int.Parse(frameTokens[++i]);
								break;
							case "facing:":
								frame.opoint.facing = int.Parse(frameTokens[++i]);
								break;
							case "opoint_end:":
								dataState = DataState.frameElement;
								break;
						}
					}
					else if (dataState == DataState.wpoint)
					{
						switch (token)
						{
							case "kind:":
								frame.wpoint.kind = int.Parse(frameTokens[++i]);
								break;
							case "x:":
								frame.wpoint.x = int.Parse(frameTokens[++i]);
								break;
							case "y:":
								frame.wpoint.y = int.Parse(frameTokens[++i]);
								break;
							case "weaponact:":
								frame.wpoint.weaponact = int.Parse(frameTokens[++i]);
								break;
							case "attacking:":
								frame.wpoint.attacking = int.Parse(frameTokens[++i]);
								break;
							case "cover:":
								frame.wpoint.cover = int.Parse(frameTokens[++i]) != 0;
								break;
							case "dvx:":
								frame.wpoint.dvx = int.Parse(frameTokens[++i]);
								break;
							case "dvy:":
								frame.wpoint.dvy = int.Parse(frameTokens[++i]);
								break;
							case "dvz:":
								frame.wpoint.dvz = int.Parse(frameTokens[++i]);
								break;
							case "wpoint_end:":
								dataState = DataState.frameElement;
								break;
						}
					}
					else if (dataState == DataState.bpoint)
					{
						switch (token)
						{
							case "x:":
								frame.bpoint.x = int.Parse(frameTokens[++i]);
								break;
							case "y:":
								frame.bpoint.y = int.Parse(frameTokens[++i]);
								break;
							case "bpoint_end:":
								dataState = DataState.frameElement;
								break;
						}
					}
					else if (dataState == DataState.cpoint)
					{
						switch (token)
						{
							case "kind:":
								frame.cpoint.kind = int.Parse(frameTokens[++i]);
								break;
							case "x:":
								frame.cpoint.x = int.Parse(frameTokens[++i]);
								break;
							case "y:":
								frame.cpoint.y = int.Parse(frameTokens[++i]);
								break;
							case "injury:":
								frame.cpoint.injury = int.Parse(frameTokens[++i]);
								break;
							case "fronthurtact:":
								frame.cpoint.fronthurtact = int.Parse(frameTokens[++i]);
								break;
							case "cover:":
								frame.cpoint.cover = int.Parse(frameTokens[++i]);
								break;
							case "backhurtact:":
								frame.cpoint.backhurtact = int.Parse(frameTokens[++i]);
								break;
							case "vaction:":
								frame.cpoint.vaction = int.Parse(frameTokens[++i]);
								break;
							case "aaction:":
								frame.cpoint.aaction = int.Parse(frameTokens[++i]);
								break;
							case "jaction:":
								frame.cpoint.jaction = int.Parse(frameTokens[++i]);
								break;
							case "daction:":
								frame.cpoint.daction = int.Parse(frameTokens[++i]);
								break;
							case "throwvx:":
								frame.cpoint.throwvx = int.Parse(frameTokens[++i]);
								break;
							case "throwvy:":
								frame.cpoint.throwvy = int.Parse(frameTokens[++i]);
								break;
							case "hurtable:":
								frame.cpoint.hurtable = int.Parse(frameTokens[++i]) != 0;
								break;
							case "decrease:":
								frame.cpoint.decrease = int.Parse(frameTokens[++i]);
								break;
							case "dircontrol:":
								frame.cpoint.dircontrol = int.Parse(frameTokens[++i]) != 0;
								break;
							case "taction:":
								frame.cpoint.taction = int.Parse(frameTokens[++i]);
								break;
							case "throwinjury:":
								frame.cpoint.throwinjury = int.Parse(frameTokens[++i]);
								break;
							case "throwvz:":
								frame.cpoint.throwvz = int.Parse(frameTokens[++i]);
								break;
							case "cpoint_end:":
								dataState = DataState.frameElement;
								break;
						}
					}
					else if (dataState == DataState.itr)
					{
						Itr itr = itrs[itrs.Count - 1];
						switch (token)
						{
							case "kind:":
								itr.kind = int.Parse(frameTokens[++i]);
								break;
							case "x:":
								itr.x = int.Parse(frameTokens[++i]);
								break;
							case "y:":
								itr.y = int.Parse(frameTokens[++i]);
								break;
							case "w:":
								itr.w = int.Parse(frameTokens[++i]);
								break;
							case "h:":
								itr.h = int.Parse(frameTokens[++i]);
								break;
							case "dvx:":
								itr.dvx = int.Parse(frameTokens[++i]);
								break;
							case "dvy:":
								itr.dvy = int.Parse(frameTokens[++i]);
								break;
							case "fall:":
								itr.fall = int.Parse(frameTokens[++i]);
								break;
							case "arest:":
								itr.arest = int.Parse(frameTokens[++i]);
								break;
							case "vrest:":
								itr.vrest = int.Parse(frameTokens[++i]);
								break;
							case "effect:":
								itr.effect = int.Parse(frameTokens[++i]);
								break;
							case "catchingact:":
								itr.catchingact1 = int.Parse(frameTokens[++i]);
								itr.catchingact2 = int.Parse(frameTokens[++i]);
								break;
							case "caughtact:":
								itr.caughtact1 = int.Parse(frameTokens[++i]);
								itr.caughtact2 = int.Parse(frameTokens[++i]);
								break;
							case "bdefend:":
								itr.bdefend = int.Parse(frameTokens[++i]);
								break;
							case "injury:":
								itr.injury = int.Parse(frameTokens[++i]);
								break;
							case "zwidth:":
								itr.zwidth = int.Parse(frameTokens[++i]);
								break;
							case "itr_end:":
								dataState = DataState.frameElement;
								break;
						}
					}
					else if (dataState == DataState.bdy)
					{
						Bdy bdy = bdys[bdys.Count - 1];
						switch (token)
						{
							case "kind:":
								bdy.kind = int.Parse(frameTokens[++i]);
								break;
							case "x:":
								bdy.x = int.Parse(frameTokens[++i]);
								break;
							case "y:":
								bdy.y = int.Parse(frameTokens[++i]);
								break;
							case "w:":
								bdy.w = int.Parse(frameTokens[++i]);
								break;
							case "h:":
								bdy.h = int.Parse(frameTokens[++i]);
								break;
							case "bdy_end:":
								dataState = DataState.frameElement;
								break;
						}
					}
				}
				frame.bdys = bdys.Count > 0 ? bdys.ToArray() : null;
				frame.itrs = itrs.Count > 0 ? itrs.ToArray() : null;
				return frame;
			}
			else
				return null;
		}

		[Serializable]
		public class DataSyntaxException : Exception
		{
			public DataSyntaxException() { }
			public DataSyntaxException(string message) : base(message) { }
			public DataSyntaxException(string message, Exception inner) : base(message, inner) { }
			protected DataSyntaxException(
			  System.Runtime.Serialization.SerializationInfo info,
			  System.Runtime.Serialization.StreamingContext context)
				: base(info, context) { }
		}
	}
}