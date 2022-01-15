InitialEvents:
	dw EVENT_RIVAL_PLAYERS_HOUSE
	dw EVENT_TWINLEAF_TOWN_RIVAL
	dw EVENT_ROUTE_201_ROWAN
	dw EVENT_ROUTE_201_DAWNLUCAS
	dw EVENT_ROUTE_201_BRIEFCASE
	dw EVENT_ROUTE_201_GRASS_GUY
	dw EVENT_SANDGEM_TOWN_RIVAL
	dw EVENT_SANDGEM_TOWN_ROWAN
	dw EVENT_PLAYERS_HOUSE_1F_RIVAL_MOM
	dw EVENT_JUBILIFE_CITY_CLOWNS
	dw EVENT_POKETCH_COMPANY_1F_PRESIDENT

	dw EVENT_INITIALIZED_EVENTS
	dw -1 ; end

InitialEngineFlags:
	dw -1 ; end

InitialVariableSprites:
initvarsprite: MACRO
; variable sprite, appearance sprite
	db \1 - SPRITE_VARS, \2
ENDM
	initvarsprite SPRITE_DAWN_LUCAS, SPRITE_DAWN
	initvarsprite SPRITE_DAWN_LUCAS2, SPRITE_DAWN
	initvarsprite SPRITE_CLOWN_GALACTIC, SPRITE_CLOWN
	initvarsprite SPRITE_CLOWN_ROWAN, SPRITE_CLOWN
	db -1 ; end
