using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows.Forms;

namespace LF2.IDE
{
	public partial class FormTag : WeifenLuo.WinFormsUI.Docking.DockContent
	{
		public FormTag(MainForm main)
		{
			mainForm = main;
			InitializeComponent();
		}

		public Stopwatch stopWatch = new Stopwatch();

		MainForm mainForm;

		Image blood = Properties.Resources.bpoint, weaponactImage, vactionImage, vactionImageMirror;

		static readonly Cursor
			cur_bdy = new Cursor(Properties.Resources.bdy.GetHicon()),
			cur_itr = new Cursor(Properties.Resources.itr.GetHicon()),
			cur_w = new Cursor(Properties.Resources.wpoint.GetHicon()),
			cur_o = new Cursor(Properties.Resources.opoint.GetHicon()),
			cur_c = new Cursor(Properties.Resources.cpoint.GetHicon()),
			cur_b = new Cursor(Properties.Resources.bpoint.GetHicon()),
			cur_center = new Cursor(Properties.Resources.center.GetHicon());

		public static readonly Point[] weaponPoints =
		{
			new Point(29, 56),
			new Point(24, 40),
			new Point(17, 41),
			new Point(12, 37),
			new Point(9,  33),
			new Point(10, 29),
			new Point(12, 23),
			new Point(14, 15),
			new Point(17, 13),
			new Point(24, 11),
			new Point(29, 13),
			new Point(36, 16),
			new Point(37, 19),
			new Point(37, 26),
			new Point(38, 33),
			new Point(38, 33),
			new Point(34, 36),
			new Point(29, 40)
		};

		public static readonly int[,] caughtPoints =
		{
			{ 130, 53, 41, 39 },
			{ 131, 54, 41, 39 },
			{ 132, 55, 41, 39 },
			{ 133, 30, 33, 36 },
			{ 134, 31, 37, 28 },
			{ 135, 32, 31, 22 },
			{ 136, 33, 27, 46 },
			{ 137, 34, 33, 68 },
			{ 138, 35, 34, 54 },
			{ 139, 40, 40, 36 },
			{ 140, 41, 36, 38 },
			{ 141, 42, 44, 41 },
			{ 142, 43, 46, 51 },
			{ 143, 44, 45, 66 },
			{ 144, 45, 42, 55 }
		};

		private void Reset_Bdy(object sender, EventArgs e)
		{
			tagBox.ClearBdyList();
		}

		private void Reset_Itr(object sender, EventArgs e)
		{
			tagBox.ClearItrList();
		}

		private void Reset_W(object sender, EventArgs e)
		{
			tagBox.WPoint = null;
			tagBox.Refresh();
		}

		private void Reset_O(object sender, EventArgs e)
		{
			tagBox.OPoint = null;
			tagBox.Refresh();
		}

		private void Reset_C(object sender, EventArgs e)
		{
			tagBox.CPoint = null;
			tagBox.Refresh();
		}

		private void Reset_B(object sender, EventArgs e)
		{
			tagBox.BPoint = null;
			tagBox.Refresh();
		}

		List<Rectangle> bdyRectangles = new List<Rectangle>(), itrRectangles = new List<Rectangle>();

