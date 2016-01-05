#region Using Directives

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;

#endregion

namespace TagBox
{
	#region Enums

	public enum DrawingMode : byte
	{
		None,
		Bdy,
		Itr,
		WPoint,
		OPoint,
		CPoint,
		BPoint,
		Center
	}

	[Flags]
	public enum DisplayModes : byte
	{
		None = 0,
		Bdy = 1,
		Itr = 2,
		WPoint = 4,
		OPoint = 8,
		CPoint = 16,
		BPoint = 32,
		Center = 64,
		All = 127
	}

	public enum PictureMode : byte
	{
		Normal,
		CenterImage,
		CenterOrigin,
		Stretch,
		Zoom,
		FillZoom,
		ShrinkOnly,
		GrowOnly,
		Tile,
		AutoSize
	}

	#endregion

	#region Data classes

	public class TagBoxData
	{
		public List<Bdy> bdys = new List<Bdy>(2);
		public List<Itr> itrs = new List<Itr>(2);
		public WPoint wpoint = null;
		public OPoint opoint = null;
		public CPoint cpoint = null;
		public Point? bpoint = null;
		public Point? center = null;
	}

	public class Bdy
	{
		public event EventHandler DataChanged;

		private int? _kind;
		public int? kind
		{
			get { return _kind; }
			set
			{
				_kind = value;

				if (KindChanged != null)
					KindChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler KindChanged;

		public int x;
		public int y;
		public int w;
		public int h;

		public Bdy() { }

		public Bdy(Rectangle rect)
		{
			this.Rectangle = rect;
		}

		public Rectangle Rectangle { get { return new Rectangle(x, y, w, h); } set { x = value.X; y = value.Y; w = value.Width; h = value.Height; } }

		public Point Point { get { return new Point(x, y); } set { x = value.X; y = value.Y; } }
	}

	public class Itr
	{
		public event EventHandler DataChanged;

		private int _kind;
		public int kind
		{
			get { return _kind; }
			set
			{
				_kind = value;

				if (KindChanged != null)
					KindChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler KindChanged;

		public int x;
		public int y;
		public int w;
		public int h;
		public int dvx;
		public int dvy;

		private int? _arest;
		public int? arest
		{
			get { return _arest; }
			set
			{
				_arest = value;

				if (ArestChanged != null)
					ArestChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler ArestChanged;

		private int? _vrest;
		public int? vrest
		{
			get { return _vrest; }
			set
			{
				_vrest = value;

				if (VrestChanged != null)
					VrestChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler VrestChanged;

		private int? _fall;
		public int? fall
		{
			get { return _fall; }
			set
			{
				_fall = value;

				if (FallChanged != null)
					FallChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler FallChanged;

		private int? _bdefend;
		public int? bdefend
		{
			get { return _bdefend; }
			set
			{
				_bdefend = value;

				if (BdefendChanged != null)
					BdefendChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler BdefendChanged;

		private int? _injury;
		public int? injury
		{
			get { return _injury; }
			set
			{
				_injury = value;

				if (injuryChanged != null)
					injuryChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler injuryChanged;

		private int? _zwidth;
		public int? zwidth
		{
			get { return _zwidth; }
			set
			{
				_zwidth = value;

				if (ZwidthChanged != null)
					ZwidthChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler ZwidthChanged;

		private int? _effect;
		public int? effect
		{
			get { return _effect; }
			set
			{
				_effect = value;

				if (EffectChanged != null)
					EffectChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler EffectChanged;

		private int? _catchingact1;
		public int? catchingact1
		{
			get { return _catchingact1; }
			set
			{
				_catchingact1 = value;

				if (CatchingactChanged != null)
					CatchingactChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler CatchingactChanged;

		private int? _caughtact1;
		public int? caughtact1
		{
			get { return _caughtact1; }
			set
			{
				_caughtact1 = value;

				if (CaughtactChanged != null)
					CaughtactChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler CaughtactChanged;

		private int? _catchingact2;
		public int? catchingact2
		{
			get { return _catchingact2; }
			set
			{
				_catchingact2 = value;

				if (CatchingactChanged != null)
					CatchingactChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}

		private int? _caughtact2;
		public int? caughtact2
		{
			get { return _caughtact2; }
			set
			{
				_caughtact2 = value;

				if (CaughtactChanged != null)
					CaughtactChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}

		public Itr() { }

		public Itr(Rectangle rect)
		{
			this.Rectangle = rect;
		}

		public Rectangle Rectangle { get { return new Rectangle(x, y, w, h); } set { x = value.X; y = value.Y; w = value.Width; h = value.Height; } }

		public Point Vector { get { return new Point(dvx, dvy); } set { dvx = value.X; dvy = value.Y; } }

		public Point Point { get { return new Point(x, y); } set { x = value.X; y = value.Y; } }
	}

	public class WPoint
	{
		public event EventHandler DataChanged;

		private int? _kind;
		public int? kind
		{
			get { return _kind; }
			set
			{
				_kind = value;

				if (KindChanged != null)
					KindChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler KindChanged;

		public int x;
		public int y;

		private int? _weaponact;
		public int? weaponact
		{
			get { return _weaponact; }
			set
			{
				_weaponact = value;

				if (WeaponactChanged != null)
					WeaponactChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler WeaponactChanged;

		private int? _attacking;
		public int? attacking
		{
			get { return _attacking; }
			set
			{
				_attacking = value;

				if (AttackingChanged != null)
				{
					AttackingChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler AttackingChanged;

		private bool? _cover;
		public bool? cover
		{
			get { return _cover; }
			set
			{
				_cover = value;

				if (CoverChanged != null)
				{
					CoverChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler CoverChanged;

		public int dvx;
		public int dvy;

		private int? _dvz;
		public int? dvz
		{
			get { return _dvz; }
			set
			{
				_dvz = value;

				if (DvzChanged != null)
				{
					DvzChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler DvzChanged;

		public Point Point { get { return new Point(x, y); } set { x = value.X; y = value.Y; } }

		public Point Vector { get { return new Point(dvx, dvy); } set { dvx = value.X; dvy = value.Y; } }
	}

	public class OPoint
	{
		public event EventHandler DataChanged;

		private int? _kind;
		public int? kind
		{
			get { return _kind; }
			set
			{
				_kind = value;

				if (KindChanged != null)
					KindChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler KindChanged;

		public int x;
		public int y;

		private int? _action;
		public int? action
		{
			get { return _action; }
			set
			{
				_action = value;

				if (ActionChanged != null)
					ActionChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler ActionChanged;

		public int dvx;
		public int dvy;

		private int? _oid;
		public int? oid
		{
			get { return _oid; }
			set
			{
				_oid = value;

				if (OidChanged != null)
					OidChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler OidChanged;

		private int? _facing;
		public int? facing
		{
			get { return _facing; }
			set
			{
				_facing = value;

				if (FacingChanged != null)
					FacingChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}

		public event EventHandler FacingChanged;

		public Point Point { get { return new Point(x, y); } set { x = value.X; y = value.Y; } }

		public Point Vector { get { return new Point(dvx, dvy); } set { dvx = value.X; dvy = value.Y; } }
	}

	public class CPoint
	{
		public event EventHandler DataChanged;

		private int? _kind;
		public int? kind
		{
			get { return _kind; }
			set
			{
				_kind = value;

				if (KindChanged != null)
					KindChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler KindChanged;

		public int x;
		public int y;

		private int? _injury;
		public int? injury
		{
			get { return _injury; }
			set
			{
				_injury = value;

				if (injuryChanged != null)
					injuryChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler injuryChanged;

		private int? _vaction;
		public int? vaction
		{
			get { return _vaction; }
			set
			{
				_vaction = value;

				if (VactionChanged != null)
					VactionChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler VactionChanged;

		private int? _aaction;
		public int? aaction
		{
			get { return _aaction; }
			set
			{
				_aaction = value;

				if (AactionChanged != null)
					AactionChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler AactionChanged;

		private int? _taction;
		public int? taction
		{
			get { return _taction; }
			set
			{
				_taction = value;

				if (TactionChanged != null)
					TactionChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler TactionChanged;

		public int throwvx;
		public int throwvy;

		private int? _throwvz;
		public int? throwvz
		{
			get { return _throwvz; }
			set
			{
				_throwvz = value;

				if (ThrowvzChanged != null)
					ThrowvzChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler ThrowvzChanged;

		private bool? _hurtable;
		public bool? hurtable
		{
			get { return _hurtable; }
			set
			{
				_hurtable = value;

				if (HurtableChanged != null)
					HurtableChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler HurtableChanged;

		private int? _throwinjury;
		public int? throwinjury
		{
			get { return _throwinjury; }
			set
			{
				_throwinjury = value;

				if (ThrowinjuryChanged != null)
					ThrowinjuryChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler ThrowinjuryChanged;

		private int? _decrease;
		public int? decrease
		{
			get { return _decrease; }
			set
			{
				_decrease = value;

				if (DecreaseChanged != null)
					DecreaseChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler DecreaseChanged;

		private bool? _dircontrol;
		public bool? dircontrol
		{
			get { return _dircontrol; }
			set
			{
				_dircontrol = value;

				if (DircontrolChanged != null)
					DircontrolChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler DircontrolChanged;

		private bool? _cover;
		public bool? cover
		{
			get { return _cover; }
			set
			{
				_cover = value;

				if (CoverChanged != null)
					CoverChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler CoverChanged;

		private int? _fronthurtact;
		public int? fronthurtact
		{
			get { return _fronthurtact; }
			set
			{
				_fronthurtact = value;

				if (FronthurtactChanged != null)
					FronthurtactChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}
		public event EventHandler FronthurtactChanged;

		private int? _backhurtact;
		public int? backhurtact
		{
			get { return _backhurtact; }
			set
			{
				_backhurtact = value;

				if (BackhurtactChanged != null)
					BackhurtactChanged(this, EventArgs.Empty);
				if (DataChanged != null)
					DataChanged(this, EventArgs.Empty);
			}
		}

		public event EventHandler BackhurtactChanged;

		public Point Point { get { return new Point(x, y); } set { x = value.X; y = value.Y; } }

		public Point Vector { get { return new Point(throwvx, throwvy); } set { throwvx = value.X; throwvy = value.Y; } }
	}

	#endregion

	public class TagBox : Control
	{
		#region Constructors

		public TagBox()
			: base()
		{
			imageAttr.SetColorKey(trancparencyKey, trancparencyKey);
			this.SetStyle(ControlStyles.UserPaint | ControlStyles.OptimizedDoubleBuffer | ControlStyles.DoubleBuffer | ControlStyles.SupportsTransparentBackColor, true);
			this.TabStop = false;
		}

		#endregion

		#region Fields

		private ToolTip toolTipC = new ToolTip();
		private ToolTip toolTipB = new ToolTip();
		private ToolTip toolTipBB = new ToolTip();

		private static readonly Point[] pointer = { new Point(-8, 0), new Point(-1, 0), new Point(0, -8), new Point(0, -1), new Point(1, 0), new Point(8, 0), new Point(0, 1), new Point(0, 8), new Point(-5, -5), new Point(-2, -2), new Point(2, -2), new Point(5, -5), new Point(2, 2), new Point(5, 5), new Point(-2, 2), new Point(-5, 5) };
		private static readonly Point[] arrow = { new Point(0, -5), new Point(-7, 15), new Point(0, 5), new Point(7, 15) };

		private readonly ImageAttributes imageAttr = new ImageAttributes();

		int vectorDivision = 1;
		[DefaultValue(1)]
		public int VectorDivision
		{
			get { return vectorDivision; }
			set { if (value != 0) vectorDivision = value; }
		}

		bool trancparency;
		[DefaultValue(false)]
		public bool Trancparency
		{
			get { return trancparency; }
			set
			{
				bool old = trancparency;
				trancparency = value;
				base.Invalidate();

				if (old != value && TrancparencyChanged != null)
				{
					TrancparencyChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler TrancparencyChanged;

		Color trancparencyKey = Color.Black;
		[DefaultValue(typeof(Color), "Black")]
		public Color TrancparencyKey
		{
			get { return trancparencyKey; }
			set
			{
				Color old = trancparencyKey;
				trancparencyKey = value;
				imageAttr.SetColorKey(trancparencyKey, trancparencyKey);
				base.Invalidate();

				if (old != value && TrancparencyKeyChanged != null)
				{
					TrancparencyKeyChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler TrancparencyKeyChanged;

		DrawingMode drawingMode;
		[DefaultValue(DrawingMode.None)]
		public DrawingMode DrawingMode
		{
			get { return drawingMode; }
			set
			{
				DrawingMode old = drawingMode;
				drawingMode = value;
				base.Invalidate();

				if (old != value && DrawingModeChanged != null)
				{
					DrawingModeChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler DrawingModeChanged;

		DisplayModes displayModes;
		[DefaultValue(DisplayModes.None)]
		public DisplayModes DisplayModes
		{
			get { return displayModes; }
			set
			{
				DisplayModes old = displayModes;
				displayModes = value;
				base.Invalidate();

				if (old != value && DisplayModeChanged != null)
				{
					DisplayModeChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler DisplayModeChanged;

		PictureMode pictureMode;
		[DefaultValue(PictureMode.Normal)]
		public PictureMode PictureMode
		{
			get { return pictureMode; }
			set
			{
				PictureMode old = pictureMode;
				pictureMode = value;

				if (pictureMode == PictureMode.AutoSize && image != null)
					this.Size = image.Size;

				base.Invalidate();

				if (old != value && PictureModeChanged != null)
				{
					PictureModeChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler PictureModeChanged;

		InterpolationMode interpolation;
		[DefaultValue(InterpolationMode.Default)]
		public InterpolationMode Interpolation
		{
			get { return interpolation; }
			set
			{
				InterpolationMode old = interpolation;
				interpolation = value;
				base.Invalidate();

				if (old != value && InterpolationChanged != null)
				{
					InterpolationChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler InterpolationChanged;

		InterpolationMode backgroundInterpolation;
		[DefaultValue(InterpolationMode.Default)]
		public InterpolationMode BackgroundInterpolation
		{
			get { return backgroundInterpolation; }
			set
			{
				InterpolationMode old = backgroundInterpolation;
				backgroundInterpolation = value;
				base.Invalidate();

				if (old != value && BackgroundInterpolationChanged != null)
				{
					BackgroundInterpolationChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler BackgroundInterpolationChanged;

		SmoothingMode smoothing;
		[DefaultValue(SmoothingMode.Default)]
		public SmoothingMode Smoothing
		{
			get { return smoothing; }
			set
			{
				SmoothingMode old = smoothing;
				smoothing = value;
				base.Invalidate();

				if (old != value && SmoothingChanged != null)
				{
					SmoothingChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler SmoothingChanged;

		int imageIndent = 0;
		[DefaultValue(0)]
		public int ImageIndent
		{
			get { return imageIndent; }
			set
			{
				int old = imageIndent;
				imageIndent = value;
				base.Invalidate();

				if (old != value && ImageIntendChanged != null)
				{
					ImageIntendChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler ImageIntendChanged;

		public Rectangle Matrix
		{
			get
			{
				Size img = image != null ? new Size(image.Width, image.Height) : Size.Empty;
				Rectangle cimage = new Rectangle((this.Width - img.Width) / 2, (this.Height - img.Height) / 2, img.Width, img.Height);
				Rectangle zoomed = ExpandToBound(img, this.Size, false);

				switch (pictureMode)
				{
					case PictureMode.CenterImage:
						return cimage;
					case PictureMode.CenterOrigin:
						Rectangle corigin = new Rectangle(this.Width / 2, this.Height / 2, img.Width, img.Height);
						return corigin;
					case PictureMode.Stretch:
						return new Rectangle(0, 0, this.Width, this.Height);
					case PictureMode.Zoom:
						return zoomed;
					case PictureMode.FillZoom:
						Rectangle filled = ExpandToBound(img, this.Size, true);
						return filled;
					case PictureMode.ShrinkOnly:
						return (img.Width > this.Width || img.Height > this.Height) ? zoomed : cimage;
					case PictureMode.GrowOnly:
						return (img.Width < this.Width && img.Height < this.Height) ? zoomed : cimage;
					default:
						return new Rectangle(Point.Empty, img);
				}
			}
		}

		TagBoxData tagData = new TagBoxData();
		[Browsable(false), EditorBrowsable(EditorBrowsableState.Never), ReadOnly(true)]
		public TagBoxData TagData
		{
			get { return tagData; }
			set
			{
				var old = tagData;
				tagData = value;
				base.Invalidate();

				if (!object.ReferenceEquals(old, value) && TagDataSet != null)
				{
					TagDataSet(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler TagDataSet;

		[Browsable(false), EditorBrowsable(EditorBrowsableState.Never), ReadOnly(true)]
		public List<Bdy> BdyTags
		{
			get { return tagData == null ? null : tagData.bdys; }
			set
			{
				var old = tagData.bdys;
				tagData.bdys = value;
				base.Invalidate();

				if (!object.ReferenceEquals(old, value))
				{
					if (BdyTagsSet != null)
						BdyTagsSet(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler BdyTagsSet;
		public event EventHandler BdyRectangleChanged;

		[Browsable(false), EditorBrowsable(EditorBrowsableState.Never), ReadOnly(true)]
		public List<Itr> ItrTags
		{
			get { return tagData == null ? null : tagData.itrs; }
			set
			{
				var old = tagData.itrs;
				tagData.itrs = value;
				base.Invalidate();

				if (!object.ReferenceEquals(old, value))
				{
					if (ItrTagsSet != null)
						ItrTagsSet(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler ItrTagsSet;
		public event EventHandler ItrRectangleChanged;
		public event EventHandler ItrVectorChanged;

		[Browsable(false), EditorBrowsable(EditorBrowsableState.Never), ReadOnly(true)]
		public WPoint WPoint
		{
			get { return tagData == null ? null : tagData.wpoint; }
			set
			{
				var old = tagData.wpoint;
				tagData.wpoint = value;

				if (displayModes.HasFlag(DisplayModes.WPoint))
					base.Invalidate();

				if (old != value)
				{
					if (WPointChanged != null)
						WPointChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler WPointChanged;

		[Browsable(false), EditorBrowsable(EditorBrowsableState.Never), ReadOnly(true)]
		public Point? WPointPoint
		{
			get { return tagData == null ? null : tagData.wpoint == null ? null : (Point?)tagData.wpoint.Point; }
			set
			{
				if (tagData.wpoint == null)
					tagData.wpoint = new global::TagBox.WPoint();
				var old = tagData.wpoint.Point;
				tagData.wpoint.Point = value.HasValue ? value.Value : Point.Empty;
				if (displayModes.HasFlag(DisplayModes.WPoint))
					base.Invalidate();

				if (old != value)
				{
					if (WPointPointChanged != null)
						WPointPointChanged(this, EventArgs.Empty);
					if (drawingMode == global::TagBox.DrawingMode.WPoint && ActivePointChanged != null)
						ActivePointChanged(this, EventArgs.Empty);
					if (WPointChanged != null)
						WPointChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler WPointPointChanged;

		[Browsable(false), EditorBrowsable(EditorBrowsableState.Never), ReadOnly(true)]
		public Point? WPointVector
		{
			get { return tagData == null ? null : tagData.wpoint == null ? null : (Point?)tagData.wpoint.Vector; }
			set
			{
				if (tagData.wpoint == null)
					tagData.wpoint = new global::TagBox.WPoint();
				var old = tagData.wpoint.Vector;
				tagData.wpoint.Vector = value.HasValue ? value.Value : Point.Empty;
				if (displayModes.HasFlag(DisplayModes.WPoint))
					base.Invalidate();

				if (old != value)
				{
					if (WPointVectorChanged != null)
						WPointVectorChanged(this, EventArgs.Empty);
					if (drawingMode == global::TagBox.DrawingMode.WPoint && ActiveVectorChanged != null)
						ActiveVectorChanged(this, EventArgs.Empty);
					if (WPointChanged != null)
						WPointChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler WPointVectorChanged;

		[Browsable(false), EditorBrowsable(EditorBrowsableState.Never), ReadOnly(true)]
		public OPoint OPoint
		{
			get { return tagData == null ? null : tagData.opoint; }
			set
			{
				var old = tagData.opoint;
				tagData.opoint = value;

				if (displayModes.HasFlag(DisplayModes.OPoint))
					base.Invalidate();

				if (old != value)
				{
					if (OPointChanged != null)
						OPointChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler OPointChanged;

		[Browsable(false), EditorBrowsable(EditorBrowsableState.Never), ReadOnly(true)]
		public Point? OPointPoint
		{
			get { return tagData == null ? null : tagData.opoint == null ? null : (Point?)tagData.opoint.Point; }
			set
			{
				if (tagData.opoint == null)
					tagData.opoint = new global::TagBox.OPoint();
				var old = tagData.opoint.Point;
				tagData.opoint.Point = value.HasValue ? value.Value : Point.Empty;
				if (displayModes.HasFlag(DisplayModes.OPoint))
					base.Invalidate();

				if (old != value)
				{
					if (OPointPointChanged != null)
						OPointPointChanged(this, EventArgs.Empty);
					if (drawingMode == global::TagBox.DrawingMode.OPoint && ActivePointChanged != null)
						ActivePointChanged(this, EventArgs.Empty);
					if (OPointChanged != null)
						OPointChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler OPointPointChanged;

		[Browsable(false), EditorBrowsable(EditorBrowsableState.Never), ReadOnly(true)]
		public Point? OPointVector
		{
			get { return tagData == null ? null : tagData.opoint == null ? null : (Point?)tagData.opoint.Vector; }
			set
			{
				if (tagData.opoint == null)
					tagData.opoint = new global::TagBox.OPoint();
				var old = tagData.opoint.Vector;
				tagData.opoint.Vector = value.HasValue ? value.Value : Point.Empty;
				if (displayModes.HasFlag(DisplayModes.OPoint))
					base.Invalidate();

				if (old != value)
				{
					if (OPointVectorChanged != null)
						OPointVectorChanged(this, EventArgs.Empty);
					if (drawingMode == global::TagBox.DrawingMode.OPoint && ActiveVectorChanged != null)
						ActiveVectorChanged(this, EventArgs.Empty);
					if (OPointChanged != null)
						OPointChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler OPointVectorChanged;

		[Browsable(false), EditorBrowsable(EditorBrowsableState.Never), ReadOnly(true)]
		public CPoint CPoint
		{
			get { return tagData == null ? null : tagData.cpoint; }
			set
			{
				var old = tagData.cpoint;
				tagData.cpoint = value;

				if (displayModes.HasFlag(DisplayModes.CPoint))
					base.Invalidate();

				if (old != value)
				{
					if (CPointChanged != null)
						CPointChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler<EventArgs> CPointChanged;

		[Browsable(false), EditorBrowsable(EditorBrowsableState.Never), ReadOnly(true)]
		public Point? CPointPoint
		{
			get { return tagData == null ? null : tagData.cpoint == null ? null : (Point?)tagData.cpoint.Point; }
			set
			{
				if (tagData.cpoint == null)
					tagData.cpoint = new global::TagBox.CPoint();
				var old = tagData.cpoint.Point;
				tagData.cpoint.Point = value.HasValue ? value.Value : Point.Empty;
				if (displayModes.HasFlag(DisplayModes.CPoint))
					base.Invalidate();

				if (old != value)
				{
					if (CPointPointChanged != null)
						CPointPointChanged(this, EventArgs.Empty);
					if (drawingMode == global::TagBox.DrawingMode.CPoint && ActivePointChanged != null)
						ActivePointChanged(this, EventArgs.Empty);
					if (CPointChanged != null)
						CPointChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler CPointPointChanged;

		[Browsable(false), EditorBrowsable(EditorBrowsableState.Never), ReadOnly(true)]
		public Point? CPointVector
		{
			get { return tagData == null ? null : tagData.cpoint == null ? null : (Point?)tagData.cpoint.Vector; }
			set
			{
				if (tagData.cpoint == null)
					tagData.cpoint = new global::TagBox.CPoint();
				var old = tagData.cpoint.Vector;
				tagData.cpoint.Vector = value.HasValue ? value.Value : Point.Empty;
				if (displayModes.HasFlag(DisplayModes.CPoint))
					base.Invalidate();

				if (old != value)
				{
					if (CPointVectorChanged != null)
						CPointVectorChanged(this, EventArgs.Empty);
					if (drawingMode == global::TagBox.DrawingMode.CPoint && ActiveVectorChanged != null)
						ActiveVectorChanged(this, EventArgs.Empty);
					if (CPointChanged != null)
						CPointChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler CPointVectorChanged;

		[Browsable(false), EditorBrowsable(EditorBrowsableState.Never), ReadOnly(true)]
		public Point? BPoint
		{
			get { return tagData == null ? null : tagData.bpoint; }
			set
			{
				var old = tagData.bpoint;
				tagData.bpoint = value;
				if (displayModes.HasFlag(DisplayModes.BPoint))
					base.Invalidate();

				if (old != value)
				{
					if (BPointChanged != null)
						BPointChanged(this, EventArgs.Empty);
					if (drawingMode == global::TagBox.DrawingMode.BPoint && ActivePointChanged != null)
						ActivePointChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler BPointChanged;

		[Browsable(false), EditorBrowsable(EditorBrowsableState.Never), ReadOnly(true)]
		public Point? Center
		{
			get { return tagData == null ? null : tagData.center; }
			set
			{
				var old = tagData.center;
				tagData.center = value;
				if (displayModes.HasFlag(DisplayModes.Center))
					base.Invalidate();

				if (old != value)
				{
					if (CenterChanged != null)
						CenterChanged(this, EventArgs.Empty);
					if (drawingMode == global::TagBox.DrawingMode.Center && ActivePointChanged != null)
						ActivePointChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler CenterChanged;

		[Browsable(false)]
		public Bdy ActiveBdy
		{
			get
			{
				return activeBdyIndex.HasValue ? BdyTags[activeBdyIndex.Value] : null;
			}
		}

		public int? activeBdyIndex = null;
		[Browsable(false)]
		public int? ActiveBdyIndex
		{
			get { return activeBdyIndex; }
			set
			{
				if (value.HasValue)
				{
					if (value.Value < BdyTags.Count && value.Value >= 0)
					{
						var old = activeBdyIndex;
						activeBdyIndex = value;

						if (old != value)
						{
							if (BdyRectangleChanged != null)
								BdyRectangleChanged(this, EventArgs.Empty);
							if (drawingMode == DrawingMode.Bdy && ActiveRectangleChanged != null)
								ActiveRectangleChanged(this, EventArgs.Empty);
							if (ActiveBdyChanged != null)
								ActiveBdyChanged(this, EventArgs.Empty);
						}
					}
				}
				else
				{
					activeBdyIndex = null;
				}
			}
		}
		public event EventHandler ActiveBdyChanged;

		[Browsable(false)]
		public Itr ActiveItr
		{
			get
			{
				return activeItrIndex.HasValue ? ItrTags[activeItrIndex.Value] : null;
			}
		}

		[Browsable(false)]
		public Point? ActiveItrVector
		{
			get
			{
				return activeItrIndex.HasValue ? ItrTags[activeItrIndex.Value].Vector : Point.Empty;
			}
			set
			{
				if (activeItrIndex.HasValue)
				{
					var old = ItrTags[activeItrIndex.Value].Vector;
					ItrTags[activeItrIndex.Value].Vector = value.HasValue ? value.Value : Point.Empty;
					if (displayModes.HasFlag(DisplayModes.Itr))
						base.Invalidate();

					if (old != value)
					{
						if (ItrVectorChanged != null)
							ItrVectorChanged(this, EventArgs.Empty);
						if (drawingMode == global::TagBox.DrawingMode.Itr && ActiveVectorChanged != null)
							ActiveVectorChanged(this, EventArgs.Empty);
						base.Invalidate();
					}
				}
			}
		}

		public int? activeItrIndex = null;
		[Browsable(false)]
		public int? ActiveItrIndex
		{
			get { return activeItrIndex; }
			set
			{
				if (value.HasValue)
				{
					if (value.Value < ItrTags.Count && value.Value >= 0)
					{
						var old = activeItrIndex;
						activeItrIndex = value;

						if (old != value)
						{
							if (ItrRectangleChanged != null)
								ItrRectangleChanged(this, EventArgs.Empty);
							if (drawingMode == DrawingMode.Itr && ActiveRectangleChanged != null)
								ActiveRectangleChanged(this, EventArgs.Empty);
							if (ActiveItrChanged != null)
								ActiveItrChanged(this, EventArgs.Empty);
						}
					}
				}
				else
				{
					activeItrIndex = null;
				}
			}
		}
		public event EventHandler ActiveItrChanged;

		[Browsable(false), ReadOnly(true)]
		public Rectangle ActiveRectangle
		{
			get
			{
				switch (drawingMode)
				{
					case DrawingMode.Bdy:
						if (!activeBdyIndex.HasValue)
							return Rectangle.Empty;
						else
							return GetRectangleNormalized(BdyTags[activeBdyIndex.Value].Rectangle);
					case DrawingMode.Itr:
						if (!activeItrIndex.HasValue)
							return Rectangle.Empty;
						else
							return GetRectangleNormalized(ItrTags[activeItrIndex.Value].Rectangle);
					default:
						return Rectangle.Empty;
				}
			}
			set
			{
				switch (drawingMode)
				{
					case DrawingMode.Bdy:
						if (!activeBdyIndex.HasValue)
							NewRectangle(value, true);
						else
						{
							var old = BdyTags[activeBdyIndex.Value].Rectangle;
							BdyTags[activeBdyIndex.Value].Rectangle = value;

							if (old != value)
							{
								if (BdyRectangleChanged != null)
									BdyRectangleChanged(this, EventArgs.Empty);
								if (ActiveRectangleChanged != null)
									ActiveRectangleChanged(this, EventArgs.Empty);
								base.Invalidate();
							}
						}
						return;
					case DrawingMode.Itr:
						if (!activeItrIndex.HasValue)
							NewRectangle(value, true);
						else
						{
							var old = ItrTags[activeItrIndex.Value].Rectangle;
							ItrTags[activeItrIndex.Value].Rectangle = value;

							if (old != value)
							{
								if (ItrRectangleChanged != null)
									ItrRectangleChanged(this, EventArgs.Empty);
								if (ActiveRectangleChanged != null)
									ActiveRectangleChanged(this, EventArgs.Empty);
								base.Invalidate();
							}
						}
						return;
				}
			}
		}
		public event EventHandler ActiveRectangleChanged;

		[Browsable(false)]
		public Point ActivePoint
		{
			get
			{
				switch (drawingMode)
				{
					case DrawingMode.Bdy:
						return activeBdyIndex.HasValue && BdyTags != null ? BdyTags[activeBdyIndex.Value].Point : Point.Empty;
					case DrawingMode.Itr:
						return activeItrIndex.HasValue && ItrTags != null ? ItrTags[activeItrIndex.Value].Point : Point.Empty;
					case DrawingMode.WPoint:
						return WPointPoint.HasValue ? WPointPoint.Value : Point.Empty;
					case DrawingMode.OPoint:
						return OPointPoint.HasValue ? OPointPoint.Value : Point.Empty;
					case DrawingMode.CPoint:
						return CPointPoint.HasValue ? CPointPoint.Value : Point.Empty;
					case DrawingMode.BPoint:
						return BPoint.HasValue ? BPoint.Value : Point.Empty;
					case DrawingMode.Center:
						return Center.HasValue ? Center.Value : Point.Empty;
					default:
						return Point.Empty;
				}
			}
			set
			{
				switch (drawingMode)
				{
					case DrawingMode.Bdy:
						if (activeBdyIndex.HasValue && BdyTags != null)
							BdyTags[activeBdyIndex.Value].Point = value;
						if (ActivePointChanged != null)
							ActivePointChanged(this, EventArgs.Empty);
						break;
					case DrawingMode.Itr:
						if (activeItrIndex.HasValue && ItrTags != null)
							ItrTags[activeItrIndex.Value].Point = value;
						if (ActivePointChanged != null)
							ActivePointChanged(this, EventArgs.Empty);
						break;
					case DrawingMode.WPoint:
						WPointPoint = value;
						if (ActivePointChanged != null)
							ActivePointChanged(this, EventArgs.Empty);
						break;
					case DrawingMode.OPoint:
						OPointPoint = value;
						if (ActivePointChanged != null)
							ActivePointChanged(this, EventArgs.Empty);
						break;
					case DrawingMode.CPoint:
						CPointPoint = value;
						if (ActivePointChanged != null)
							ActivePointChanged(this, EventArgs.Empty);
						break;
					case DrawingMode.BPoint:
						BPoint = value;
						if (ActivePointChanged != null)
							ActivePointChanged(this, EventArgs.Empty);
						break;
					case DrawingMode.Center:
						Center = value;
						if (ActivePointChanged != null)
							ActivePointChanged(this, EventArgs.Empty);
						break;
				}
			}
		}
		public event EventHandler ActivePointChanged;

		[Browsable(false)]
		public Point? ActiveVector
		{
			get
			{
				switch (drawingMode)
				{
					case DrawingMode.Itr:
						return ActiveItrVector;
					case DrawingMode.WPoint:
						return WPointVector;
					case DrawingMode.OPoint:
						return OPointVector;
					case DrawingMode.CPoint:
						return CPointVector;
				}
				return null;
			}
			set
			{
				switch (drawingMode)
				{
					case DrawingMode.Itr:
						ActiveItrVector = value;
						break;
					case DrawingMode.WPoint:
						WPointVector = value;
						break;
					case DrawingMode.OPoint:
						OPointVector = value;
						break;
					case DrawingMode.CPoint:
						CPointVector = value;
						break;
				}
			}
		}
		public event EventHandler ActiveVectorChanged;

		Pen wpointPen = new Pen(Color.Blue, 1.75f);
		[Browsable(false)]
		public Pen WPointPen
		{
			get { return wpointPen; }
			set
			{
				var old = wpointPen;
				wpointPen = value;
				base.Invalidate();

				if (old != value && WPointPenChanged != null)
				{
					WPointPenChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler WPointPenChanged;

		[DefaultValue(typeof(Color), "Blue")]
		public Color WPointPenColor
		{
			get { return wpointPen.Color; }
			set
			{
				var old = wpointPen.Color;
				wpointPen.Color = value;
				base.Invalidate();

				if (old != value && WPointPenChanged != null)
				{
					WPointPenChanged(this, EventArgs.Empty);
				}
			}
		}

		Pen opointPen = new Pen(Color.Purple, 1.75f);
		[Browsable(false)]
		public Pen OPointPen
		{
			get { return opointPen; }
			set
			{
				var old = opointPen;
				opointPen = value;
				base.Invalidate();

				if (old != value && OPointPenChanged != null)
				{
					OPointPenChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler OPointPenChanged;

		[DefaultValue(typeof(Color), "Purple")]
		public Color OPointPenColor
		{
			get { return opointPen.Color; }
			set
			{
				var old = opointPen.Color;
				opointPen.Color = value;
				base.Invalidate();

				if (old != value && OPointPenChanged != null)
				{
					OPointPenChanged(this, EventArgs.Empty);
				}
			}
		}

		Pen cpointPen = new Pen(Color.OrangeRed, 1.75f);
		[Browsable(false)]
		public Pen CPointPen
		{
			get { return cpointPen; }
			set
			{
				var old = cpointPen;
				cpointPen = value;
				base.Invalidate();

				if (old != value && CPointPenChanged != null)
				{
					CPointPenChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler CPointPenChanged;

		[DefaultValue(typeof(Color), "OrangeRed")]
		public Color CPointPenColor
		{
			get { return cpointPen.Color; }
			set
			{
				var old = cpointPen.Color;
				cpointPen.Color = value;
				base.Invalidate();

				if (old != value && CPointPenChanged != null)
				{
					CPointPenChanged(this, EventArgs.Empty);
				}
			}
		}

		Image wpointImage = null;
		[DefaultValue(null)]
		public Image WPointImage
		{
			get { return wpointImage; }
			set
			{
				Image old = wpointImage;
				wpointImage = value;
				base.Invalidate();

				if (!Object.ReferenceEquals(old, value) && WPointImageChanged != null)
				{
					WPointImageChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler WPointImageChanged;

		Image opointImage = null;
		[DefaultValue(null)]
		public Image OPointImage
		{
			get { return opointImage; }
			set
			{
				Image old = opointImage;
				opointImage = value;
				base.Invalidate();

				if (!Object.ReferenceEquals(old, value) && OPointImageChanged != null)
				{
					OPointImageChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler OPointImageChanged;

		Image cpointImage = null;
		[DefaultValue(null)]
		public Image CPointImage
		{
			get { return cpointImage; }
			set
			{
				Image old = cpointImage;
				cpointImage = value;
				base.Invalidate();

				if (!Object.ReferenceEquals(old, value) && CPointImageChanged != null)
				{
					CPointImageChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler CPointImageChanged;

		Image bpointImage = null;
		[DefaultValue(null)]
		public Image BPointImage
		{
			get { return bpointImage; }
			set
			{
				Image old = bpointImage;
				bpointImage = value;
				base.Invalidate();

				if (!Object.ReferenceEquals(old, value) && BPointImageChanged != null)
				{
					BPointImageChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler BPointImageChanged;

		bool wpointCover;
		[DefaultValue(false)]
		public bool WPointCover
		{
			get { return wpointCover; }
			set
			{
				bool old = wpointCover;
				wpointCover = value;
				base.Invalidate();

				if (old != value && WCoverChanged != null)
				{
					WCoverChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler WCoverChanged;

		bool cpointCover;
		[DefaultValue(false)]
		public bool CPointCover
		{
			get { return cpointCover; }
			set
			{
				bool old = cpointCover;
				cpointCover = value;
				base.Invalidate();

				if (old != value && CCoverChanged != null)
				{
					CCoverChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler CCoverChanged;

		Point wpointImageOffset;
		[DefaultValue(typeof(Point), "0, 0")]
		public Point WPointImageOffset
		{
			get { return wpointImageOffset; }
			set
			{
				Point old = wpointImageOffset;
				wpointImageOffset = value;
				base.Invalidate();

				if (old != value && WPointImageOffsetChanged != null)
				{
					WPointImageOffsetChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler WPointImageOffsetChanged;

		Point opointImageOffset;
		[DefaultValue(typeof(Point), "0, 0")]
		public Point OPointImageOffset
		{
			get { return opointImageOffset; }
			set
			{
				Point old = opointImageOffset;
				opointImageOffset = value;
				base.Invalidate();

				if (old != value && OPointImageOffsetChanged != null)
				{
					OPointImageOffsetChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler OPointImageOffsetChanged;

		Point cpointImageOffset;
		[DefaultValue(typeof(Point), "0, 0")]
		public Point CPointImageOffset
		{
			get { return cpointImageOffset; }
			set
			{
				Point old = cpointImageOffset;
				cpointImageOffset = value;
				base.Invalidate();

				if (old != value && CPointImageOffsetChanged != null)
				{
					CPointImageOffsetChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler CPointImageOffsetChanged;

		Point bpointImageOffset;
		[DefaultValue(typeof(Point), "0, 0")]
		public Point BPointImageOffset
		{
			get { return bpointImageOffset; }
			set
			{
				Point old = bpointImageOffset;
				bpointImageOffset = value;
				base.Invalidate();

				if (old != value && BPointImageOffsetChanged != null)
				{
					BPointImageOffsetChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler BPointImageOffsetChanged;

		SolidBrush wvectorBrush = new SolidBrush(Color.Blue);
		[Browsable(false)]
		public SolidBrush WVectorBrush
		{
			get { return wvectorBrush; }
			set
			{
				SolidBrush old = wvectorBrush;
				wvectorBrush = value;
				base.Invalidate();

				if (old != value && WVectorBrushChanged != null)
				{
					WVectorBrushChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler WVectorBrushChanged;

		[DefaultValue(typeof(Color), "Blue")]
		public Color WVectorBrushColor
		{
			get { return wvectorBrush.Color; }
			set
			{
				Color old = wvectorBrush.Color;
				wvectorBrush.Color = value;
				base.Invalidate();

				if (old != value && WVectorBrushChanged != null)
				{
					WVectorBrushChanged(this, EventArgs.Empty);
				}
			}
		}

		Pen wvectorPen = new Pen(Color.Blue, 2f);
		[Browsable(false)]
		public Pen WVectorPen
		{
			get { return wvectorPen; }
			set
			{
				Pen old = wvectorPen;
				wvectorPen = value;
				base.Invalidate();

				if (old != value && WVectorPenChanged != null)
				{
					WVectorPenChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler WVectorPenChanged;

		[DefaultValue(typeof(Color), "Blue")]
		public Color WVectorPenColor
		{
			get { return wvectorPen.Color; }
			set
			{
				Color old = wvectorPen.Color;
				wvectorPen.Color = value;
				base.Invalidate();

				if (old != value && WVectorPenChanged != null)
				{
					WVectorPenChanged(this, EventArgs.Empty);
				}
			}
		}

		public Color WVectorColor
		{
			set { wvectorBrush.Color = wvectorPen.Color = value; }
		}

		SolidBrush ovectorBrush = new SolidBrush(Color.Purple);
		[Browsable(false)]
		public SolidBrush OVectorBrush
		{
			get { return ovectorBrush; }
			set
			{
				SolidBrush old = ovectorBrush;
				ovectorBrush = value;
				base.Invalidate();

				if (old != value && OVectorBrushChanged != null)
				{
					OVectorBrushChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler OVectorBrushChanged;

		[DefaultValue(typeof(Color), "Purple")]
		public Color OVectorBrushColor
		{
			get { return ovectorBrush.Color; }
			set
			{
				Color old = ovectorBrush.Color;
				ovectorBrush.Color = value;
				base.Invalidate();

				if (old != value && OVectorBrushChanged != null)
				{
					OVectorBrushChanged(this, EventArgs.Empty);
				}
			}
		}

		Pen ovectorPen = new Pen(Color.Purple, 2f);
		[Browsable(false)]
		public Pen OVectorPen
		{
			get { return ovectorPen; }
			set
			{
				Pen old = ovectorPen;
				ovectorPen = value;
				base.Invalidate();

				if (old != value && OVectorPenChanged != null)
				{
					OVectorPenChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler OVectorPenChanged;

		[DefaultValue(typeof(Color), "Purple")]
		public Color OVectorPenColor
		{
			get { return ovectorPen.Color; }
			set
			{
				Color old = ovectorPen.Color;
				ovectorPen.Color = value;
				base.Invalidate();

				if (old != value && OVectorPenChanged != null)
				{
					OVectorPenChanged(this, EventArgs.Empty);
				}
			}
		}

		public Color OVectorColor
		{
			set { ovectorBrush.Color = ovectorPen.Color = value; }
		}

		SolidBrush cvectorBrush = new SolidBrush(Color.OrangeRed);
		[Browsable(false)]
		public SolidBrush CVectorBrush
		{
			get { return cvectorBrush; }
			set
			{
				SolidBrush old = cvectorBrush;
				cvectorBrush = value;
				base.Invalidate();

				if (old != value && CVectorBrushChanged != null)
				{
					CVectorBrushChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler CVectorBrushChanged;

		[DefaultValue(typeof(Color), "OrangeRed")]
		public Color CVectorBrushColor
		{
			get { return cvectorBrush.Color; }
			set
			{
				Color old = cvectorBrush.Color;
				cvectorBrush.Color = value;
				base.Invalidate();

				if (old != value && CVectorBrushChanged != null)
				{
					CVectorBrushChanged(this, EventArgs.Empty);
				}
			}
		}

		Pen cvectorPen = new Pen(Color.OrangeRed, 2f);
		[Browsable(false)]
		public Pen CVectorPen
		{
			get { return cvectorPen; }
			set
			{
				Pen old = cvectorPen;
				cvectorPen = value;
				base.Invalidate();

				if (old != value && CVectorPenChanged != null)
				{
					CVectorPenChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler CVectorPenChanged;

		[DefaultValue(typeof(Color), "OrangeRed")]
		public Color CVectorPenColor
		{
			get { return cvectorPen.Color; }
			set
			{
				Color old = cvectorPen.Color;
				cvectorPen.Color = value;
				base.Invalidate();

				if (old != value && CVectorPenChanged != null)
				{
					CVectorPenChanged(this, EventArgs.Empty);
				}
			}
		}

		public Color CVectorColor
		{
			set { cvectorBrush.Color = cvectorPen.Color = value; }
		}

		Pen bdyRectangleBoldPen = new Pen(Color.Lime, 3);
		Pen bdyRectanglePen = new Pen(Color.Lime);
		[Browsable(false)]
		public Pen BdyRectanglePen
		{
			get { return bdyRectanglePen; }
			set
			{
				Pen old = bdyRectanglePen;
				bdyRectanglePen = value;
				base.Invalidate();

				if (old != value && BdyRectanglePenChanged != null)
				{
					BdyRectanglePenChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler BdyRectanglePenChanged;

		[DefaultValue(typeof(Color), "Lime")]
		public Color BdyRectanglePenColor
		{
			get { return bdyRectanglePen.Color; }
			set
			{
				Color old = bdyRectanglePen.Color;
				bdyRectangleBoldPen.Color = bdyRectanglePen.Color = value;
				base.Invalidate();

				if (old != value && BdyRectanglePenChanged != null)
				{
					BdyRectanglePenChanged(this, EventArgs.Empty);
				}
			}
		}

		SolidBrush bdyRectangleChoiceBrush = new SolidBrush(Color.FromArgb(191, 255, 0, 255));
		SolidBrush bdyRectangleBrush = new SolidBrush(Color.FromArgb(64, 0, 255, 0));
		[Browsable(false)]
		public SolidBrush BdyRectangleBrush
		{
			get { return bdyRectangleBrush; }
			set
			{
				SolidBrush old = bdyRectangleBrush;
				bdyRectangleBrush = value;
				base.Invalidate();

				if (old != value && BdyRectangleBrushChanged != null)
				{
					BdyRectangleBrushChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler BdyRectangleBrushChanged;

		[DefaultValue(typeof(Color), "64, 0, 255, 0")]
		public Color BdyRectangleBrushColor
		{
			get { return bdyRectangleBrush.Color; }
			set
			{
				Color old = bdyRectangleBrush.Color;
				bdyRectangleBrush.Color = value;
				base.Invalidate();

				if (old != value && BdyRectangleBrushChanged != null)
				{
					BdyRectangleBrushChanged(this, EventArgs.Empty);
				}
			}
		}

		[DefaultValue(typeof(Color), "Lime")]
		public Color BdyColor
		{
			set
			{
				bdyRectanglePen.Color = value;
				bdyRectangleBrush.Color = Color.FromArgb(bdyRectangleBrush.Color.A, value);
				bdyRectangleChoiceBrush.Color = Color.FromArgb(~bdyRectangleBrush.Color.ToArgb());
				bdyRectangleBoldPen.Color = Color.FromArgb(bdyRectanglePen.Color.A, Color.FromArgb(~bdyRectangleBrush.Color.ToArgb()));

				if (BdyColorSet != null)
				{
					BdyColorSet(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler BdyColorSet;

		Pen itrRectangleVectorPen = new Pen(Color.Red, 1.75f);
		Pen itrRectangleBoldPen = new Pen(Color.Red, 3);
		Pen itrRectanglePen = new Pen(Color.Red);
		[Browsable(false)]
		public Pen ItrRectanglePen
		{
			get { return itrRectanglePen; }
			set
			{
				Pen old = itrRectanglePen;
				itrRectangleVectorPen.Color = (itrRectanglePen = value).Color;
				itrRectangleBoldPen.Color = value.Color;
				base.Invalidate();

				if (old != value && ItrRectanglePenChanged != null)
				{
					ItrRectanglePenChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler ItrRectanglePenChanged;

		[DefaultValue(typeof(Color), "Red")]
		public Color ItrRectanglePenColor
		{
			get { return itrRectanglePen.Color; }
			set
			{
				Color old = itrRectanglePen.Color;
				itrRectangleBoldPen.Color = itrRectanglePen.Color = value;
				base.Invalidate();

				if (old != value && ItrRectanglePenChanged != null)
				{
					ItrRectanglePenChanged(this, EventArgs.Empty);
				}
			}
		}

		SolidBrush itrRectangleChoiceBrush = new SolidBrush(Color.FromArgb(191, 0, 255, 255));
		SolidBrush itrRectangleVectorBrush = new SolidBrush(Color.FromArgb(255, 255, 0, 0));
		SolidBrush itrRectangleBrush = new SolidBrush(Color.FromArgb(64, 255, 0, 0));
		[Browsable(false)]
		public SolidBrush ItrRectangleBrush
		{
			get { return itrRectangleBrush; }
			set
			{
				SolidBrush old = itrRectangleBrush;
				itrRectangleVectorBrush = new SolidBrush(Color.FromArgb(255, (itrRectangleBrush = value).Color));
				base.Invalidate();

				if (old != value && ItrRectangleBrushChanged != null)
				{
					ItrRectangleBrushChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler ItrRectangleBrushChanged;

		[DefaultValue(typeof(Color), "64, 255, 0, 0")]
		public Color ItrRectangleBrushColor
		{
			get { return itrRectangleBrush.Color; }
			set
			{
				Color old = itrRectangleBrush.Color;
				itrRectangleBrush.Color = value;
				base.Invalidate();

				if (old != value && ItrRectangleBrushChanged != null)
				{
					ItrRectangleBrushChanged(this, EventArgs.Empty);
				}
			}
		}

		[DefaultValue(typeof(Color), "Red")]
		public Color ItrColor
		{
			set
			{
				itrRectanglePen.Color = value;
				itrRectangleVectorPen.Color = value;
				itrRectangleBrush.Color = Color.FromArgb(itrRectangleBrush.Color.A, value);
				itrRectangleVectorBrush.Color = Color.FromArgb(255, value);
				itrRectangleChoiceBrush.Color = Color.FromArgb(~itrRectangleBrush.Color.ToArgb());
				itrRectangleBoldPen.Color = Color.FromArgb(itrRectanglePen.Color.A, Color.FromArgb(~itrRectangleBrush.Color.ToArgb()));

				if (ItrColorSet != null)
				{
					ItrColorSet(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler ItrColorSet;

		SolidBrush centerBrush = new SolidBrush(Color.FromArgb(127, 0, 0, 0));
		[Browsable(false)]
		public SolidBrush CenterBrush
		{
			get { return centerBrush; }
			set
			{
				SolidBrush old = centerBrush;
				centerBrush = value;
				base.Invalidate();

				if (old != value && CenterBrushChanged != null)
				{
					CenterBrushChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler CenterBrushChanged;

		[DefaultValue(typeof(Color), "127, 0, 0, 0")]
		public Color CenterBrushColor
		{
			get { return centerBrush.Color; }
			set
			{
				Color old = centerBrush.Color;
				centerBrush.Color = value;
				base.Invalidate();

				if (old != value && CenterBrushChanged != null)
				{
					CenterBrushChanged(this, EventArgs.Empty);
				}
			}
		}

		Pen coordinatePen = new Pen(Color.Red);
		[Browsable(false)]
		public Pen CoordinatePen
		{
			get { return coordinatePen; }
			set
			{
				Pen old = coordinatePen;
				coordinatePen = value;
				base.Invalidate();

				if (old != value && CoordinatePenChanged != null)
				{
					CoordinatePenChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler CoordinatePenChanged;

		[DefaultValue(typeof(Color), "Red")]
		public Color CoordinatePenColor
		{
			get { return coordinatePen.Color; }
			set
			{
				Color old = coordinatePen.Color;
				coordinatePen.Color = value;
				base.Invalidate();

				if (old != value && CoordinatePenChanged != null)
				{
					CoordinatePenChanged(this, EventArgs.Empty);
				}
			}
		}

		Image image;
		[DefaultValue(null)]
		public Image Image
		{
			get { return image; }
			set
			{
				Image old = image;
				image = value;
				if (pictureMode == PictureMode.AutoSize)
					this.Size = image.Size;
				base.Invalidate();

				if (!Object.ReferenceEquals(old, value) && ImageChanged != null)
				{
					ImageChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler ImageChanged;

		bool showCoordinateSystem;
		[DefaultValue(false)]
		public bool ShowCoordinateSystem
		{
			get { return showCoordinateSystem; }
			set
			{
				bool old = showCoordinateSystem;
				showCoordinateSystem = value;
				base.Invalidate();

				if (old != value && ShowCoordinateSystemChanged != null)
				{
					ShowCoordinateSystemChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler ShowCoordinateSystemChanged;

		bool showCoordinateToolTip;
		[DefaultValue(false)]
		public bool ShowCoordinateToolTip
		{
			get { return showCoordinateToolTip; }
			set
			{
				bool old = showCoordinateToolTip;
				showCoordinateToolTip = value;
				base.Invalidate();

				if (old != value && ShowCoordinateToolTipChanged != null)
				{
					ShowCoordinateToolTipChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler ShowCoordinateToolTipChanged;

		bool showBoundToolTip;
		[DefaultValue(false)]
		public bool ShowBoundToolTip
		{
			get { return showBoundToolTip; }
			set
			{
				bool old = showBoundToolTip;
				showBoundToolTip = value;
				base.Invalidate();

				if (old != value && ShowBoundToolTipChanged != null)
				{
					ShowBoundToolTipChanged(this, EventArgs.Empty);
				}
			}
		}
		public event EventHandler ShowBoundToolTipChanged;

		#endregion

		#region Methods

		//public DrawBox Clone() { return (DrawBox)MemberwiseClone(); }

		public static Rectangle ExpandToBound(Size size, Size box, bool fill)
		{
			double widthScale = 0, heightScale = 0;

			if (size.Width != 0)
				widthScale = (double)box.Width / (double)size.Width;
			if (size.Height != 0)
				heightScale = (double)box.Height / (double)size.Height;

			double scale = fill ? Math.Max(widthScale, heightScale) : Math.Min(widthScale, heightScale);

			Size result = new Size((int)(size.Width * scale), (int)(size.Height * scale));
			return new Rectangle(new Point((box.Width - result.Width) / 2, (box.Height - result.Height) / 2), result);
		}

		protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
		{
			if (pictureMode == PictureMode.AutoSize && image != null && this.Dock == DockStyle.None)
			{
				base.SetBoundsCore(x, y, image.Width + imageIndent, image.Height + imageIndent, specified);
				base.Invalidate();
			}
			else
			{
				base.SetBoundsCore(x, y, width, height, specified);
				base.Invalidate();
			}
		}

		public static double Radian2Degree(double a)
		{
			return a / Math.PI * 180.0;
		}

		public void ClearBdyList()
		{
			if (tagData != null)
			{
				BdyTags.Clear();
				ActiveBdyIndex = null;
			}
		}

		public void ClearItrList()
		{
			if (tagData != null)
			{
				ItrTags.Clear();
				ActiveItrIndex = null;
			}
		}

		private void NewRectangle(Rectangle rect, DrawingMode drawingMode, bool callEvents = true)
		{
			switch (drawingMode)
			{
				case DrawingMode.Bdy:
					BdyTags.Add(new Bdy(rect));
					activeBdyIndex = BdyTags.Count - 1;
					if (callEvents)
					{
						if (BdyTagsSet != null)
							BdyTagsSet(this, EventArgs.Empty);
					}
					return;
				case DrawingMode.Itr:
					ItrTags.Add(new Itr(rect));
					activeItrIndex = ItrTags.Count - 1;
					if (callEvents)
					{
						if (ItrTagsSet != null)
							ItrTagsSet(this, EventArgs.Empty);
					}
					return;
			}
		}

		private void NewRectangle(Rectangle rect, bool callEvents = true)
		{
			NewRectangle(rect, drawingMode, callEvents);
		}

		private int? GetRectangleChoice(Point location)
		{
			return GetRectangleChoice(location.X, location.Y);
		}

		private int? GetRectangleChoice(int x, int y)
		{
			int? result = null;
			float minDistance = float.MaxValue;

			switch (drawingMode)
			{
				case DrawingMode.Bdy:
					for (int i = 0; i < BdyTags.Count; i++)
					{
						Rectangle rect = GetRectangleNormalized(BdyTags[i].Rectangle);
						if (rect.Contains(x, y))
						{
							int q = x - (rect.X + rect.Width / 2), w = y - (rect.Y + rect.Height / 2);
							float distance = (float)Math.Sqrt(q * q + w * w);
							if (distance < minDistance)
							{
								minDistance = distance;
								result = i;
							}
						}
					}
					break;
				case DrawingMode.Itr:
					for (int i = 0; i < ItrTags.Count; i++)
					{
						Rectangle rect = GetRectangleNormalized(ItrTags[i].Rectangle);
						if (rect.Contains(x, y))
						{
							int q = x - (rect.X + rect.Width / 2), w = y - (rect.Y + rect.Height / 2);
							float distance = (float)Math.Sqrt(q * q + w * w);
							if (distance < minDistance)
							{
								minDistance = distance;
								result = i;
							}
						}
					}
					break;
			}

			return result;
		}

		public Rectangle GetRectangleUnhandled()
		{
			switch (drawingMode)
			{
				case DrawingMode.Bdy:
					return activeBdyIndex.HasValue ? BdyTags[activeBdyIndex.Value].Rectangle : new Rectangle(-1, -1, 0, 0);
				case DrawingMode.Itr:
					return activeItrIndex.HasValue ? ItrTags[activeItrIndex.Value].Rectangle : new Rectangle(-1, -1, 0, 0);
				default:
					return new Rectangle(-1, -1, 0, 0);
			}
		}

		public Rectangle GetRectangleNormalized(Rectangle rect)
		{
			return new Rectangle(rect.Width < 0 ? rect.X + rect.Width : rect.X, rect.Height < 0 ? rect.Y + rect.Height : rect.Y, Math.Abs(rect.Width), Math.Abs(rect.Height));
		}

		#endregion

		#region Painting

		[EditorBrowsable]
		protected override void OnPaint(PaintEventArgs e)
		{
			e.Graphics.InterpolationMode = interpolation;
			e.Graphics.SmoothingMode = smoothing;

			Rectangle matrix = Matrix, dest = new Rectangle(imageIndent, imageIndent, matrix.Width, matrix.Height);
			e.Graphics.TranslateTransform(matrix.X, matrix.Y);

			if (displayModes.HasFlag(DisplayModes.Center) && trancparency && Center != null)
				e.Graphics.FillEllipse(centerBrush, tagData.center.Value.X - 18, tagData.center.Value.Y - 4, 35, 7);

			bool wdraw = false;
			if (displayModes.HasFlag(DisplayModes.WPoint) && wpointImage != null && wpointCover && WPointPoint != null)
			{
				Point p = tagData.wpoint.Point;
				p.Offset(-wpointImageOffset.X, -wpointImageOffset.Y);
				e.Graphics.DrawImage(wpointImage, new Rectangle(p, wpointImage.Size), 0, 0, wpointImage.Width, wpointImage.Height, GraphicsUnit.Pixel, imageAttr);
				wdraw = true;
			}

			bool cdraw = false;
			if (displayModes.HasFlag(DisplayModes.CPoint) && cpointImage != null && cpointCover && CPointPoint != null)
			{
				{
					Point p = tagData.cpoint.Point;
					p.Offset(-cpointImageOffset.X, -cpointImageOffset.Y);
					e.Graphics.DrawImage(cpointImage, new Rectangle(p, cpointImage.Size), 0, 0, cpointImage.Width, cpointImage.Height, GraphicsUnit.Pixel, imageAttr);
				}
				if (tagData.cpoint.Vector != Point.Empty)
				{
					Matrix mx = e.Graphics.Transform.Clone();
					Point p = tagData.cpoint.Point, v = tagData.cpoint.Vector;
					if (tagData.cpoint.Point != Point.Empty)
						e.Graphics.TranslateTransform(p.X, p.Y);
					else
						e.Graphics.TranslateTransform(matrix.Width / 2 + imageIndent, matrix.Height / 2 + imageIndent);
					e.Graphics.DrawLine(cvectorPen, 0, 0, v.X, v.Y);
					e.Graphics.TranslateTransform(v.X, v.Y);
					float f = (float)(Radian2Degree(Math.Atan((v.Y) / (double)(v.X))) + ((v.X) < 0 ? -90 : 90));
					e.Graphics.RotateTransform(f);
					e.Graphics.FillPolygon(cvectorBrush, arrow);
					e.Graphics.Transform = mx;
				}
				cdraw = true;
			}

			if (image != null)
			{
				switch (pictureMode)
				{
					case PictureMode.Tile:
						if (trancparency)
							using (Bitmap tex = new Bitmap(image.Width, image.Height))
							{
								using (Graphics g = Graphics.FromImage(tex))
									g.DrawImage(image, new Rectangle(0, 0, tex.Width, tex.Height), 0, 0, image.Width, image.Height, GraphicsUnit.Pixel, imageAttr);
								using (TextureBrush b = new TextureBrush(tex))
								{
									e.Graphics.TranslateTransform(imageIndent, imageIndent);
									e.Graphics.FillRectangle(b, 0, 0, this.Width - imageIndent, this.Height - imageIndent);
									e.Graphics.TranslateTransform(-imageIndent, -imageIndent);
								}
							}
						else
							using (TextureBrush b = new TextureBrush(image))
							{
								e.Graphics.TranslateTransform(imageIndent, imageIndent);
								e.Graphics.FillRectangle(b, 0, 0, this.Width, this.Height);
								e.Graphics.TranslateTransform(-imageIndent, -imageIndent);
							}
						break;
					default:
						if (trancparency)
							e.Graphics.DrawImage(image, dest, 0, 0, image.Width, image.Height, GraphicsUnit.Pixel, imageAttr);
						else
							e.Graphics.DrawImage(image, dest);
						break;
				}
			}

			if (displayModes.HasFlag(DisplayModes.BPoint) && BPoint != null)
			{
				if (bpointImage != null)
				{
					Point p = tagData.bpoint.Value;
					p.Offset(-bpointImageOffset.X, -bpointImageOffset.Y);
					e.Graphics.DrawImage(bpointImage, new Rectangle(p, bpointImage.Size), 0, 0, bpointImage.Width, bpointImage.Height, GraphicsUnit.Pixel, imageAttr);
				}
			}

			if (showCoordinateSystem)
			{
				e.Graphics.DrawLine(coordinatePen, -this.Width, 0, this.Width, 0);
				e.Graphics.DrawLine(coordinatePen, 0, -this.Height, 0, this.Height);
			}

			if (displayModes.HasFlag(DisplayModes.Bdy) && BdyTags != null)
			{
				foreach (Bdy bdy in BdyTags)
				{
					Rectangle rect = GetRectangleNormalized(bdy.Rectangle);
					e.Graphics.DrawRectangle(bdyRectanglePen, rect);
					e.Graphics.FillRectangle(bdyRectangleBrush, rect);
				}
				if (ShiftKey && drawingMode == DrawingMode.Bdy)
				{
					if (activeBdyIndex.HasValue)
					{
						Rectangle rect = BdyTags[activeBdyIndex.Value].Rectangle;
						rect = new Rectangle(rect.X + rect.Width * 3 / 8, rect.Y + rect.Height * 3 / 8, rect.Width / 4, rect.Height / 4);
						e.Graphics.FillEllipse(bdyRectangleChoiceBrush, rect);
					}
					int? r = GetRectangleChoice(mouse.X - matrix.X, mouse.Y - matrix.Y);
					if (r.HasValue)
						e.Graphics.DrawRectangle(bdyRectangleBoldPen, GetRectangleNormalized(BdyTags[r.Value].Rectangle));
				}
			}

			if (displayModes.HasFlag(DisplayModes.Itr) && ItrTags != null)
			{
				foreach (Itr itr in ItrTags)
				{
					Rectangle rect = GetRectangleNormalized(itr.Rectangle);
					e.Graphics.DrawRectangle(itrRectanglePen, rect);
					e.Graphics.FillRectangle(itrRectangleBrush, rect);
					if (itr.Vector != Point.Empty)
					{
						Matrix mx = e.Graphics.Transform.Clone();
						Point p = new Point(itr.x + itr.w / 2, itr.y + itr.h / 2), v = itr.Vector;
						if (p != Point.Empty)
							e.Graphics.TranslateTransform(p.X, p.Y);
						else
							e.Graphics.TranslateTransform(matrix.Width / 2 + imageIndent, matrix.Height / 2 + imageIndent);
						e.Graphics.DrawLine(itrRectangleVectorPen, 0, 0, v.X, v.Y);
						e.Graphics.TranslateTransform(v.X, v.Y);
						float f = (float)(Radian2Degree(Math.Atan((v.Y) / (double)(v.X))) + ((v.X) < 0 ? -90 : 90));
						e.Graphics.RotateTransform(f);
						e.Graphics.FillPolygon(itrRectangleVectorBrush, arrow);
						e.Graphics.Transform = mx;
					}
				}
				if (ShiftKey && drawingMode == DrawingMode.Itr)
				{
					if (activeItrIndex.HasValue)
					{
						Rectangle rect = ItrTags[activeItrIndex.Value].Rectangle;
						rect = new Rectangle(rect.X + rect.Width * 3 / 8, rect.Y + rect.Height * 3 / 8, rect.Width / 4, rect.Height / 4);
						e.Graphics.FillEllipse(itrRectangleChoiceBrush, rect);
					}
					int? r = GetRectangleChoice(mouse.X - matrix.X, mouse.Y - matrix.Y);
					if (r.HasValue)
						e.Graphics.DrawRectangle(itrRectangleBoldPen, GetRectangleNormalized(ItrTags[r.Value].Rectangle));
				}
			}

			if (displayModes.HasFlag(DisplayModes.WPoint) && !wdraw && WPointPoint != null)
			{
				if (wpointImage == null)
				{
					Point p = WPointPoint.Value;
					e.Graphics.TranslateTransform(p.X, p.Y);
					for (int i = 0; i < pointer.Length; i += 2)
						e.Graphics.DrawLine(wpointPen, pointer[i], pointer[i + 1]);
					e.Graphics.TranslateTransform(-p.X, -p.Y);
				}
				else
				{
					Point p = tagData.wpoint.Point;
					p.Offset(-wpointImageOffset.X, -wpointImageOffset.Y);
					e.Graphics.DrawImage(wpointImage, new Rectangle(p, wpointImage.Size), 0, 0, wpointImage.Width, wpointImage.Height, GraphicsUnit.Pixel, imageAttr);
				}
				if (tagData.wpoint.Vector != Point.Empty)
				{
					Matrix mx = e.Graphics.Transform.Clone();
					Point p = tagData.wpoint.Point, v = tagData.wpoint.Vector;
					if (tagData.wpoint.Point != Point.Empty)
						e.Graphics.TranslateTransform(p.X, p.Y);
					else
						e.Graphics.TranslateTransform(matrix.Width / 2 + imageIndent, matrix.Height / 2 + imageIndent);
					e.Graphics.DrawLine(wvectorPen, 0, 0, v.X, v.Y);
					e.Graphics.TranslateTransform(v.X, v.Y);
					float f = (float)(Radian2Degree(Math.Atan((v.Y) / (double)(v.X))) + ((v.X) < 0 ? -90 : 90));
					e.Graphics.RotateTransform(f);
					e.Graphics.FillPolygon(wvectorBrush, arrow);
					e.Graphics.Transform = mx;
				}
			}

			if (displayModes.HasFlag(DisplayModes.CPoint) && !cdraw && CPointPoint != null)
			{
				if (cpointImage == null)
				{
					Point p = CPointPoint.Value;
					e.Graphics.TranslateTransform(p.X, p.Y);
					for (int i = 0; i < pointer.Length; i += 2)
						e.Graphics.DrawLine(cpointPen, pointer[i], pointer[i + 1]);
					e.Graphics.TranslateTransform(-p.X, -p.Y);
				}
				else
				{
					Point p = tagData.cpoint.Point;
					p.Offset(-cpointImageOffset.X, -cpointImageOffset.Y);
					e.Graphics.DrawImage(cpointImage, new Rectangle(p, cpointImage.Size), 0, 0, cpointImage.Width, cpointImage.Height, GraphicsUnit.Pixel, imageAttr);
				}
				if (tagData.cpoint.Vector != Point.Empty)
				{
					Matrix mx = e.Graphics.Transform.Clone();
					Point p = tagData.cpoint.Point, v = tagData.cpoint.Vector;
					if (tagData.cpoint.Point != Point.Empty)
						e.Graphics.TranslateTransform(p.X, p.Y);
					else
						e.Graphics.TranslateTransform(matrix.Width / 2 + imageIndent, matrix.Height / 2 + imageIndent);
					e.Graphics.DrawLine(cvectorPen, 0, 0, v.X, v.Y);
					e.Graphics.TranslateTransform(v.X, v.Y);
					float f = (float)(Radian2Degree(Math.Atan((v.Y) / (double)(v.X))) + ((v.X) < 0 ? -90 : 90));
					e.Graphics.RotateTransform(f);
					e.Graphics.FillPolygon(cvectorBrush, arrow);
					e.Graphics.Transform = mx;
				}
			}

			if (displayModes.HasFlag(DisplayModes.OPoint) && OPointPoint != null)
			{
				if (opointImage == null)
				{
					Point p = OPointPoint.Value;
					e.Graphics.TranslateTransform(p.X, p.Y);
					for (int i = 0; i < pointer.Length; i += 2)
						e.Graphics.DrawLine(opointPen, pointer[i], pointer[i + 1]);
					e.Graphics.TranslateTransform(-p.X, -p.Y);
				}
				else
				{
					Point p = tagData.opoint.Point;
					p.Offset(-opointImageOffset.X, -opointImageOffset.Y);
					e.Graphics.DrawImage(opointImage, new Rectangle(p, opointImage.Size), 0, 0, opointImage.Width, opointImage.Height, GraphicsUnit.Pixel, imageAttr);
				}
				if (tagData.opoint.Vector != Point.Empty)
				{
					Matrix mx = e.Graphics.Transform.Clone();
					Point p = tagData.opoint.Point, v = tagData.opoint.Vector;
					if (tagData.opoint.Point != Point.Empty)
						e.Graphics.TranslateTransform(p.X, p.Y);
					else
						e.Graphics.TranslateTransform(matrix.Width / 2 + imageIndent, matrix.Height / 2 + imageIndent);
					e.Graphics.DrawLine(ovectorPen, 0, 0, v.X, v.Y);
					e.Graphics.TranslateTransform(v.X, v.Y);
					float f = (float)(Radian2Degree(Math.Atan((v.Y) / (double)(v.X))) + ((v.X) < 0 ? -90 : 90));
					e.Graphics.RotateTransform(f);
					e.Graphics.FillPolygon(ovectorBrush, arrow);
					e.Graphics.Transform = mx;
				}
			}
		}

		[EditorBrowsable]
		protected override void OnPaintBackground(PaintEventArgs pevent)
		{
			pevent.Graphics.InterpolationMode = backgroundInterpolation;
			base.OnPaintBackground(pevent);
		}

		#endregion

		#region Mouse Handlers

		private bool leftMouse, rightMouse, middleMouse, controlKey, shiftKey;
		[Browsable(false)]
		public bool LeftMouse { get { return leftMouse; } }
		[Browsable(false)]
		public bool RightMouse { get { return rightMouse; } }
		[Browsable(false)]
		public bool MiddleMouse { get { return middleMouse; } }
		[Browsable(false)]
		public bool LeftOrRightMouse { get { return leftMouse | rightMouse; } }
		[Browsable(false)]
		public bool LeftAndRightMouse { get { return leftMouse & rightMouse; } }
		[Browsable(false)]
		public bool AnyMouse { get { return leftMouse | rightMouse | middleMouse; } }

		[Browsable(false)]
		public bool ControlKey { get { return controlKey; } set { controlKey = value; } }
		[Browsable(false)]
		public bool ShiftKey { get { return shiftKey; } set { shiftKey = value; } }

		object lastBounds = new object(), lastBBounds = new object();
		bool b, bb;

		Point relativeMouseLocation = Point.Empty,
				controlMouseLocationC = Point.Empty,
				controlMouseLocationB = Point.Empty,
				controlMouseLocationBB = Point.Empty,
				mouse = Point.Empty;

		[EditorBrowsable]
		protected override void OnMouseDown(MouseEventArgs e)
		{
			base.OnMouseDown(e);
			if ((e.Button & MouseButtons.Left) != 0)
				leftMouse = true;
			if ((e.Button & MouseButtons.Right) != 0)
				rightMouse = true;
			if ((e.Button & MouseButtons.Middle) != 0)
				middleMouse = true;

			Rectangle matrix = Matrix;
			relativeMouseLocation = controlMouseLocationB = controlMouseLocationBB = e.Location;
			controlMouseLocationB.Offset(15, -25);
			controlMouseLocationBB.Offset(15, -5);
			relativeMouseLocation.Offset(-matrix.X, -matrix.Y);

			if (tagData == null)
				return;

			Rectangle rect = GetRectangleUnhandled();

			switch (drawingMode)
			{
				case DrawingMode.WPoint:
					if (LeftMouse)
					{
						WPointPoint = relativeMouseLocation;
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = lastBBounds = relativeMouseLocation).ToString(), this, controlMouseLocationB);
						b = true;
					}
					else if (RightMouse && WPoint != null)
					{
						WPointVector = new Point((relativeMouseLocation.X - WPointPoint.Value.X) / vectorDivision, (relativeMouseLocation.Y - WPointPoint.Value.Y) / vectorDivision);
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = lastBBounds = WPointVector).ToString(), this, controlMouseLocationB);
						b = true;
					}
					break;
				case DrawingMode.OPoint:
					if (LeftMouse)
					{
						OPointPoint = relativeMouseLocation;
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = lastBBounds = relativeMouseLocation).ToString(), this, controlMouseLocationB);
						b = true;
					}
					else if (RightMouse && OPoint != null)
					{
						OPointVector = new Point((relativeMouseLocation.X - OPointPoint.Value.X) / vectorDivision, (relativeMouseLocation.Y - OPointPoint.Value.Y) / vectorDivision);
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = lastBBounds = OPointVector).ToString(), this, controlMouseLocationB);
						b = true;
					}
					break;
				case DrawingMode.CPoint:
					if (LeftMouse)
					{
						CPointPoint = relativeMouseLocation;
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = lastBBounds = relativeMouseLocation).ToString(), this, controlMouseLocationB);
						b = true;
					}
					else if (RightMouse && CPoint != null)
					{
						CPointVector = new Point((relativeMouseLocation.X - CPointPoint.Value.X) / vectorDivision, (relativeMouseLocation.Y - CPointPoint.Value.Y) / vectorDivision);
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = lastBBounds = CPointVector).ToString(), this, controlMouseLocationB);
						b = true;
					}
					break;
				case DrawingMode.BPoint:
					if (LeftOrRightMouse)
					{
						BPoint = relativeMouseLocation;
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = lastBBounds = relativeMouseLocation).ToString(), this, controlMouseLocationB);
						b = true;
					}
					break;
				case DrawingMode.Center:
					if (LeftOrRightMouse)
					{
						Center = relativeMouseLocation;
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = lastBBounds = relativeMouseLocation).ToString(), this, controlMouseLocationB);
						b = true;
					}
					break;
				case DrawingMode.Bdy:
					if (ShiftKey)
					{
						if (LeftMouse)
							ActiveBdyIndex = GetRectangleChoice(relativeMouseLocation);
						else if (RightMouse)
						{
							int? del = GetRectangleChoice(relativeMouseLocation);
							if (del.HasValue)
							{
								BdyTags.RemoveAt(del.Value);
								ActiveBdyIndex = BdyTags.Count > 0 ? (int?)(BdyTags.Count - 1) : null;
							}
						}
					}
					else if (ControlKey || !activeBdyIndex.HasValue)
						NewRectangle(ActiveRectangle, false);
					if (LeftOrRightMouse && e.Location != ActiveRectangle.Location)
					{
						if (!ShiftKey)
							ActiveRectangle = new Rectangle(relativeMouseLocation, rect.Size);
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = lastBBounds = ActiveRectangle).ToString(), this, controlMouseLocationB);
						b = true;
					}
					break;
				case DrawingMode.Itr:
					if (LeftMouse)
					{
						if (ShiftKey)
							ActiveItrIndex = GetRectangleChoice(relativeMouseLocation);
						else if (ControlKey || !activeItrIndex.HasValue)
							NewRectangle(ActiveRectangle, false);
						if (!ShiftKey && e.Location != ActiveRectangle.Location)
							ActiveRectangle = new Rectangle(relativeMouseLocation, rect.Size);
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = ActiveRectangle).ToString(), this, controlMouseLocationB);
						b = true;
					}
					if (RightMouse)
					{
						if (!ShiftKey && ActiveItr != null)
						{
							ActiveItrVector = new Point((relativeMouseLocation.X - ActiveRectangle.X - ActiveRectangle.Width / 2) / vectorDivision, (relativeMouseLocation.Y - ActiveRectangle.Y - ActiveRectangle.Height / 2) / vectorDivision);
							if (showBoundToolTip)
								toolTipBB.Show((lastBBounds = ActiveItrVector).ToString(), this, controlMouseLocationBB);
						}
						else
						{
							int? del = GetRectangleChoice(relativeMouseLocation);
							if (del.HasValue)
							{
								ItrTags.RemoveAt(del.Value);
								ActiveItrIndex = ItrTags.Count > 0 ? (int?)(ItrTags.Count - 1) : null;
							}
						}
						bb = true;
					}
					break;
			}
			base.Invalidate();
		}

		[EditorBrowsable]
		protected override void OnMouseMove(MouseEventArgs e)
		{
			base.OnMouseMove(e);

			if (e.Location == mouse)
				return;
			else
				mouse = e.Location;

			Rectangle matrix = Matrix, rect = GetRectangleUnhandled();
			relativeMouseLocation = controlMouseLocationC = controlMouseLocationB = controlMouseLocationBB = e.Location;
			controlMouseLocationC.Offset(15, 25);
			controlMouseLocationB.Offset(15, -25);
			controlMouseLocationBB.Offset(15, -5);
			relativeMouseLocation.Offset(-matrix.X, -matrix.Y);

			if (showCoordinateToolTip)
				toolTipC.Show(relativeMouseLocation.X + "," + relativeMouseLocation.Y, this, controlMouseLocationC);

			if (tagData == null)
				return;

			switch (drawingMode)
			{
				case DrawingMode.WPoint:
					if (LeftMouse)
					{
						WPointPoint = relativeMouseLocation;
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = lastBBounds = relativeMouseLocation).ToString(), this, controlMouseLocationB);
					}
					else if (RightMouse && WPoint != null)
					{
						WPointVector = new Point((relativeMouseLocation.X - WPointPoint.Value.X) / vectorDivision, (relativeMouseLocation.Y - WPointPoint.Value.Y) / vectorDivision);
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = lastBBounds = WPointVector).ToString(), this, controlMouseLocationB);
					}
					break;
				case DrawingMode.OPoint:
					if (LeftMouse)
					{
						OPointPoint = relativeMouseLocation;
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = lastBBounds = relativeMouseLocation).ToString(), this, controlMouseLocationB);
					}
					else if (RightMouse && OPoint != null)
					{
						OPointVector = new Point((relativeMouseLocation.X - OPointPoint.Value.X) / vectorDivision, (relativeMouseLocation.Y - OPointPoint.Value.Y) / vectorDivision);
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = lastBBounds = OPointVector).ToString(), this, controlMouseLocationB);
					}
					break;
				case DrawingMode.CPoint:
					if (LeftMouse)
					{
						CPointPoint = relativeMouseLocation;
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = lastBBounds = relativeMouseLocation).ToString(), this, controlMouseLocationB);
					}
					else if (RightMouse && CPoint != null)
					{
						CPointVector = new Point((relativeMouseLocation.X - CPointPoint.Value.X) / vectorDivision, (relativeMouseLocation.Y - CPointPoint.Value.Y) / vectorDivision);
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = lastBBounds = CPointVector).ToString(), this, controlMouseLocationB);
					}
					break;
				case DrawingMode.BPoint:
					if (LeftOrRightMouse)
					{
						BPoint = relativeMouseLocation;
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = lastBBounds = relativeMouseLocation).ToString(), this, controlMouseLocationB);
					}
					break;
				case DrawingMode.Center:
					if (LeftOrRightMouse)
					{
						Center = relativeMouseLocation;
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = lastBBounds = relativeMouseLocation).ToString(), this, controlMouseLocationB);
					}
					break;
				case DrawingMode.Bdy:
					if (LeftOrRightMouse && e.Location != ActiveRectangle.Location)
					{
						if (!ShiftKey && e.Location != ActiveRectangle.Location)
							ActiveRectangle = Rectangle.FromLTRB(rect.X, rect.Y, relativeMouseLocation.X == rect.X ? rect.Right : relativeMouseLocation.X, relativeMouseLocation.Y == rect.Y ? rect.Bottom : relativeMouseLocation.Y);
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = lastBBounds = ActiveRectangle).ToString(), this, controlMouseLocationB);
						base.Invalidate();
					}
					if (ShiftKey)
						base.Invalidate();
					break;
				case DrawingMode.Itr:
					if (LeftMouse)
					{
						if (!ShiftKey && e.Location != ActiveRectangle.Location)
							ActiveRectangle = Rectangle.FromLTRB(rect.X, rect.Y, relativeMouseLocation.X == rect.X ? rect.Right : relativeMouseLocation.X, relativeMouseLocation.Y == rect.Y ? rect.Bottom : relativeMouseLocation.Y);
						if (showBoundToolTip)
							toolTipB.Show((lastBounds = ActiveRectangle).ToString(), this, controlMouseLocationB);
						base.Invalidate();
					}
					if (RightMouse && activeItrIndex.HasValue)
					{
						if (!ShiftKey && ActiveItr != null)
						{
							ActiveItrVector = new Point((relativeMouseLocation.X - ActiveRectangle.X - ActiveRectangle.Width / 2) / vectorDivision, (relativeMouseLocation.Y - ActiveRectangle.Y - ActiveRectangle.Height / 2) / vectorDivision);
							if (showBoundToolTip)
								toolTipBB.Show((lastBBounds = ActiveItrVector).ToString(), this, controlMouseLocationBB);
						}
						base.Invalidate();
					}
					if (ShiftKey)
						base.Invalidate();
					break;
			}
		}

		[EditorBrowsable]
		protected override void OnMouseUp(MouseEventArgs e)
		{
			base.OnMouseUp(e);
			if ((e.Button & MouseButtons.Left) != 0)
				leftMouse = false;
			if ((e.Button & MouseButtons.Right) != 0)
				rightMouse = false;
			if ((e.Button & MouseButtons.Middle) != 0)
				middleMouse = false;

			if (showBoundToolTip && drawingMode != DrawingMode.None)
			{
				if (b && !leftMouse)
				{
					toolTipB.Show(lastBounds.ToString(), this, controlMouseLocationB, 100);
					b = false;
				}
				if (bb && !rightMouse)
				{
					toolTipBB.Show(lastBBounds.ToString(), this, controlMouseLocationBB, 100);
					bb = false;
				}
			}
			base.Invalidate();
		}

		[EditorBrowsable]
		protected override void OnMouseLeave(EventArgs e)
		{
			base.OnMouseLeave(e);
			if (showCoordinateToolTip)
				toolTipC.Show(relativeMouseLocation.X + "," + relativeMouseLocation.Y, this, controlMouseLocationC, 1);
			base.Invalidate();
		}

		#endregion
	}
}
