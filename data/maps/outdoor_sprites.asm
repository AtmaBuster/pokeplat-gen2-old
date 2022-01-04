; Valid sprite IDs for each map group.
; Maps with environment ROUTE or TOWN can only use these sprites.

OutdoorSprites:
; entries correspond to map groups
	dw CableClubGroupSprites
	dw TwinleafGroupSprites
	dw SandgemGroupSprites
	dw JubilifeGroupSprites
	dw OreburghGroupSprites
	dw LakeGroupSprites

CableClubGroupSprites:
; (no outdoor maps)
	; 0 of max 9 walking sprites
	db 0 ; end

TwinleafGroupSprites: ; TwinleafTown, Route201
SandgemGroupSprites:  ; SandgemTown, Route202
JubilifeGroupSprites: ; JubilifeCity, Route203
	db SPRITE_LASS
	db SPRITE_SILVER
	db SPRITE_ELM
	db SPRITE_DAWN_LUCAS
	db SPRITE_ROCKER
	db SPRITE_YOUNGSTER
	db SPRITE_POKEFAN_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_COOLTRAINER_F
	; 9 of max 9 walking sprites
	db SPRITE_FISHER
	db SPRITE_FAMICOM
	db SPRITE_CLERK
	db 0 ; end

OreburghGroupSprites: ; OreburghCity
	; 0 of max 9 walking sprites
	db 0 ; end
	
LakeGroupSprites: ; LakeVerityLow, LakeVerityHigh
	db SPRITE_SILVER
;	db SPRITE_CYRUS
	; 2 of max 9 walking sprites
	db 0 ; end