		public string Generate()
		{
			bool newLineState = false;
			StringBuilder txt = new StringBuilder();
			foreach (var tagy in tagBox.BdyTags)
			{
				string x = tagy.x.ToString(), y = tagy.y.ToString(), w = tagy.w.ToString(), h = tagy.h.ToString(),
					kind = tagy.kind.ToString();
				if (newLineState)
					txt.AppendLine();
				txt.Append("   bdy:\r\n      kind: ").Append(kind).Append("  x: ").Append(x).Append("  y: ").Append(y).Append("  w: ").Append(w).Append("  h: ").Append(h).Append("\r\n   bdy_end:");
				newLineState = true;
			}
			foreach (var tagy in tagBox.ItrTags)
			{
				string x = tagy.x.ToString(), y = tagy.y.ToString(), w = tagy.w.ToString(), h = tagy.h.ToString(),
					dvx = tagy.dvx.ToString(), dvy = tagy.dvy.ToString(), arest = tagy.arest.ToString(), vrest = tagy.vrest.ToString(),
					fall = tagy.fall.ToString(), bdefend = tagy.bdefend.ToString(),
					injury = tagy.injury.ToString(), zwidth = tagy.zwidth.ToString(), effect = tagy.effect.ToString(),
					catchingact = tagy.catchingact.ToString(), caughtact = tagy.caughtact.ToString(),
					kind = tagy.kind.ToString();
				if (newLineState)
					txt.AppendLine();
				txt.Append("   itr:\r\n      kind: ").Append(kind);
				switch (kind)
				{
					case "0":
					case "6":
						txt.Append("  x: ").Append(x).Append("  y: ").Append(y).Append("  w: ").Append(w).Append("  h: ").Append(h).Append("  dvx: ").Append(dvx).Append("  dvy: ").Append(y).Append((arest != "" ? "  arest: " + arest : "")).Append((vrest != "" ? "  vrest: " + vrest : "")).Append((fall != "" ? "  fall: " + fall : "")).Append((bdefend == "" ? "" : "  bdefend: " + bdefend)).Append("  injury: ").Append(injury).Append((zwidth == "" ? "" : "  zwidth: " + zwidth)).Append((effect == "" ? "" : "\r\n      effect: " + effect));
						break;
					case "1":
					case "3":
						txt.Append("  x: ").Append(x).Append("  y: ").Append(y).Append("  w: ").Append(w).Append("  h: ").Append(h).Append("  catchingact: ").Append(catchingact).Append("  caughtact: ").Append(caughtact);
						break;
					case "2":
					case "7":
					case "14":
						txt.Append("  x: ").Append(x).Append("  y: ").Append(y).Append("  w: ").Append(w).Append("  h: ").Append(h).Append((arest != "" ? "  arest: " + arest : "")).Append((vrest != "" ? "  vrest: " + vrest : "")).Append((effect == "" ? "" : "\r\n      effect: " + effect));
						break;
					case "4":
						txt.Append("  x: ").Append(x).Append("  y: ").Append(y).Append("  w: ").Append(w).Append("  h: ").Append(h).Append("  dvx: ").Append(dvx).Append((arest != "" ? "  arest: " + arest : "")).Append((vrest != "" ? "  vrest: " + vrest : "")).Append((fall != "" ? "  fall: " + fall : "")).Append((bdefend == "" ? "" : "  bdefend: " + bdefend)).Append("  injury: ").Append(injury);
						break;
					case "5":
						txt.Append("  x: ").Append(x).Append("  y: ").Append(y).Append("  w: ").Append(w).Append("  h: ").Append(h).Append("  dvx: 8  fall: 20  bdefend: 16  injury: 789");
						break;
					case "10":
					case "11":
						txt.Append("  x: ").Append(x).Append("  y: ").Append(y).Append("  w: ").Append(w).Append("  h: ").Append(h).Append((arest != "" ? "  arest: " + arest : "")).Append((vrest != "" ? "  vrest: " + vrest : "")).Append("  injury: ").Append(injury).Append((zwidth == "" ? "" : "  zwidth: " + zwidth));
						break;
					case "15":
					case "16":
						txt.Append("  x: ").Append(x).Append("  y: ").Append(y).Append("  w: ").Append(w).Append("  h: ").Append(h).Append("  dvx: ").Append(dvx).Append("  dvy: ").Append(y).Append((arest != "" ? "  arest: " + arest : "")).Append((vrest != "" ? "  vrest: " + vrest : "")).Append((fall != "" ? "  fall: " + fall : "")).Append((bdefend == "" ? "" : "  bdefend: " + bdefend)).Append("  injury: ").Append(injury).Append((zwidth == "" ? "" : "  zwidth: " + zwidth));
						break;
					case "8":
						txt.Append("  x: ").Append(x).Append("  y: ").Append(y).Append("  w: ").Append(w).Append("  h: ").Append(h).Append("  dvx: ").Append(dvx).Append("  injury: ").Append(injury);
						break;
					case "9":
						txt.Append("  x: ").Append(x).Append("  y: ").Append(y).Append("  w: ").Append(w).Append("  h: ").Append(h).Append("  dvx: ").Append(dvx).Append((arest != "" ? "  arest: " + arest : "")).Append((vrest != "" ? "  vrest: " + vrest : "")).Append((fall != "" ? "  fall: " + fall : "")).Append("  injury: ").Append(injury);
						break;
					default:
						if (x != "")
							txt.Append("  x: ").Append(x);
						if (y != "")
							txt.Append("  y: ").Append(y);
						if (w != "")
							txt.Append("  w: ").Append(w);
						if (h != "")
							txt.Append("  h: ").Append(h);
						if (dvx != "")
							txt.Append("  dvx: ").Append(dvx);
						if (y != "")
							txt.Append("  dvy: ").Append(y);
						if (arest != "")
							txt.Append("  arest: ").Append(arest);
						if (vrest != "")
							txt.Append("  vrest: ").Append(vrest);
						if (fall != "")
							txt.Append("  fall: ").Append(fall);
						if (bdefend != "")
							txt.Append("  bdefend: ").Append(bdefend);
						if (injury != "")
							txt.Append("  injury: ").Append(injury);
						if (zwidth != "")
							txt.Append("  zwidth: ").Append(zwidth);
						if (effect != "")
							txt.Append("\r\n      effect: ").Append(effect);
						if (catchingact != "")
							txt.Append("  catchingact: ").Append(catchingact);
						if (caughtact != "")
							txt.Append("  caughtact: ").Append(caughtact);
						break;
				}
				txt.Append("\r\n   itr_end:");
				newLineState = true;
			}
			if (tagBox.WPoint != null)
			{
				var tagy = tagBox.WPoint;
				string x = tagy.x.ToString(), y = tagy.y.ToString(),
					dvx = tagy.dvx.ToString(), dvy = tagy.dvy.ToString(), dvz = tagy.dvz.ToString(),
					weaponact = tagy.weaponact.ToString(),
					attacking = tagy.attacking.ToString(),
					cover = tagy.cover.ToString(),
					kind = tagy.kind.ToString();
				if (newLineState)
					txt.AppendLine();
				txt.Append("   wpoint:\r\n      kind: ").Append(kind).Append("  x: ").Append(x).Append("  y: ").Append(y).Append("  weaponact: ").Append(weaponact).Append("  attacking: ").Append(attacking).Append("  cover: ").Append(cover).Append("  dvx: ").Append(dvx).Append("  dvy: ").Append(dvy).Append("  dvz: ").Append(dvz).Append("\r\n   wpoint_end:");
				newLineState = true;
			}
			if (tagBox.OPoint != null)
			{
				var tagy = tagBox.OPoint;
				string x = tagy.x.ToString(), y = tagy.y.ToString(),
					dvx = tagy.dvx.ToString(), dvy = tagy.dvy.ToString(),
					action = tagy.action.ToString(),
					facing = tagy.facing.ToString(),
					oid = tagy.oid.ToString(),
					kind = tagy.kind.ToString();
				if (newLineState)
					txt.AppendLine();
				txt.Append("   opoint:\r\n      kind: ").Append(kind).Append("  x: ").Append(x).Append("  y: ").Append(y).Append("  action: ").Append(action).Append("  dvx: ").Append(dvx).Append("  dvy: ").Append(dvy).Append("  oid: ").Append(oid).Append("  facing: ").Append(facing).Append("\r\n   opoint_end:");
				newLineState = true;
			}
			if (tagBox.CPoint != null)
			{
				var tagy = tagBox.CPoint;
				string x = tagy.x.ToString(), y = tagy.y.ToString(),
					injury = tagy.injury.ToString(),
					vaction = tagy.vaction.ToString(),
					taction = tagy.taction.ToString(),
					aaction = tagy.aaction.ToString(),
					throwvx = tagy.throwvx.ToString(),
					throwvy = tagy.throwvy.ToString(),
					throwvz = tagy.throwvz.ToString(),
					hurtable = tagy.hurtable.ToString(),
					throwinjury = tagy.throwinjury.ToString(),
					decrease = tagy.decrease.ToString(),
					dircontrol = tagy.dircontrol.ToString(),
					cover = tagy.cover.ToString(),
					fronthurtact = tagy.fronthurtact.ToString(),
					backhurtact = tagy.backhurtact.ToString(),
					kind = tagy.kind.ToString();
				if (newLineState)
					txt.AppendLine();
				txt.Append("   cpoint:\r\n      kind: ").Append(kind);
				if (x != "")
					txt.Append("  x: ").Append(x);
				if (y != "")
					txt.Append("  y: ").Append(y);
				if (injury != "")
					txt.Append("  injury: ").Append(injury);
				if (vaction != "")
					txt.Append("  vaction: ").Append(vaction);
				if (aaction != "")
					txt.Append("  aaction: ").Append(aaction);
				if (taction != "")
					txt.Append("  taction: ").Append(taction);
				if (throwvx != "")
					txt.Append("  throwvx: ").Append(throwvx);
				if (throwvy != "")
					txt.Append("  throwvy: ").Append(throwvy);
				if (throwvz != "")
					txt.Append("  throwvz: ").Append(throwvz);
				if (hurtable != "")
					txt.Append("  hurtable: ").Append(hurtable);
				if (throwinjury != "")
					txt.Append("  throwinjury: ").Append(throwinjury);
				if (decrease != "")
					txt.Append("  decrease: ").Append(decrease);
				if (dircontrol != "")
					txt.Append("  dircontrol: ").Append(dircontrol);
				if (cover != "")
					txt.Append("  cover: ").Append(cover);
				if (fronthurtact != "")
					txt.Append("  fronthurtact: ").Append(fronthurtact);
				if (backhurtact != "")
					txt.Append("  backhurtact: ").Append(backhurtact);
				txt.Append("\r\n   cpoint_end:");
				newLineState = true;
			}
			if (tagBox.BPoint != null)
			{
				if (newLineState)
					txt.AppendLine();
				var tagy = tagBox.BPoint;
				string x = tagy.Value.X.ToString(), y = tagy.Value.Y.ToString();
				txt.Append("   bpoint:\r\n      x: ").Append(x).Append("  y: ").Append(y).Append("\r\n   bpoint_end:");
			}

			return txt.ToString();
		}

