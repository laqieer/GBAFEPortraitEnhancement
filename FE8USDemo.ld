/* by laqieer
   2018/4/26
   ����ʥħ��ͷ��ϵͳ
*/

SECTIONS
{
	. = 0x8000000;
	.rom (COPY): {KEEP(*.o(.rom))}
	. = 0x8006134;
	.callEyeAnimation : {*.o(.callEyeAnimation)}
	. = 0x8005CA4;
	.callDrawStatScreenPortrait : {*.o(.callDrawStatScreenPortrait)}
	. = 0x80057C0;
	.callDrawDialoguePortrait : {*.o(.callDrawDialoguePortrait)}
	. = 0x8005FE0;
	.callMouthAnimation : {*.o(.callMouthAnimation)}
	
	/* ��������ͷ�� */
	. = 0x88ACBC4 + 28 * 2;
	.TikiFPortrait : {*.o(.TikiFPortrait)}
	
	. = 0x9000000;
	.text : {*(.text)}
	.rodata : {*(.rodata) . = ALIGN(4);}
}