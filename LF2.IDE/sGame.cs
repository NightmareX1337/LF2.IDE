using System;
using System.Runtime.InteropServices;

[StructLayout(LayoutKind.Sequential)]
public struct sOpoint
{
	int kind;
	int x;
	int y;
	int action;
	int dvx;
	int dvy;
	int oid;
	int facing;
}

[StructLayout(LayoutKind.Sequential)]
public struct sBpoint
{
	int x;
	int y;
}

[StructLayout(LayoutKind.Sequential)]
public struct sCpoint
{
	int kind;
	int x;
	int y;
	/// <summary>
	/// if its kind 2 this is fronthurtact
	/// </summary>
	int injury;
	/// <summary>
	/// if its kind 2 this is backhurtact
	/// </summary>
	int cover;
	int vaction;
	int aaction;
	int jaction;
	int daction;
	int throwvx;
	int throwvy;
	int hurtable;
	int decrease;
	int dircontrol;
	int taction;
	int throwinjury;
	int throwvz;
}

[StructLayout(LayoutKind.Sequential)]
public struct sWpoint
{
	int kind;
	int x;
	int y;
	int weaponact;
	int attacking;
	int cover;
	int dvx;
	int dvy;
	int dvz;
}

[StructLayout(LayoutKind.Sequential)]
public struct sItr
{
	int kind;
	int x;
	int y;
	int w;
	int h;
	int dvx;
	int dvy;
	int fall;
	int arest;
	int vrest;
	int effect;
	int catchingact;
	int caughtact;
	int bdefend;
	int injury;
	int zwidth;
}

[StructLayout(LayoutKind.Sequential)]
public struct sBdy
{
	int kind;
	int x;
	int y;
	int w;
	int h;
}

[StructLayout(LayoutKind.Sequential)]
public struct sFrame
{
	char exists;
	int pic;
	int state;
	int wait;
	int next;
	int dvx;
	int dvy;
	int dvz;
	int hit_a;
	int hit_d;
	int hit_j;
	int hit_Fa;
	int hit_Ua;
	int hit_Da;
	int hit_Fj;
	int hit_Uj;
	int hit_Dj;
	int hit_ja;
	int mp;
	int centerx;
	int centery;
	sOpoint opoint;
	sBpoint bpoint;
	sCpoint cpoint;
	sWpoint wpoint;
	int itr_count;
	int bdy_count;
	[MarshalAs(UnmanagedType.LPArray)]
	sItr[] itrs;
	[MarshalAs(UnmanagedType.LPArray)]
	sBdy[] bdys;
	// these values form a rectangle that holds all itrs/bdys within it
	int itr_x;
	int itr_y;
	int itr_w;
	int itr_h;
	int bdy_x;
	int bdy_y;
	int bdy_w;
	int bdy_h;
	string fname;
	string sound;
}

[StructLayout(LayoutKind.Sequential)]
public struct sDataFile
{
	int walking_frame_rate;
	double walking_speed;
	double walking_speedz;
	int running_frame_rate;
	double running_speed;
	double running_speedz;
	double heavy_walking_speed;
	double heavy_walking_speedz;
	double heavy_running_speed;
	double heavy_running_speedz;
	double jump_height;
	double jump_distance;
	double jump_distancez;
	double dash_height;
	double dash_distance;
	double dash_distancez;
	double rowing_height;
	double rowing_distance;
	int weapon_hp;
	int weapon_drop_hurt;
	int pic_count;
	[MarshalAs(UnmanagedType.LPArray)]
	string[] pic_bmps;
	[MarshalAs(UnmanagedType.LPArray)]
	int[] pic_index;
	[MarshalAs(UnmanagedType.LPArray)]
	int[] pic_width;
	[MarshalAs(UnmanagedType.LPArray)]
	int[] pic_height;
	[MarshalAs(UnmanagedType.LPArray)]
	int[] pic_row;
	[MarshalAs(UnmanagedType.LPArray)]
	int[] pic_col;
	int id;
	int type;
	string small_bmp;	//I believe at least some of this has to do with small image
	[MarshalAs(UnmanagedType.LPArray)]
	string face_bmp;	//I believe at least some of this has to do with small image
	[MarshalAs(UnmanagedType.LPArray)]
	sFrame[] frames;
	string name;	//not actually certain that the length is 12, seems like voodoo magic
}

[StructLayout(LayoutKind.Sequential)]
public struct sSpawn
{
	int id;
	int x;
	int hp;
	int times;
	int reserve;
	int join;
	int join_reserve;
	int act;
	double ratio;
	int role;
}

[StructLayout(LayoutKind.Sequential)]
public struct sPhase
{
	int bound;
	string music;
	int spawn_count;
	[MarshalAs(UnmanagedType.LPArray)]
	sSpawn[] spawns;
	int when_clear_goto_phase;
}

[StructLayout(LayoutKind.Sequential)]
public struct sStage
{
	int phase_count;
	sPhase[] phases;
}

[StructLayout(LayoutKind.Sequential)]
public struct sBackground
{
	int bg_width;
	int bg_zwidth1;
	int bg_zwidth2;
	int perspective1;
	int perspective2;
	int shadow;
	int layer_count;
	string[] layer_bmps;
	string shadow_bmp;
	string name;
	int[] transparency;
	int[] layer_width;
	int[] layer_x;
	int[] layer_y;
	int[] layer_height;
}