		void RichTextBoxKeyDown(object sender, KeyEventArgs e)
		{
			if (e.KeyCode == Keys.V && e.Control)
			{
				(sender as RichTextBox).Paste(DataFormats.GetFormat(DataFormats.UnicodeText));
				e.Handled = true;
			}
		}

		void WeaponactChanged(object sender, EventArgs e)
		{
			tagBox.WPointImage = weaponactImage = (Image)Properties.Resources.ResourceManager.GetObject("weapon" + wpoint_weaponact.Text);
			if (tagBox.WPointImage != null)
				tagBox.WPointImageOffset = weaponPoints[wpoint_weaponact.SelectedIndex];
			else
				tagBox.WPointImageOffset = Point.Empty;
		}

		void ImageIndexChanged(object sender, EventArgs e)
		{
			if (mainForm.lastActiveFrame != null)
				tagBox.Image = mainForm.lastActiveFrame[mainForm.lastActiveDoc.frameIndexTag = (int)numericUpDown_ImageIndex.Value];

			numericUpDown_ImageIndex.Refresh();
			tagBox.Refresh();
		}

		void CopyToClipboard(object sender, EventArgs e)
		{
			Clipboard.SetText(Generate());
		}

		void TagChanged(object sender, EventArgs e)
		{
			switch (tabControl_Tags.SelectedIndex)
			{
				case 0: //bdy
					tagBox.DrawingMode = TagBox.DrawingMode.Bdy;
					tagBox.Cursor = cur_bdy;
					break;
				case 1: //itr
					tagBox.DrawingMode = TagBox.DrawingMode.Itr;
					tagBox.Cursor = cur_itr;
					break;
				case 2: //wpoint
					tagBox.DrawingMode = TagBox.DrawingMode.WPoint;
					tagBox.Cursor = cur_w;
					break;
				case 3: //opoint
					tagBox.DrawingMode = TagBox.DrawingMode.OPoint;
					tagBox.Cursor = cur_o;
					break;
				case 4: //cpoint
					tagBox.DrawingMode = TagBox.DrawingMode.CPoint;
					tagBox.Cursor = cur_c;
					break;
				case 5: //bpoint
					tagBox.DrawingMode = TagBox.DrawingMode.BPoint;
					tagBox.Cursor = cur_b;
					tagBox.BPointImage = Properties.Resources.bpoint;
					tagBox.BPointImageOffset = new Point(tagBox.BPointImage.Width / 2, tagBox.BPointImage.Height / 2);
					break;
				case 6: //center
					tagBox.DrawingMode = TagBox.DrawingMode.Center;
					tagBox.Cursor = cur_center;
					break;
			}
		}

