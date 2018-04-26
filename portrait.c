/* by laqieer
   2017/4/13
   美版圣魔新头像系统
*/

#include "portrait.h"

const PTRFUN eyeAnimation[3] =
{
	eyeAnimation1,
	eyeAnimation2,
	eyeAnimation3
};

const void *dialoguePortraitTemplate[][2] =
{
	{0x859100C,0x859100C+26},
	{0x8591040,0x8591040+38},
	{0x859108C,0x859108C+50},	
	{0x85910F0,0x85910F0+50}
};

const void *statScreenPortraitTemplate[] =
{
	0x85A0838,
	0x85A08F0
};

const u16 statScreenPortraitMask[][9][10] =
{
	{
		{0,1,1,1,1,1,1,1,1,0},
		{0,1,1,1,1,1,1,1,1,0},
		{0,1,1,1,1,1,1,1,1,0},
		{0,1,1,1,1,1,1,1,1,0},
		{0,1,1,1,1,1,1,1,1,0},
		{0,1,1,1,1,1,1,1,1,0},
		{1,1,1,1,1,1,1,1,1,1},
		{1,1,1,1,1,1,1,1,1,1},
		{1,1,1,1,1,1,1,1,1,1}
	}
};

void eyeAnimation1(u32 *mempool, int eyeStatus)
{
	int winkFlag;
	s16 eyeTileIndexDelta;
	int *data;
	struct Portrait *portrait;
	int x;
	int y;

	if(eyeStatus & (~0x81))
		return;
	winkFlag = eyeStatus & 0x80;
	eyeTileIndexDelta = 88 - (eyeStatus & 1)*(88 - 24);
	data = (int *)mempool[11];
	portrait = data[11];
	x = 4 - portrait->eyePositionX;
	if(!(sub(80057A4)(data) & 1))
		x = -x;
	x = (8 * x * (1-portrait->eyeMouthPositionAlignmentFlag) + x * portrait->eyeMouthPositionAlignmentFlag + (s16)data[13] - 16) & 0x1FF;
	if(sub(80057A4)(data) & 1)
		x += 0x1000;
	y = ((-(sub(80057A4)(data) & 0x400)>>31) & 0x400) + ((*(u16 *)((int)data + 54) + 8 * portrait->eyePositionY * (1 - portrait->eyeMouthPositionAlignmentFlag) + portrait->eyePositionY * portrait->eyeMouthPositionAlignmentFlag) & 0xFF);
	if(winkFlag)
	{
		if(!(sub(80057A4)(data) & 1))
			x += 16;
		sub(8005428)(*(s8 *)((int)data + 65),x,y,0x8590F4C,*(s16 *)((int)data + 60) + eyeTileIndexDelta + 2);
	}
	else
		sub(8005428)(*(s8 *)((int)data + 65),x,y,0x8590F8C,*(s16 *)((int)data + 60) + eyeTileIndexDelta);
	
}

void eyeAnimation2(u32 *mempool, int eyeStatus)
{
	int eyeShape;
	int winkFlag;
	struct Portrait *portrait;
	int *data;
	int x;
	int y;
	
	data = mempool[11];
	portrait = data[11];
	winkFlag = eyeStatus & 0x80;
	eyeShape = 2 - (eyeStatus & 1);
	if(eyeStatus & (~0x81))
		eyeShape = 0;
	sub(8012FF4)(portrait->ce.eyeFrameInfo->eyeFrame[eyeShape],32 * ((*(s16 *)((int)data + 60) + 28 + 32 * 2) & 0x3FF) + 0x6010000,4,2);
	x = 4 - portrait->eyePositionX;
	if(winkFlag)
		x += 2;
	if(!portrait->eyeMouthPositionAlignmentFlag)
		x = 8 * x;
	if(!(sub(80057A4)(data) & 1))
		x = - x;
	x = 0x1FF & (x + *(s16 *)((int)data + 52) - 16);
	if(sub(80057A4)(data) & 1)
		x += 0x1000;
	y = portrait->eyePositionY;
	if(!portrait->eyeMouthPositionAlignmentFlag)
		y = 8 * y;
	y = ((y + *(s16 *)((int)data + 54)) & 0xFF) + (0x400 & (-(0x400 & sub(80057A4)(data)) >> 31));
	if(winkFlag)
		if(!(sub(80057A4)(data) & 1))
			x += 16 + 2;
	sub(8005428)(*(s8 *)((int)data + 65),x,y,winkFlag ? 0x8590F4C : 0x8590F8C,*(s16 *)((int)data + 60) + 28 + 32 * 2 + 2 * !!winkFlag);	
}

