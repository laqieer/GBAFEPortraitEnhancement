// by laqieer
// 2018/4/26
// ³ÉÄêç÷ç÷Í·Ïñ

#include "portrait.h"


#include "TikiFMainPortrait_bin.h"
#include "TikiFMiniPortraitLZ_bin.h"
#include "TikiFEyeFrame_bin.h"
#include "TikiFMouthFrame_bin.h"


const u16 TikiFPortraitPal[16] =
{
	0x757A, 0x67DF, 0x77DF, 0x5B3E, 0x675E, 0x5EFA, 0x4E99, 0x2537,
	0x4F56, 0x3A15,	0x1CF3, 0x46D3, 0x3A4F, 0x320D, 0x108C, 0x258A
};

#define getTileNo(x,y)	((32 * (y) + (x))&1023)

const s16 TikiFEyeFrameTemplate[2][4] =
{
	{getTileNo(9,0),getTileNo(10,0),getTileNo(11,0),getTileNo(12,0)},
	{getTileNo(9,1),getTileNo(10,1),getTileNo(11,1),getTileNo(12,1)}
};

const struct EyeFrameInfo TikiFEyeFrameInfo =
{
	4,2,
	2,2,
	{TikiFEyeFrame_bin,&TikiFEyeFrame_bin[32 * 4 * 2],&TikiFEyeFrame_bin[32 * 4 * 2 * 2]},
	TikiFEyeFrameTemplate
};

__attribute__((section(".TikiFPortrait")))
const struct Portrait TikiFPortrait =
{
	TikiFMainPortrait_bin,
	TikiFMiniPortraitLZ_bin,
	TikiFPortraitPal,
	TikiFMouthFrame_bin,
	{&TikiFEyeFrameInfo},
	-1 * 8 + 4, 8 * 3 + 4,	// position (unit: 8px)
	0, 0,	// eye position (null)
	3,	// Eye Control Flag (3 = no eye frame in the strip)
	4,	// OAM index
	2,	// TSA index
	1,	// mask index
	1	// position 8px-aligned
};