		void CoverChanged(object sender, EventArgs e)
		{
			switch (tagBox.DrawingMode)
			{
				case TagBox.DrawingMode.WPoint:
					tagBox.WPointCover = (wpoint_cover.Text != "0" && wpoint_cover.Text != "");
					break;
				case TagBox.DrawingMode.CPoint:
					tagBox.CPointCover = (cpoint_cover.Text != "0" && cpoint_cover.Text != "");
					break;
			}
		}

		bool editing = false;

		void TagBoxPointChanged(object sender, EventArgs e)
		{
			editing = true;
			switch (tagBox.DrawingMode)
			{
				case TagBox.DrawingMode.WPoint:
					wpoint_x.Text = tagBox.WPointPoint.Value.X.ToString();
					wpoint_y.Text = tagBox.WPointPoint.Value.Y.ToString();
					wpoint_x.Refresh();
					wpoint_y.Refresh();
					break;
				case TagBox.DrawingMode.OPoint:
					opoint_x.Text = tagBox.OPointPoint.Value.X.ToString();
					opoint_y.Text = tagBox.OPointPoint.Value.Y.ToString();
					opoint_x.Refresh();
					opoint_y.Refresh();
					break;
				case TagBox.DrawingMode.CPoint:
					cpoint_x.Text = tagBox.CPointPoint.Value.X.ToString();
					cpoint_y.Text = tagBox.CPointPoint.Value.Y.ToString();
					cpoint_x.Refresh();
					cpoint_y.Refresh();
					break;
				case TagBox.DrawingMode.BPoint:
					bpoint_x.Text = tagBox.BPoint.Value.X.ToString();
					bpoint_y.Text = tagBox.BPoint.Value.Y.ToString();
					bpoint_x.Refresh();
					bpoint_y.Refresh();
					break;
				case TagBox.DrawingMode.Center:
					centerx.Text = tagBox.Center.Value.X.ToString();
					centery.Text = tagBox.Center.Value.Y.ToString();
					centerx.Refresh();
					centery.Refresh();
					break;
			}
			editing = false;
			tagBox.Refresh();
		}

		void TagBoxVectorChanged(object sender, EventArgs e)
		{
			editing = true;
			switch (tagBox.DrawingMode)
			{
				case TagBox.DrawingMode.Itr:
					if (tagBox.ActiveItr == null)
						break;
					Point itr = tagBox.ActiveItr.Vector;
					itr_dvx.Text = itr.X.ToString();
					itr_dvy.Text = itr.Y.ToString();
					itr_dvx.Refresh();
					itr_dvy.Refresh();
					break;
				case TagBox.DrawingMode.WPoint:
					if (tagBox.WPointVector == null)
						break;
					Point w = tagBox.WPointVector.Value;
					wpoint_dvx.Text = w.X.ToString();
					wpoint_dvy.Text = w.Y.ToString();
					wpoint_dvx.Refresh();
					wpoint_dvy.Refresh();
					break;
				case TagBox.DrawingMode.OPoint:
					if (tagBox.OPointVector == null)
						break;
					Point o = tagBox.OPointVector.Value;
					opoint_dvx.Text = o.X.ToString();
					opoint_dvy.Text = o.Y.ToString();
					opoint_dvx.Refresh();
					opoint_dvy.Refresh();
					break;
				case TagBox.DrawingMode.CPoint:
					if (tagBox.CPointVector == null)
						break;
					Point c = tagBox.CPointVector.Value;
					cpoint_throwvx.Text = c.X.ToString();
					cpoint_throwvy.Text = c.Y.ToString();
					cpoint_throwvx.Refresh();
					cpoint_throwvy.Refresh();
					break;
			}
			editing = false;
			tagBox.Refresh();
		}

