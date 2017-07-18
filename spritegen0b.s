
; This file was generated by HiSprite.py, a sprite compiler by Quinn Dunki.
; If you feel the need to modify this file, you are probably doing it wrong.

BLACK: ;6 bytes per row
	SAVE_AXY
	ldy PARAM0
	ldx MOD7_2,y
.ifpC02
	jmp (BLACK_JMP,x)

BLACK_JMP:
	.addr BLACK_SHIFT0
	.addr BLACK_SHIFT1
	.addr BLACK_SHIFT2
	.addr BLACK_SHIFT3
	.addr BLACK_SHIFT4
	.addr BLACK_SHIFT5
	.addr BLACK_SHIFT6
.else
	lda BLACK_JMP+1,x
	pha
	lda BLACK_JMP,x
	pha
	rts

BLACK_JMP:
	.addr BLACK_SHIFT0-1
	.addr BLACK_SHIFT1-1
	.addr BLACK_SHIFT2-1
	.addr BLACK_SHIFT3-1
	.addr BLACK_SHIFT4-1
	.addr BLACK_SHIFT5-1
	.addr BLACK_SHIFT6-1
.endif


BLACK_SHIFT0:
	ldx PARAM1
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	RESTORE_AXY
	rts	;Cycle count: 481, Optimized 28 rows.



BLACK_SHIFT1:
	ldx PARAM1
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	RESTORE_AXY
	rts	;Cycle count: 497, Optimized 26 rows.



BLACK_SHIFT2:
	ldx PARAM1
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	RESTORE_AXY
	rts	;Cycle count: 489, Optimized 27 rows.



BLACK_SHIFT3:
	ldx PARAM1
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	RESTORE_AXY
	rts	;Cycle count: 481, Optimized 28 rows.



BLACK_SHIFT4:
	ldx PARAM1
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	RESTORE_AXY
	rts	;Cycle count: 489, Optimized 27 rows.



BLACK_SHIFT5:
	ldx PARAM1
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	RESTORE_AXY
	rts	;Cycle count: 489, Optimized 27 rows.



BLACK_SHIFT6:
	ldx PARAM1
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	inx
	lda HGRROWS_H1,x
	sta SCRATCH1
	lda HGRROWS_L,x
	sta SCRATCH0
	ldy PARAM0
	lda DIV7_2,y
	tay

	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	lda #0
	sta (SCRATCH0),y
	iny
	iny

	RESTORE_AXY
	rts	;Cycle count: 481, Optimized 28 rows.