void eyeAnimation3(u32 *mempool, int eyeStatus)
{
	int eyeShape;
	int winkFlag;
	struct Portrait *portrait;
	int i;
	int j;

	portrait = (struct Portrait *)(*(u32 *)(mempool[11] + 44));
	if(eyeStatus & (~0x81))
	{
		for(i = 0;i < portrait->ce.eyeFrameInfo->height;i++)
			for(j = 0;j < portrait->ce.eyeFrameInfo->width;j++)
				sub(8012FF4)((int)portrait->ce.eyeFrameInfo->eyeFrame[0] + 32 * (portrait->ce.eyeFrameInfo->width * i + j),0x6010000 + 32 * ((*(u16 *)(mempool[11] + 60) + portrait->ce.eyeFrameInfo->blinkTemplate[portrait->ce.eyeFrameInfo->width * i + j]) & 0x3FF),1,1);
		return;
	}
	winkFlag = eyeStatus & 0x80;
	eyeShape = 2 - (eyeStatus & 1);
	if(winkFlag)
		for(i = portrait->ce.eyeFrameInfo->height - portrait->ce.eyeFrameInfo->winkHeight;i < portrait->ce.eyeFrameInfo->height; i++)
			for(j = portrait->ce.eyeFrameInfo->width - portrait->ce.eyeFrameInfo->winkWidth;j < portrait->ce.eyeFrameInfo->width; j++)
				sub(8012FF4)((int)portrait->ce.eyeFrameInfo->eyeFrame[eyeShape] + 32 * (portrait->ce.eyeFrameInfo->width * i + j),0x6010000 + 32 * ((*(u16 *)(mempool[11] + 60) + portrait->ce.eyeFrameInfo->blinkTemplate[portrait->ce.eyeFrameInfo->width * i + j]) & 0x3FF),1,1);
	else
		for(i = 0;i < portrait->ce.eyeFrameInfo->height;i++)
			for(j = 0;j < portrait->ce.eyeFrameInfo->width;j++)
				sub(8012FF4)((int)portrait->ce.eyeFrameInfo->eyeFrame[eyeShape] + 32 * (portrait->ce.eyeFrameInfo->width * i + j),0x6010000 + 32 * ((*(u16 *)(mempool[11] + 60) + portrait->ce.eyeFrameInfo->blinkTemplate[portrait->ce.eyeFrameInfo->width * i + j]) & 0x3FF),1,1);				
}

__attribute__((section(".callEyeAnimation")))
void callEyeAnimation(u32 *mempool, int eyeStatus)
{
	struct Portrait *portrait;

	portrait = (struct Portrait *)(*(u32 *)(mempool[11] + 44));
	eyeAnimation[portrait->eyeControlFlag - 1](mempool,eyeStatus);
}

void drawStatScreenPortrait(u16 *TSABufferInWRAM, int portraitID, int presentBGTileIndex, int presentBGPaletteIndex)
{
	struct Portrait *portrait;
	int i;
	int j;

	if(!portraitID)
		return;
	portrait = sub(8005514)(portraitID);
	sub(8000DB8)(portrait->portraitPalette, 32 * presentBGPaletteIndex, 32);
	if(portrait->mainPortrait)
	{
		sub(8012F50)(portrait->mainPortrait, 32 * presentBGTileIndex + 0x6000000);
		sub(8000DB8)(portrait->portraitPalette, 32 * presentBGPaletteIndex, 32);
		if((sub(8005C24)(portraitID)<<24) && (portrait->statScreenPortraitTemplate == 0))
			sub(80D74A0)(TSABufferInWRAM, statScreenPortraitTemplate[1], ((presentBGPaletteIndex & 0xF)<< 12) + (presentBGTileIndex & 0x3FF));
		else
			sub(80D74A0)(TSABufferInWRAM, statScreenPortraitTemplate[portrait->statScreenPortraitTemplate], ((presentBGPaletteIndex & 0xF)<< 12) + (presentBGTileIndex & 0x3FF));
		for(i = 0; i < 9; i++)
			for(j = 0; j < 10; j++)
				TSABufferInWRAM[32 * i + j] &= - statScreenPortraitMask[portrait->statScreenPortraitMask][i][j];
	}
	else
	{
		sub(8012F50)(portrait->ce.classCard, 32 * presentBGTileIndex + 0x6000000);
		sub(8013104)(TSABufferInWRAM, (presentBGPaletteIndex << 12) + (presentBGTileIndex & 0x3FF), 10, 9);
	}
}