		void TagBoxRectangleChanged(object sender, EventArgs e)
		{
			editing = true;
			switch (tagBox.DrawingMode)
			{
				case TagBox.DrawingMode.Bdy:
					if (tagBox.ActiveBdy == null)
						break;
					Rectangle bdy = tagBox.ActiveRectangle;
					bdy_x.Text = bdy.X.ToString();
					bdy_y.Text = bdy.Y.ToString();
					bdy_w.Text = bdy.Width.ToString();
					bdy_h.Text = bdy.Height.ToString();
					bdy_x.Refresh();
					bdy_y.Refresh();
					bdy_w.Refresh();
					bdy_h.Refresh();
					break;
				case TagBox.DrawingMode.Itr:
					if (tagBox.ActiveItr == null)
						break;
					Rectangle itr = tagBox.ActiveRectangle;
					itr_x.Text = itr.X.ToString();
					itr_y.Text = itr.Y.ToString();
					itr_w.Text = itr.Width.ToString();
					itr_h.Text = itr.Height.ToString();
					itr_x.Refresh();
					itr_y.Refresh();
					itr_w.Refresh();
					itr_h.Refresh();
					break;
			}
			editing = false;
			tagBox.Refresh();
		}

		void BdyRectangleChanged(object sender, EventArgs e)
		{
			if (editing) return;
			try
			{
				tagBox.ActiveRectangle = new Rectangle(int.Parse(bdy_x.Text), int.Parse(bdy_y.Text), int.Parse(bdy_w.Text), int.Parse(bdy_h.Text));
			}
			catch { }
		}

		void ItrRectangleChanged(object sender, EventArgs e)
		{
			if (editing) return;
			try
			{
				tagBox.ActiveRectangle = new Rectangle(int.Parse(itr_x.Text), int.Parse(itr_y.Text), int.Parse(itr_w.Text), int.Parse(itr_h.Text));
			}
			catch { }
		}

		void ItrVectorChanged(object sender, EventArgs e)
		{
			if (editing) return;
			try
			{
				tagBox.ActiveItrVector = new Point(int.Parse(itr_dvx.Text), int.Parse(itr_dvy.Text));
			}
			catch { }
		}

		void WpointPointChanged(object sender, EventArgs e)
		{
			if (editing) return;
			try
			{
				tagBox.WPointPoint = new Point(int.Parse(wpoint_x.Text), int.Parse(wpoint_y.Text));
			}
			catch { }
		}

		void WpointVectorChanged(object sender, EventArgs e)
		{
			if (editing) return;
			try
			{
				tagBox.WPointVector = new Point(int.Parse(wpoint_dvx.Text), int.Parse(wpoint_dvy.Text));
			}
			catch { }
		}

		void OpointPointChanged(object sender, EventArgs e)
		{
			if (editing) return;
			try
			{
				tagBox.OPointPoint = new Point(int.Parse(opoint_x.Text), int.Parse(opoint_y.Text));
			}
			catch { }
		}

		void OpointVectorChanged(object sender, EventArgs e)
		{
			if (editing) return;
			try
			{
				tagBox.OPointVector = new Point(int.Parse(opoint_dvx.Text), int.Parse(opoint_dvy.Text));
			}
			catch { }
		}

		void CpointPointChanged(object sender, EventArgs e)
		{
			if (editing) return;
			try
			{
				tagBox.CPointPoint = new Point(int.Parse(cpoint_x.Text), int.Parse(cpoint_y.Text));
			}
			catch { }
		}

		void CpointVectorChanged(object sender, EventArgs e)
		{
			if (editing) return;
			try
			{
				tagBox.CPointVector = new Point(int.Parse(cpoint_throwvx.Text), int.Parse(cpoint_throwvy.Text));
			}
			catch { }
		}

		void BpointChanged(object sender, EventArgs e)
		{
			if (editing) return;
			try
			{
				tagBox.BPoint = new Point(int.Parse(bpoint_x.Text), int.Parse(bpoint_y.Text));
			}
			catch { }
		}

		void VactionChanged(object sender, EventArgs e)
		{
			bool dir = (cpoint_dircontrol.Text == "0" || cpoint_dircontrol.Text == "");
			vactionImageMirror = (Image)(vactionImage = (Image)Properties.Resources.ResourceManager.GetObject("caught" + caughtPoints[cpoint_vaction.SelectedIndex, 1])).Clone();
			if (vactionImage == null)
			{
				tagBox.CPointImage = null;
				tagBox.CPointImageOffset = Point.Empty;
				return;
			}
			vactionImageMirror.RotateFlip(RotateFlipType.RotateNoneFlipX);
			if (dir)
			{
				tagBox.CPointImage = vactionImageMirror;
				tagBox.CPointImageOffset = new Point(vactionImageMirror.Width - caughtPoints[cpoint_vaction.SelectedIndex, 2], caughtPoints[cpoint_vaction.SelectedIndex, 3]);
			}
			else
			{
				tagBox.CPointImage = vactionImage;
				tagBox.CPointImageOffset = new Point(caughtPoints[cpoint_vaction.SelectedIndex, 2], caughtPoints[cpoint_vaction.SelectedIndex, 3]);
			}
			tagBox.Refresh();
		}

