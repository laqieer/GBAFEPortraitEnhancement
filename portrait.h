/* by laqieer
   2017/4/13
   美版圣魔新头像系统
*/

#pragma once

typedef     unsigned char           u8,	_BYTE;
typedef     unsigned short int      u16, _WORD;
typedef     unsigned int            u32, _DWORD;

typedef     signed char             s8, BYTE;
typedef     signed short int        s16, WORD;
typedef     signed int              s32, DWORD;

typedef 	int 					(*PTRFUN)();
#define 	sub(VMA) 				(*(PTRFUN)(0x##VMA+1))

struct EyeFrameInfo{
	s8 width;
	s8 height;
	s8 winkWidth;
	s8 winkHeight;
	u8 *eyeFrame[3];
	s16 *blinkTemplate;
};

struct Portrait{
	void *mainPortrait;
	void *miniPortrait;
	void *portraitPalette;
	void *mouthFrame;
	union
	{
		void *classCard;
		struct EyeFrameInfo*eyeFrameInfo;
	} ce;
	s8 mouthPositionX;
	s8 mouthPositionY;
	s8 eyePositionX;
	s8 eyePositionY;
	s8 eyeControlFlag;
	s8 dialoguePortraitTemplate;
	s8 statScreenPortraitTemplate;
	s8 statScreenPortraitMask:7;
	s8 eyeMouthPositionAlignmentFlag:1;
};

#define min(a,b)	((a)<(b)?(a):(b))
#define max(a,b)	((a)>(b)?(a):(b))

#pragma long_calls
void eyeAnimation1(u32 *mempool, int eyeStatus);
void eyeAnimation2(u32 *mempool, int eyeStatus);
void eyeAnimation3(u32 *mempool, int eyeStatus);
void drawStatScreenPortrait(u16 *TSABufferInWRAM, int portraitID, int presentBGTileIndex, int presentBGPaletteIndex);
void drawDialoguePortrait(u32 *mempool);
void mouthAnimation(int *mempool);
#pragma long_calls_off

void callEyeAnimation(u32 *mempool, int eyeStatus);
void callDrawStatScreenPortrait(u16 *TSABufferInWRAM, int portraitID, int presentBGTileIndex, int presentBGPaletteIndex);
void callDrawDialoguePortrait(s16 *mempool);
void callMouthAnimation(int *mempool);
