	object_const_def ; object_event constants

SandgemTown_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SandgemTown_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  8,  5, ROWANS_LAB, 1
	warp_event  7, 13, SANDGEM_HOUSE_1, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