		void DircontrolChanged(object sender, EventArgs e)
		{
			if (vactionImage == null) return;


			if (cpoint_dircontrol.Text == "0" || cpoint_dircontrol.Text == "")
			{
				tagBox.CPointImage = vactionImageMirror;
				tagBox.CPointImageOffset = new Point(vactionImageMirror.Width - caughtPoints[cpoint_vaction.SelectedIndex, 2], caughtPoints[cpoint_vaction.SelectedIndex, 3]);
			}
			else
			{
				tagBox.CPointImage = vactionImage;
				tagBox.CPointImageOffset = new Point(caughtPoints[cpoint_vaction.SelectedIndex, 2], caughtPoints[cpoint_vaction.SelectedIndex, 3]);
			}

		}

		public List<Obj> opointCache = new List<Obj>(128);

		public class Obj
		{
			public int id;
			public string file;
			public List<Frame> frames;

			public Dictionary<int, Bitmap> bmpList;

			public List<SpriteSheet> spriteSheet;
			public Obj() { }

			public Obj(int id, string file, Dictionary<int, Bitmap> bmpList, List<Frame> frames)
			{
				this.id = id;
				this.file = file;
				this.bmpList = bmpList;
				this.frames = frames;
			}

			public void LoadBmpList(string lfDir)
			{
				bmpList = new Dictionary<int, Bitmap>(1024);

			}
		}

		public class Frame
		{
			public int id;
			public int pic;
			public Point center;
			public int centerX
			{
				get { return center.X; }
				set { center.X = value; }
			}
			public int centerY
			{
				get { return center.Y; }
				set { center.Y = value; }
			}

			public Frame() { }

			public Frame(int id, int pic, Point center)
			{
				this.id = id;
				this.pic = pic;
				this.center = center;
			}

			public const string regexPattern = @".*pic: *(\d*).*centerx: *(\d*) *centery: *(\d*)";
		}

		public List<Frame> ParseFrames(string dat)
		{
			List<Frame> frames = new List<Frame>(400);
			List<string> frameStrList = new List<string>(400);
			for (int i = dat.IndexOf("<frame>"); i >= 0; i = dat.IndexOf("<frame>", i + 7))
			{
				if (backgroundWorker_CreateOpointCache.CancellationPending) return null;
				int j = dat.IndexOf("<frame_end>", i + 7);
				if (j < 0) return null;
				frameStrList.Add(dat.Substring(i + 7, j - i - 7));
			}
			for (int i = 0; i < frameStrList.Count; i++)
			{
				if (backgroundWorker_CreateOpointCache.CancellationPending) return frames;
				Match matchfx = Regex.Match(frameStrList[i], " *(\\d*)");
				Match match = Regex.Match(frameStrList[i], Frame.regexPattern);
				int pic, cx, cy, fx;
				int.TryParse(match.Groups[1].Value, out pic);
				int.TryParse(match.Groups[2].Value, out cx);
				int.TryParse(match.Groups[3].Value, out cy);
				int.TryParse(matchfx.Groups[1].Value, out fx);
				Frame frm = new Frame(fx, pic, new Point(cx, cy));
				frames.Add(frm);
			}
			return frames;
		}

		public List<SpriteSheet> ParseFiles(string lfDir, string dat)
		{
			List<SpriteSheet> fileList = new List<SpriteSheet>(8);
			int begin = dat.IndexOf("<bmp_begin>"), end = dat.IndexOf("<bmp_end>", begin + 11);
			if (begin < 0 || end < 0) return null;
			string script = dat.Substring(begin + 11, end - begin);
			MatchCollection matches = Regex.Matches(script, SpriteSheet.regexPattern);
			if (matches.Count < 1) return null;
			for (int i = 0; i < matches.Count; i++)
			{
				if (backgroundWorker_CreateOpointCache.CancellationPending) return fileList;
				string path = lfDir + "\\" + matches[i].Groups[3].Value.Trim();
				Bitmap img = (Bitmap)Image.FromFile(path);
				img.Tag = Path.GetFileName(path);
				int si = int.Parse(matches[i].Groups[1].Value),
					ei = int.Parse(matches[i].Groups[2].Value),
					w = int.Parse(matches[i].Groups[4].Value),
					h = int.Parse(matches[i].Groups[5].Value),
					r = int.Parse(matches[i].Groups[6].Value),
					c = int.Parse(matches[i].Groups[7].Value);
				SpriteSheet fm = new SpriteSheet(si, ei, img.Tag as string, img, w, h, c, r);
				fileList.Add(fm);
			}
			return fileList;
		}