__attribute__((section(".callDrawStatScreenPortrait")))
void callDrawStatScreenPortrait(u16 *TSABufferInWRAM, int portraitID, int presentBGTileIndex, int presentBGPaletteIndex)
{
	drawStatScreenPortrait(TSABufferInWRAM, portraitID, presentBGTileIndex, presentBGPaletteIndex);
}

void drawDialoguePortrait(u32 *mempool)
{
	u32 flag1;
	u32 flag2;
	s16 delta;
	struct Portrait *portrait;

	portrait = (struct Portrait *)mempool[11];
	flag1 = mempool[12] & 0x807;

	if(flag1 == 0x800 || flag1 == 0x801)
		mempool[14] = dialoguePortraitTemplate[max(portrait->dialoguePortraitTemplate,3)][flag1 & 1];
	else if(flag1 <= 5)
		mempool[14] = dialoguePortraitTemplate[max(portrait->dialoguePortraitTemplate,flag1 >> 1)][flag1 & 1];

	flag2 = mempool[12] & 0x3C0;
	if ( flag2 == 0x80 )
	{
		delta = 0x400;
	}
	else if ( flag2 > 0x80 )
	{
		if ( flag2 != 0x200 )
			goto LABEL_1;
		delta = 0xC00;
	}
	else
	{
		if ( flag2 != 0x40 )
		{
LABEL_1:
			delta = 0x800;
			goto LABEL_2;
		}
		delta = 0;
	}
LABEL_2:
	*((s16 *)mempool + 30) = (*(s32 *)(8 * *((s8 *)mempool + 64) + 0x202A68C) >> 5)
															 + ((*(s16 *)(8 * *((s8 *)mempool + 64) + 0x202A68C + 4) & 0xF) << 12)
															 + delta;
}

__attribute__((section(".callDrawDialoguePortrait")))
void callDrawDialoguePortrait(s16 *mempool)
{
	drawDialoguePortrait((u32 *)mempool);
}

void mouthAnimation(int *mempool)
{
	int mouthFrameTileNoDela;
	int *data;
	int x;
	int y;
	struct Portrait *portrait;

	data = mempool[11];
	portrait = data[11];
	mouthFrameTileNoDela = 0;
	if(!(sub(80057A4)(data) & 8))
		mouthFrameTileNoDela = 24;

	if(sub(80057A4)(data) & 0x30)
	{
		if(!(--*((s16 *)mempool + 25) & 0x8000))
			goto LABEL_3;
		*((s16 *)mempool + 25) = ((sub(8000CE8)() >> 16) & 7) + 1;
		*((s16 *)mempool + 24) = (*((s16 *)mempool + 24) + 1) & 3;
		if(*((s16 *)mempool + 24) == 1 || *((s16 *)mempool + 24) == 3)
			mouthFrameTileNoDela += 8;
		if(*((s16 *)mempool + 24) == 2)
			mouthFrameTileNoDela += 16;
		sub(8012FF4)((int)portrait->mouthFrame + 32 * mouthFrameTileNoDela,32 * ((*(s16 *)((int)data + 60) + 28) & 0x3FF) + 0x6010000,4,2);
		goto LABEL_3;
	}

	sub(8012FF4)((int)portrait->mouthFrame + 32 * (mouthFrameTileNoDela + 16),32 * ((*(s16 *)((int)data + 60) + 28) & 0x3FF) + 0x6010000,4,2);

LABEL_3:
	x = 4 - portrait->mouthPositionX;
	if(!portrait->eyeMouthPositionAlignmentFlag)
		x = 8 * x;
	if(!(sub(80057A4)(data) & 1))
		x = - x;
	x = 0x1FF & (x + *(s16 *)((int)data + 52) - 16);
	if(sub(80057A4)(data) & 1)
		x += 0x1000;
	y = portrait->mouthPositionY;
	if(!portrait->eyeMouthPositionAlignmentFlag)
		y = 8 * y;
	y = ((y + *(s16 *)((int)data + 54)) & 0xFF) + (0x400 & (-(0x400 & sub(80057A4)(data)) >> 31));
	sub(8005428)(*(s8 *)((int)data + 65),x,y,0x8590F8C,*(s16 *)((int)data + 60) + 28);
}

__attribute__((section(".callMouthAnimation")))
void callMouthAnimation(int *mempool)
{
	mouthAnimation(mempool);
};
