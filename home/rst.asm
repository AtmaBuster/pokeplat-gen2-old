; rst vectors

SECTION "rst0", ROM0
	di
	jp Start

SECTION "rst8", ROM0 ; rst FarCall
	jp FarCall_hl

SECTION "rst10", ROM0 ; rst Bankswitch
rst_bankswitch:
	ldh [hROMBank], a
	ld [TPP1RomBank], a
	ret

SECTION "rst18", ROM0 ; rst FarCall2
	jp FarCall_stack

SECTION "rst20", ROM0 ; rst FarJump
	inc sp
	inc sp
	jr rst_bankswitch

SECTION "rst28", ROM0 ; rst JumpTable
	push de
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop de
	jp hl

; SECTION "rst30", ROM0
; rst30 is midst rst28

SECTION "rst38", ROM0
	rst $38