		public Dictionary<int, Bitmap> ParseBmpList(List<SpriteSheet> fileList)
		{
			Dictionary<int, Bitmap> frames = new Dictionary<int, Bitmap>(256);

			for (int i = 0; i < fileList.Count; i++)
			{
				SpriteSheet fm = fileList[i];
				int k = fm.startIndex;
				for (int r = 0; r < fm.row; r++)
				{
					for (int c = 0; c < fm.col && k <= fm.endIndex; c++, k++)
					{
						if (backgroundWorker_CreateOpointCache.CancellationPending) return frames;
						Bitmap btm = new Bitmap(fm.w, fm.h, PixelFormat.Format32bppRgb);
						using (Graphics g = Graphics.FromImage(btm))
							g.DrawImage(fm.sprite, new Rectangle(0, 0, fm.w, fm.h), new Rectangle(c * (fm.w + 1), r * (fm.h + 1), fm.w, fm.h), GraphicsUnit.Pixel);
						frames[k] = btm;
					}
				}
			}
			return frames;
		}

		void OpointCacheButtonClick(object sender, EventArgs e)
		{
			StartCaching();
		}

		string cacheButtonString;

		public void StartCaching()
		{
			if (!backgroundWorker_CreateOpointCache.IsBusy)
			{
				cacheButtonString = button_CreateOpointCache.Text;
				opointCache.Clear();
				opoint_oid.Items.Clear();
				GC.Collect();
				if (!stopWatch.IsRunning)
					stopWatch.Start();
				button_CreateOpointCache.Text = "Cancel";
				backgroundWorker_CreateOpointCache.RunWorkerAsync();
			}
			else
				backgroundWorker_CreateOpointCache.CancelAsync();
		}

		void CreateOpointCache(object sender, DoWorkEventArgs e)
		{
			List<Obj> opointCache = new List<Obj>(128);
			string lfDir;
			string data_txt = (lfDir = Path.GetDirectoryName(Settings.Current.lfPath)) + "\\data\\data.txt";
			string data = File.ReadAllText(data_txt, Encoding.Default);
			int st = data.IndexOf("<object>"), end = data.IndexOf("<object_end>", st + 8);
			if (st < 0 || end < 0) return;
			data = data.Substring(st + 8, end - st);
			MatchCollection matches = Regex.Matches(data, @"id: *(\d*) *.*file: *(.*)");
			for (int i = 0; i < matches.Count; i++)
			{
				if (backgroundWorker_CreateOpointCache.CancellationPending)
				{
					e.Cancel = true;
					return;
				}
				Match match = matches[i];
				int id;
				int.TryParse(match.Groups[1].Value.Trim(), out id);

				string file;
				int sh;
				if ((sh = (file = match.Groups[2].Value.Trim()).IndexOf('#')) >= 0)
					file = file.Substring(0, sh).Trim();

				backgroundWorker_CreateOpointCache.ReportProgress((int)(i / (float)(matches.Count) * 100), file);

				string dat = LF2DataUtil.Decrypt(lfDir + "\\" + file);
				List<SpriteSheet> fileList = ParseFiles(lfDir, dat);
				if (fileList == null) continue;
				Dictionary<int, Bitmap> bmpList = ParseBmpList(fileList);
				List<Frame> frames = ParseFrames(dat);
				opointCache.Add(new Obj(id, file, bmpList, frames));
			}

			e.Result = opointCache;
		}

		void OpointCacheCreatorProgressChanged(object sender, ProgressChangedEventArgs e)
		{
			label_CacheCreationProgress.Text = (string)e.UserState;
			progressBar_CacheCreation.Value = e.ProgressPercentage;
		}

		void OpointCacheCreatorRunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
		{
			if (e.Error != null)
			{
				mainForm.formEventLog.Error(e.Error, "Opoint Caching Error");
			}
			else if (!e.Cancelled && e.Result != null)
			{
				opointCache.AddRange(e.Result as List<Obj>);

				for (int i = 0; i < opointCache.Count; i++)
					opoint_oid.Items.Add(opointCache[i].id);

				progressBar_CacheCreation.Value = 100;
				label_CacheCreationProgress.Text = "data\\...";

				mainForm.formEventLog.Log("Opoint Cache Created: " + stopWatch.Elapsed, true);
			}
			button_CreateOpointCache.Text = cacheButtonString;
			stopWatch.Reset();
		}

		void OidChanged(object sender, EventArgs e)
		{
			int x = opoint_action.SelectedIndex, id = opoint_oid.SelectedIndex, pic;
			if (id < 0)
			{
				opoint_action.Items.Clear();
				return;
			}
			Obj o = opointCache[id];
			opoint_action.Items.Clear();
			for (int i = 0; i < o.frames.Count; i++)
				opoint_action.Items.Add(o.frames[i].id);
			x = opoint_action.SelectedIndex = 0;
			pic = o.frames[x].pic;
			tagBox.OPointImage = opointImage = ((pic != 999 && o.bmpList.ContainsKey(pic)) ? o.bmpList[pic] : null);
			tagBox.OPointImageOffset = opointOffset = o.frames[x].center;
			tagBox.Refresh();
		}

		Image opointImage;
		Point opointOffset = Point.Empty;

		void Opoint_actionChanged(object sender, EventArgs e)
		{
			int x = opoint_action.SelectedIndex, id = opoint_oid.SelectedIndex, pic;
			if (id < 0)
			{
				opoint_action.Items.Clear();
				return;
			}
			if (x < 0) return;
			Obj o = opointCache[id];
			pic = o.frames[x].pic;
			tagBox.OPointImage = opointImage = ((pic != 999 && o.bmpList.ContainsKey(pic)) ? o.bmpList[pic] : null);
			tagBox.OPointImageOffset = opointOffset = o.frames[x].center;
			tagBox.Refresh();
		}

		private void button_AddBdy_Click(object sender, EventArgs e)
		{

		}

		private void FormTag_KeyDown(object sender, KeyEventArgs e)
		{
			tagBox.ControlKey = e.Control;
			tagBox.ShiftKey = e.Shift;
			tagBox.Refresh();
			tagBox.ControlKey = e.Control;
			tagBox.ShiftKey = e.Shift;
			tagBox.Refresh();
		}

		private void FormTag_KeyUp(object sender, KeyEventArgs e)
		{
			tagBox.ShiftKey = e.Shift;
			tagBox.ControlKey = e.Control;
			tagBox.Refresh();
			tagBox.ShiftKey = e.Shift;
			tagBox.ControlKey = e.Control;
			tagBox.Refresh();
		}

		private void FormTag_Load(object sender, EventArgs e)
		{
			TagChanged(tabControl_Tags, EventArgs.Empty);
		}

		private void checkBox_tag_CheckedChanged(object sender, EventArgs e)
		{
			if (checkBox_bdy.Checked)
				tagBox.DisplayModes |= TagBox.DisplayModes.Bdy;
			else
				tagBox.DisplayModes &= ~TagBox.DisplayModes.Bdy;
			if (checkBox_itr.Checked)
				tagBox.DisplayModes |= TagBox.DisplayModes.Itr;
			else
				tagBox.DisplayModes &= ~TagBox.DisplayModes.Itr;
			if (checkBox_w.Checked)
				tagBox.DisplayModes |= TagBox.DisplayModes.WPoint;
			else
				tagBox.DisplayModes &= ~TagBox.DisplayModes.WPoint;
			if (checkBox_o.Checked)
				tagBox.DisplayModes |= TagBox.DisplayModes.OPoint;
			else
				tagBox.DisplayModes &= ~TagBox.DisplayModes.OPoint;
			if (checkBox_c.Checked)
				tagBox.DisplayModes |= TagBox.DisplayModes.CPoint;
			else
				tagBox.DisplayModes &= ~TagBox.DisplayModes.CPoint;
			if (checkBox_b.Checked)
				tagBox.DisplayModes |= TagBox.DisplayModes.BPoint;
			else
				tagBox.DisplayModes &= ~TagBox.DisplayModes.BPoint;
			if (checkBox_center.Checked)
				tagBox.DisplayModes |= TagBox.DisplayModes.Center;
			else
				tagBox.DisplayModes &= ~TagBox.DisplayModes.Center;
		}

		private void CenterChanged(object sender, EventArgs e)
		{
			if (editing) return;
			try
			{
				tagBox.Center = new Point(int.Parse(centerx.Text), int.Parse(centery.Text));
			}
			catch { }
		}

		private void checkBoxLinkage_CheckedChanged(object sender, EventArgs e)
		{
			checkBoxLinkage.ImageIndex = checkBoxLinkage.Checked ? 0 : 1;
		}

		private bool SyncChanges()
		{
			DocumentForm theDoc = mainForm.ActiveDocument;
			if (theDoc == null)
				return false;
			int fs = theDoc.Scintilla.Text.LastIndexOf("<frame>", theDoc.Scintilla.Lines.Current.EndPosition);
			if (fs < 0)
				return false;
			int fe = theDoc.Scintilla.Text.IndexOf("<frame_end>", fs);
			if (fe < 0)
				return false;
			var fr = theDoc.Scintilla.GetRange(fs, fe);
			return false;
		}

		static readonly List<char> tokenDelim = new List<char>(new char[]{ ' ', '\t', '\r', '\n' }),
			tokemDelimEnd = new List<char>(new char[]{ '>', ':' }),
			tokenDelimBegin = new List<char>(new char[]{ '<' });

		public string[] TokenizeFrame(string frame)
		{
			List<string> tokens = new List<string>(128);
			bool spaceState = false;
			int tokenStart = 0;
			for (int i = 0; i < frame.Length; i++)
			{
				if (tokemDelimEnd.Contains(frame[i]))
				{
					if (spaceState)
					{
						tokenStart = i;
					}
					else
					{
						tokens.Add(frame.Substring(tokenStart, i - tokenStart));
					}
				}
				if (char.IsWhiteSpace(frame[i]))
				{
					if (spaceState)
					{
						
					}
					else
					{

					}
				}
				if (!char.IsWhiteSpace(frame[i]))
				{
					if (spaceState)
					{
						
					}
					else
					{

					}
				}
			}
			return tokens.ToArray();
		}

		private void tagBox_MouseUp(object sender, MouseEventArgs e)
		{
		}
	}
}
