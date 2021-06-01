; Characteristics of each move.

move: MACRO
	; the animation byte will be filled when the move is loaded
	db \1 ; effect
	db \2 ; power
	db \3 | \7 ; type and category
	db \4 percent ; accuracy
	db \5 ; pp
	db \6 percent ; effect chance
ENDM

Moves::
; entries correspond to constants/move_constants.asm
	indirect_table MOVE_LENGTH - 1, 1
	indirect_entries BEAT_UP, Moves1
	indirect_entries NUM_ATTACKS, Moves2
	indirect_table_end

Moves1:
	move EFFECT_NORMAL_HIT,         40, NORMAL,   100, 35,   0, PHYSICAL ;POUND
	move EFFECT_NORMAL_HIT,         50, FIGHTING, 100, 25,   0, PHYSICAL ;KARATE_CHOP
	move EFFECT_MULTI_HIT,          15, NORMAL,    85, 10,   0, PHYSICAL ;DOUBLESLAP
	move EFFECT_MULTI_HIT,          18, NORMAL,    85, 15,   0, PHYSICAL ;COMET_PUNCH
	move EFFECT_NORMAL_HIT,         80, NORMAL,    85, 20,   0, PHYSICAL ;MEGA_PUNCH
	move EFFECT_PAY_DAY,            40, NORMAL,   100, 20,   0, PHYSICAL ;PAY_DAY
	move EFFECT_BURN_HIT,           75, FIRE,     100, 15,  10, PHYSICAL ;FIRE_PUNCH
	move EFFECT_FREEZE_HIT,         75, ICE,      100, 15,  10, PHYSICAL ;ICE_PUNCH
	move EFFECT_PARALYZE_HIT,       75, ELECTRIC, 100, 15,  10, PHYSICAL ;THUNDERPUNCH
	move EFFECT_NORMAL_HIT,         40, NORMAL,   100, 35,   0, PHYSICAL ;SCRATCH
	move EFFECT_NORMAL_HIT,         55, NORMAL,   100, 30,   0, PHYSICAL ;VICEGRIP
	move EFFECT_OHKO,                0, NORMAL,    30,  5,   0, PHYSICAL ;GUILLOTINE
	move EFFECT_RAZOR_WIND,         80, NORMAL,    75, 10,   0, PHYSICAL ;RAZOR_WIND
	move EFFECT_ATTACK_UP_2,         0, NORMAL,   100, 30,   0, PHYSICAL ;SWORDS_DANCE
	move EFFECT_NORMAL_HIT,         50, NORMAL,    95, 30,   0, PHYSICAL ;CUT
	move EFFECT_GUST,               40, FLYING,   100, 35,   0, PHYSICAL ;GUST
	move EFFECT_NORMAL_HIT,         60, FLYING,   100, 35,   0, PHYSICAL ;WING_ATTACK
	move EFFECT_FORCE_SWITCH,        0, NORMAL,   100, 20,   0, PHYSICAL ;WHIRLWIND
	move EFFECT_FLY,                70, FLYING,    95, 15,   0, PHYSICAL ;FLY
	move EFFECT_TRAP_TARGET,        15, NORMAL,    75, 20,   0, PHYSICAL ;BIND
	move EFFECT_NORMAL_HIT,         80, NORMAL,    75, 20,   0, PHYSICAL ;SLAM
	move EFFECT_NORMAL_HIT,         35, GRASS,    100, 10,   0, PHYSICAL ;VINE_WHIP
	move EFFECT_STOMP,              65, NORMAL,   100, 20,  30, PHYSICAL ;STOMP
	move EFFECT_DOUBLE_HIT,         30, FIGHTING, 100, 30,   0, PHYSICAL ;DOUBLE_KICK
	move EFFECT_NORMAL_HIT,        120, NORMAL,    75,  5,   0, PHYSICAL ;MEGA_KICK
	move EFFECT_JUMP_KICK,          70, FIGHTING,  95, 25,   0, PHYSICAL ;JUMP_KICK
	move EFFECT_FLINCH_HIT,         60, FIGHTING,  85, 15,  30, PHYSICAL ;ROLLING_KICK
	move EFFECT_ACCURACY_DOWN,       0, GROUND,   100, 15,   0, PHYSICAL ;SAND_ATTACK
	move EFFECT_FLINCH_HIT,         70, NORMAL,   100, 15,  30, PHYSICAL ;HEADBUTT
	move EFFECT_NORMAL_HIT,         65, NORMAL,   100, 25,   0, PHYSICAL ;HORN_ATTACK
	move EFFECT_MULTI_HIT,          15, NORMAL,    85, 20,   0, PHYSICAL ;FURY_ATTACK
	move EFFECT_OHKO,                1, NORMAL,    30,  5,   0, PHYSICAL ;HORN_DRILL
	move EFFECT_NORMAL_HIT,         35, NORMAL,    95, 35,   0, PHYSICAL ;TACKLE
	move EFFECT_PARALYZE_HIT,       85, NORMAL,   100, 15,  30, PHYSICAL ;BODY_SLAM
	move EFFECT_TRAP_TARGET,        15, NORMAL,    85, 20,   0, PHYSICAL ;WRAP
	move EFFECT_RECOIL_1_4,         90, NORMAL,    85, 20,   0, PHYSICAL ;TAKE_DOWN
	move EFFECT_RAMPAGE,            90, NORMAL,   100, 20,   0, PHYSICAL ;THRASH
	move EFFECT_RECOIL_HIT,        120, NORMAL,   100, 15,   0, PHYSICAL ;DOUBLE_EDGE
	move EFFECT_DEFENSE_DOWN,        0, NORMAL,   100, 30,   0, PHYSICAL ;TAIL_WHIP
	move EFFECT_POISON_HIT,         15, POISON,   100, 35,  30, PHYSICAL ;POISON_STING
	move EFFECT_POISON_MULTI_HIT,   25, BUG,      100, 20,  20, PHYSICAL ;TWINEEDLE
	move EFFECT_MULTI_HIT,          14, BUG,       85, 20,   0, PHYSICAL ;PIN_MISSILE
	move EFFECT_DEFENSE_DOWN,        0, NORMAL,   100, 30,   0, PHYSICAL ;LEER
	move EFFECT_FLINCH_HIT,         60, DARK,     100, 25,  30, PHYSICAL ;BITE
	move EFFECT_ATTACK_DOWN,         0, NORMAL,   100, 40,   0, PHYSICAL ;GROWL
	move EFFECT_FORCE_SWITCH,        0, NORMAL,   100, 20,   0, PHYSICAL ;ROAR
	move EFFECT_SLEEP,               0, NORMAL,    55, 15,   0, PHYSICAL ;SING
	move EFFECT_CONFUSE,             0, NORMAL,    55, 20,   0, PHYSICAL ;SUPERSONIC
	move EFFECT_STATIC_DAMAGE,      20, NORMAL,    90, 20,   0, PHYSICAL ;SONICBOOM
	move EFFECT_DISABLE,             0, NORMAL,    55, 20,   0, PHYSICAL ;DISABLE
	move EFFECT_DEFENSE_DOWN_HIT,   40, POISON,   100, 30,  10, PHYSICAL ;ACID
	move EFFECT_BURN_HIT,           40, FIRE,     100, 25,  10, PHYSICAL ;EMBER
	move EFFECT_BURN_HIT,           95, FIRE,     100, 15,  10, PHYSICAL ;FLAMETHROWER
	move EFFECT_MIST,                0, ICE,      100, 30,   0, PHYSICAL ;MIST
	move EFFECT_NORMAL_HIT,         40, WATER,    100, 25,   0, PHYSICAL ;WATER_GUN
	move EFFECT_NORMAL_HIT,        120, WATER,     80,  5,   0, PHYSICAL ;HYDRO_PUMP
	move EFFECT_NORMAL_HIT,         95, WATER,    100, 15,   0, PHYSICAL ;SURF
	move EFFECT_FREEZE_HIT,         95, ICE,      100, 10,  10, PHYSICAL ;ICE_BEAM
	move EFFECT_FREEZE_HIT,        120, ICE,       70,  5,  10, PHYSICAL ;BLIZZARD
	move EFFECT_CONFUSE_HIT,        65, PSYCHIC,  100, 20,  10, PHYSICAL ;PSYBEAM
	move EFFECT_SPEED_DOWN_HIT,     65, WATER,    100, 20,  10, PHYSICAL ;BUBBLEBEAM
	move EFFECT_ATTACK_DOWN_HIT,    65, ICE,      100, 20,  10, PHYSICAL ;AURORA_BEAM
	move EFFECT_HYPER_BEAM,        150, NORMAL,    90,  5,   0, PHYSICAL ;HYPER_BEAM
	move EFFECT_NORMAL_HIT,         35, FLYING,   100, 35,   0, PHYSICAL ;PECK
	move EFFECT_NORMAL_HIT,         80, FLYING,   100, 20,   0, PHYSICAL ;DRILL_PECK
	move EFFECT_RECOIL_1_4,         80, FIGHTING,  80, 25,   0, PHYSICAL ;SUBMISSION
	move EFFECT_WEIGHT_DAMAGE,       1, FIGHTING, 100, 20,   0, PHYSICAL ;LOW_KICK
	move EFFECT_COUNTER,             1, FIGHTING, 100, 20,   0, PHYSICAL ;COUNTER
	move EFFECT_LEVEL_DAMAGE,        1, FIGHTING, 100, 20,   0, PHYSICAL ;SEISMIC_TOSS
	move EFFECT_NORMAL_HIT,         80, NORMAL,   100, 15,   0, PHYSICAL ;STRENGTH
	move EFFECT_LEECH_HIT,          20, GRASS,    100, 20,   0, PHYSICAL ;ABSORB
	move EFFECT_LEECH_HIT,          40, GRASS,    100, 10,   0, PHYSICAL ;MEGA_DRAIN
	move EFFECT_LEECH_SEED,          0, GRASS,     90, 10,   0, PHYSICAL ;LEECH_SEED
	move EFFECT_SP_ATK_UP,           0, NORMAL,   100, 40,   0, PHYSICAL ;GROWTH
	move EFFECT_NORMAL_HIT,         55, GRASS,     95, 25,   0, PHYSICAL ;RAZOR_LEAF
	move EFFECT_SOLARBEAM,         120, GRASS,    100, 10,   0, PHYSICAL ;SOLARBEAM
	move EFFECT_POISON,              0, POISON,    75, 35,   0, PHYSICAL ;POISONPOWDER
	move EFFECT_PARALYZE,            0, GRASS,     75, 30,   0, PHYSICAL ;STUN_SPORE
	move EFFECT_SLEEP,               0, GRASS,     75, 15,   0, PHYSICAL ;SLEEP_POWDER
	move EFFECT_RAMPAGE,            70, GRASS,    100, 20,   0, PHYSICAL ;PETAL_DANCE
	move EFFECT_SPEED_DOWN,          0, BUG,       95, 40,   0, PHYSICAL ;STRING_SHOT
	move EFFECT_STATIC_DAMAGE,      40, DRAGON,   100, 10,   0, PHYSICAL ;DRAGON_RAGE
	move EFFECT_TRAP_TARGET,        15, FIRE,      70, 15,   0, PHYSICAL ;FIRE_SPIN
	move EFFECT_PARALYZE_HIT,       40, ELECTRIC, 100, 30,  10, PHYSICAL ;THUNDERSHOCK
	move EFFECT_PARALYZE_HIT,       95, ELECTRIC, 100, 15,  10, PHYSICAL ;THUNDERBOLT
	move EFFECT_PARALYZE,            0, ELECTRIC, 100, 20,   0, PHYSICAL ;THUNDER_WAVE
	move EFFECT_THUNDER,           120, ELECTRIC,  70, 10,  30, PHYSICAL ;THUNDER
	move EFFECT_NORMAL_HIT,         50, ROCK,      90, 15,   0, PHYSICAL ;ROCK_THROW
	move EFFECT_EARTHQUAKE,        100, GROUND,   100, 10,   0, PHYSICAL ;EARTHQUAKE
	move EFFECT_OHKO,                1, GROUND,    30,  5,   0, PHYSICAL ;FISSURE
	move EFFECT_FLY,                60, GROUND,   100, 10,   0, PHYSICAL ;DIG
	move EFFECT_TOXIC,               0, POISON,    85, 10,   0, PHYSICAL ;TOXIC
	move EFFECT_CONFUSE_HIT,        50, PSYCHIC,  100, 25,  10, PHYSICAL ;CONFUSION
	move EFFECT_SP_DEF_DOWN_HIT,    90, PSYCHIC,  100, 10,  10, PHYSICAL ;PSYCHIC_M
	move EFFECT_SLEEP,               0, PSYCHIC,   60, 20,   0, PHYSICAL ;HYPNOSIS
	move EFFECT_ATTACK_UP,           0, PSYCHIC,  100, 40,   0, PHYSICAL ;MEDITATE
	move EFFECT_SPEED_UP_2,          0, PSYCHIC,  100, 30,   0, PHYSICAL ;AGILITY
	move EFFECT_PRIORITY_HIT,       40, NORMAL,   100, 30,   0, PHYSICAL ;QUICK_ATTACK
	move EFFECT_RAGE,               20, NORMAL,   100, 20,   0, PHYSICAL ;RAGE
	move EFFECT_TELEPORT,            0, PSYCHIC,  100, 20,   0, PHYSICAL ;TELEPORT
	move EFFECT_LEVEL_DAMAGE,        1, GHOST,    100, 15,   0, PHYSICAL ;NIGHT_SHADE
	move EFFECT_MIMIC,               0, NORMAL,   100, 10,   0, PHYSICAL ;MIMIC
	move EFFECT_DEFENSE_DOWN_2,      0, NORMAL,    85, 40,   0, PHYSICAL ;SCREECH
	move EFFECT_EVASION_UP,          0, NORMAL,   100, 15,   0, PHYSICAL ;DOUBLE_TEAM
	move EFFECT_HEAL,                0, NORMAL,   100, 20,   0, PHYSICAL ;RECOVER
	move EFFECT_DEFENSE_UP,          0, NORMAL,   100, 30,   0, PHYSICAL ;HARDEN
	move EFFECT_EVASION_UP,          0, NORMAL,   100, 20,   0, PHYSICAL ;MINIMIZE
	move EFFECT_ACCURACY_DOWN,       0, NORMAL,   100, 20,   0, PHYSICAL ;SMOKESCREEN
	move EFFECT_CONFUSE,             0, GHOST,    100, 10,   0, PHYSICAL ;CONFUSE_RAY
	move EFFECT_DEFENSE_UP,          0, WATER,    100, 40,   0, PHYSICAL ;WITHDRAW
	move EFFECT_DEFENSE_CURL,        0, NORMAL,   100, 40,   0, PHYSICAL ;DEFENSE_CURL
	move EFFECT_DEFENSE_UP_2,        0, PSYCHIC,  100, 30,   0, PHYSICAL ;BARRIER
	move EFFECT_LIGHT_SCREEN,        0, PSYCHIC,  100, 30,   0, PHYSICAL ;LIGHT_SCREEN
	move EFFECT_RESET_STATS,         0, ICE,      100, 30,   0, PHYSICAL ;HAZE
	move EFFECT_REFLECT,             0, PSYCHIC,  100, 20,   0, PHYSICAL ;REFLECT
	move EFFECT_FOCUS_ENERGY,        0, NORMAL,   100, 30,   0, PHYSICAL ;FOCUS_ENERGY
	move EFFECT_BIDE,                0, NORMAL,   100, 10,   0, PHYSICAL ;BIDE
	move EFFECT_METRONOME,           0, NORMAL,   100, 10,   0, PHYSICAL ;METRONOME
	move EFFECT_MIRROR_MOVE,         0, FLYING,   100, 20,   0, PHYSICAL ;MIRROR_MOVE
	move EFFECT_SELFDESTRUCT,      200, NORMAL,   100,  5,   0, PHYSICAL ;SELFDESTRUCT
	move EFFECT_NORMAL_HIT,        100, NORMAL,    75, 10,   0, PHYSICAL ;EGG_BOMB
	move EFFECT_PARALYZE_HIT,       20, GHOST,    100, 30,  30, PHYSICAL ;LICK
	move EFFECT_POISON_HIT,         20, POISON,    70, 20,  40, PHYSICAL ;SMOG
	move EFFECT_POISON_HIT,         65, POISON,   100, 20,  30, PHYSICAL ;SLUDGE
	move EFFECT_FLINCH_HIT,         65, GROUND,    85, 20,  10, PHYSICAL ;BONE_CLUB
	move EFFECT_BURN_HIT,          120, FIRE,      85,  5,  10, PHYSICAL ;FIRE_BLAST
	move EFFECT_NORMAL_HIT,         80, WATER,    100, 15,   0, PHYSICAL ;WATERFALL
	move EFFECT_TRAP_TARGET,        35, WATER,     75, 10,   0, PHYSICAL ;CLAMP
	move EFFECT_ALWAYS_HIT,         60, NORMAL,   100, 20,   0, PHYSICAL ;SWIFT
	move EFFECT_SKULL_BASH,        100, NORMAL,   100, 15,   0, PHYSICAL ;SKULL_BASH
	move EFFECT_MULTI_HIT,          20, NORMAL,   100, 15,   0, PHYSICAL ;SPIKE_CANNON
	move EFFECT_SPEED_DOWN_HIT,     10, NORMAL,   100, 35,  10, PHYSICAL ;CONSTRICT
	move EFFECT_SP_DEF_UP_2,         0, PSYCHIC,  100, 20,   0, PHYSICAL ;AMNESIA
	move EFFECT_ACCURACY_DOWN,       0, PSYCHIC,   80, 15,   0, PHYSICAL ;KINESIS
	move EFFECT_HEAL,                0, NORMAL,   100, 10,   0, PHYSICAL ;SOFTBOILED
	move EFFECT_JUMP_KICK,          85, FIGHTING,  90, 20,   0, PHYSICAL ;HI_JUMP_KICK
	move EFFECT_PARALYZE,            0, NORMAL,    75, 30,   0, PHYSICAL ;GLARE
	move EFFECT_DREAM_EATER,       100, PSYCHIC,  100, 15,   0, PHYSICAL ;DREAM_EATER
	move EFFECT_POISON,              0, POISON,    55, 40,   0, PHYSICAL ;POISON_GAS
	move EFFECT_MULTI_HIT,          15, NORMAL,    85, 20,   0, PHYSICAL ;BARRAGE
	move EFFECT_LEECH_HIT,          20, BUG,      100, 15,   0, PHYSICAL ;LEECH_LIFE
	move EFFECT_SLEEP,               0, NORMAL,    75, 10,   0, PHYSICAL ;LOVELY_KISS
	move EFFECT_SKY_ATTACK,        140, FLYING,    90,  5,   0, PHYSICAL ;SKY_ATTACK
	move EFFECT_TRANSFORM,           0, NORMAL,   100, 10,   0, PHYSICAL ;TRANSFORM
	move EFFECT_SPEED_DOWN_HIT,     20, WATER,    100, 30,  10, PHYSICAL ;BUBBLE
	move EFFECT_CONFUSE_HIT,        70, NORMAL,   100, 10,  20, PHYSICAL ;DIZZY_PUNCH
	move EFFECT_SLEEP,               0, GRASS,    100, 15,   0, PHYSICAL ;SPORE
	move EFFECT_ACCURACY_DOWN,       0, NORMAL,    70, 20,   0, PHYSICAL ;FLASH
	move EFFECT_PSYWAVE,             1, PSYCHIC,   80, 15,   0, PHYSICAL ;PSYWAVE
	move EFFECT_SPLASH,              0, NORMAL,   100, 40,   0, PHYSICAL ;SPLASH
	move EFFECT_DEFENSE_UP_2,        0, POISON,   100, 40,   0, PHYSICAL ;ACID_ARMOR
	move EFFECT_NORMAL_HIT,         90, WATER,     85, 10,   0, PHYSICAL ;CRABHAMMER
	move EFFECT_SELFDESTRUCT,      250, NORMAL,   100,  5,   0, PHYSICAL ;EXPLOSION
	move EFFECT_MULTI_HIT,          18, NORMAL,    80, 15,   0, PHYSICAL ;FURY_SWIPES
	move EFFECT_DOUBLE_HIT,         50, GROUND,    90, 10,   0, PHYSICAL ;BONEMERANG
	move EFFECT_HEAL,                0, PSYCHIC,  100, 10,   0, PHYSICAL ;REST
	move EFFECT_FLINCH_HIT,         75, ROCK,      90, 10,  30, PHYSICAL ;ROCK_SLIDE
	move EFFECT_FLINCH_HIT,         80, NORMAL,    90, 15,  10, PHYSICAL ;HYPER_FANG
	move EFFECT_ATTACK_UP,           0, NORMAL,   100, 30,   0, PHYSICAL ;SHARPEN
	move EFFECT_CONVERSION,          0, NORMAL,   100, 30,   0, PHYSICAL ;CONVERSION
	move EFFECT_TRI_ATTACK,         80, NORMAL,   100, 10,  20, PHYSICAL ;TRI_ATTACK
	move EFFECT_SUPER_FANG,          1, NORMAL,    90, 10,   0, PHYSICAL ;SUPER_FANG
	move EFFECT_NORMAL_HIT,         70, NORMAL,   100, 20,   0, PHYSICAL ;SLASH
	move EFFECT_SUBSTITUTE,          0, NORMAL,   100, 10,   0, PHYSICAL ;SUBSTITUTE
	move EFFECT_STRUGGLE,           50, NORMAL,   100,  1,   0, PHYSICAL ;STRUGGLE ; *
	move EFFECT_SKETCH,              0, NORMAL,   100,  1,   0, PHYSICAL ;SKETCH
	move EFFECT_TRIPLE_KICK,        10, FIGHTING,  90, 10,   0, PHYSICAL ;TRIPLE_KICK
	move EFFECT_THIEF,              40, DARK,     100, 10, 100, PHYSICAL ;THIEF
	move EFFECT_MEAN_LOOK,           0, BUG,      100, 10,   0, PHYSICAL ;SPIDER_WEB
	move EFFECT_LOCK_ON,             0, NORMAL,   100,  5,   0, PHYSICAL ;MIND_READER
	move EFFECT_NIGHTMARE,           0, GHOST,    100, 15,   0, PHYSICAL ;NIGHTMARE
	move EFFECT_FLAME_WHEEL,        60, FIRE,     100, 25,  10, PHYSICAL ;FLAME_WHEEL
	move EFFECT_SNORE,              40, NORMAL,   100, 15,  30, PHYSICAL ;SNORE
	move EFFECT_CURSE,               0, CURSE_T,  100, 10,   0, PHYSICAL ;CURSE
	move EFFECT_REVERSAL,            1, NORMAL,   100, 15,   0, PHYSICAL ;FLAIL
	move EFFECT_CONVERSION2,         0, NORMAL,   100, 30,   0, PHYSICAL ;CONVERSION2
	move EFFECT_NORMAL_HIT,        100, FLYING,    95,  5,   0, PHYSICAL ;AEROBLAST
	move EFFECT_SPEED_DOWN_2,        0, GRASS,     85, 40,   0, PHYSICAL ;COTTON_SPORE
	move EFFECT_REVERSAL,            1, FIGHTING, 100, 15,   0, PHYSICAL ;REVERSAL
	move EFFECT_SPITE,               0, GHOST,    100, 10,   0, PHYSICAL ;SPITE
	move EFFECT_FREEZE_HIT,         40, ICE,      100, 25,  10, PHYSICAL ;POWDER_SNOW
	move EFFECT_PROTECT,             0, NORMAL,   100, 10,   0, PHYSICAL ;PROTECT
	move EFFECT_PRIORITY_HIT,       40, FIGHTING, 100, 30,   0, PHYSICAL ;MACH_PUNCH
	move EFFECT_SPEED_DOWN_2,        0, NORMAL,    90, 10,   0, PHYSICAL ;SCARY_FACE
	move EFFECT_ALWAYS_HIT,         60, DARK,     100, 20,   0, PHYSICAL ;FAINT_ATTACK
	move EFFECT_CONFUSE,             0, NORMAL,    75, 10,   0, PHYSICAL ;SWEET_KISS
	move EFFECT_BELLY_DRUM,          0, NORMAL,   100, 10,   0, PHYSICAL ;BELLY_DRUM
	move EFFECT_POISON_HIT,         90, POISON,   100, 10,  30, PHYSICAL ;SLUDGE_BOMB
	move EFFECT_ACCURACY_DOWN_HIT,  20, GROUND,   100, 10, 100, PHYSICAL ;MUD_SLAP
	move EFFECT_ACCURACY_DOWN_HIT,  65, WATER,     85, 10,  50, PHYSICAL ;OCTAZOOKA
	move EFFECT_SPIKES,              0, GROUND,   100, 20,   0, PHYSICAL ;SPIKES
	move EFFECT_PARALYZE_HIT,      100, ELECTRIC,  50,  5, 100, PHYSICAL ;ZAP_CANNON
	move EFFECT_FORESIGHT,           0, NORMAL,   100, 40,   0, PHYSICAL ;FORESIGHT
	move EFFECT_DESTINY_BOND,        0, GHOST,    100,  5,   0, PHYSICAL ;DESTINY_BOND
	move EFFECT_PERISH_SONG,         0, NORMAL,   100,  5,   0, PHYSICAL ;PERISH_SONG
	move EFFECT_SPEED_DOWN_HIT,     55, ICE,       95, 15, 100, PHYSICAL ;ICY_WIND
	move EFFECT_PROTECT,             0, FIGHTING, 100,  5,   0, PHYSICAL ;DETECT
	move EFFECT_MULTI_HIT,          25, GROUND,    80, 10,   0, PHYSICAL ;BONE_RUSH
	move EFFECT_LOCK_ON,             0, NORMAL,   100,  5,   0, PHYSICAL ;LOCK_ON
	move EFFECT_RAMPAGE,            90, DRAGON,   100, 15,   0, PHYSICAL ;OUTRAGE
	move EFFECT_SANDSTORM,           0, ROCK,     100, 10,   0, PHYSICAL ;SANDSTORM
	move EFFECT_LEECH_HIT,          60, GRASS,    100,  5,   0, PHYSICAL ;GIGA_DRAIN
	move EFFECT_ENDURE,              0, NORMAL,   100, 10,   0, PHYSICAL ;ENDURE
	move EFFECT_ATTACK_DOWN_2,       0, NORMAL,   100, 20,   0, PHYSICAL ;CHARM
	move EFFECT_ROLLOUT,            30, ROCK,      90, 20,   0, PHYSICAL ;ROLLOUT
	move EFFECT_FALSE_SWIPE,        40, NORMAL,   100, 40,   0, PHYSICAL ;FALSE_SWIPE
	move EFFECT_SWAGGER,             0, NORMAL,    90, 15, 100, PHYSICAL ;SWAGGER
	move EFFECT_HEAL,                0, NORMAL,   100, 10,   0, PHYSICAL ;MILK_DRINK
	move EFFECT_PARALYZE_HIT,       65, ELECTRIC, 100, 20,  30, PHYSICAL ;SPARK
	move EFFECT_FURY_CUTTER,        10, BUG,       95, 20,   0, PHYSICAL ;FURY_CUTTER
	move EFFECT_DEFENSE_UP_HIT,     70, STEEL,     90, 25,  10, PHYSICAL ;STEEL_WING
	move EFFECT_MEAN_LOOK,           0, NORMAL,   100,  5,   0, PHYSICAL ;MEAN_LOOK
	move EFFECT_ATTRACT,             0, NORMAL,   100, 15,   0, PHYSICAL ;ATTRACT
	move EFFECT_SLEEP_TALK,          0, NORMAL,   100, 10,   0, PHYSICAL ;SLEEP_TALK
	move EFFECT_HEAL_BELL,           0, NORMAL,   100,  5,   0, PHYSICAL ;HEAL_BELL
	move EFFECT_RETURN,              1, NORMAL,   100, 20,   0, PHYSICAL ;RETURN
	move EFFECT_PRESENT,             1, NORMAL,    90, 15,   0, PHYSICAL ;PRESENT
	move EFFECT_FRUSTRATION,         1, NORMAL,   100, 20,   0, PHYSICAL ;FRUSTRATION
	move EFFECT_SAFEGUARD,           0, NORMAL,   100, 25,   0, PHYSICAL ;SAFEGUARD
	move EFFECT_PAIN_SPLIT,          0, NORMAL,   100, 20,   0, PHYSICAL ;PAIN_SPLIT
	move EFFECT_SACRED_FIRE,       100, FIRE,      95,  5,  50, PHYSICAL ;SACRED_FIRE
	move EFFECT_MAGNITUDE,           1, GROUND,   100, 30,   0, PHYSICAL ;MAGNITUDE
	move EFFECT_CONFUSE_HIT,       100, FIGHTING,  50,  5, 100, PHYSICAL ;DYNAMICPUNCH
	move EFFECT_NORMAL_HIT,        120, BUG,       85, 10,   0, PHYSICAL ;MEGAHORN
	move EFFECT_PARALYZE_HIT,       60, DRAGON,   100, 20,  30, PHYSICAL ;DRAGONBREATH
	move EFFECT_BATON_PASS,          0, NORMAL,   100, 40,   0, PHYSICAL ;BATON_PASS
	move EFFECT_ENCORE,              0, NORMAL,   100,  5,   0, PHYSICAL ;ENCORE
	move EFFECT_PURSUIT,            40, DARK,     100, 20,   0, PHYSICAL ;PURSUIT
	move EFFECT_RAPID_SPIN,         20, NORMAL,   100, 40,   0, PHYSICAL ;RAPID_SPIN
	move EFFECT_EVASION_DOWN,        0, NORMAL,   100, 20,   0, PHYSICAL ;SWEET_SCENT
	move EFFECT_DEFENSE_DOWN_HIT,  100, STEEL,     75, 15,  30, PHYSICAL ;IRON_TAIL
	move EFFECT_ATTACK_UP_HIT,      50, STEEL,     95, 35,  10, PHYSICAL ;METAL_CLAW
	move EFFECT_VITAL_THROW,        70, FIGHTING, 100, 10,   0, PHYSICAL ;VITAL_THROW
	move EFFECT_MORNING_SUN,         0, NORMAL,   100,  5,   0, PHYSICAL ;MORNING_SUN
	move EFFECT_SYNTHESIS,           0, GRASS,    100,  5,   0, PHYSICAL ;SYNTHESIS
	move EFFECT_MOONLIGHT,           0, NORMAL,   100,  5,   0, PHYSICAL ;MOONLIGHT
	move EFFECT_HIDDEN_POWER,        1, NORMAL,   100, 15,   0, PHYSICAL ;HIDDEN_POWER
	move EFFECT_NORMAL_HIT,        100, FIGHTING,  80,  5,   0, PHYSICAL ;CROSS_CHOP
	move EFFECT_TWISTER,            40, DRAGON,   100, 20,  20, PHYSICAL ;TWISTER
	move EFFECT_RAIN_DANCE,          0, WATER,     90,  5,   0, PHYSICAL ;RAIN_DANCE
	move EFFECT_SUNNY_DAY,           0, FIRE,      90,  5,   0, PHYSICAL ;SUNNY_DAY
	move EFFECT_SP_DEF_DOWN_HIT,    80, DARK,     100, 15,  20, PHYSICAL ;CRUNCH
	move EFFECT_MIRROR_COAT,         1, PSYCHIC,  100, 20,   0, PHYSICAL ;MIRROR_COAT
	move EFFECT_PSYCH_UP,            0, NORMAL,   100, 10,   0, PHYSICAL ;PSYCH_UP
	move EFFECT_PRIORITY_HIT,       80, NORMAL,   100,  5,   0, PHYSICAL ;EXTREMESPEED
	move EFFECT_ALL_UP_HIT,         60, ROCK,     100,  5,  10, PHYSICAL ;ANCIENTPOWER
	move EFFECT_SP_DEF_DOWN_HIT,    80, GHOST,    100, 15,  20, PHYSICAL ;SHADOW_BALL
	move EFFECT_FUTURE_SIGHT,       80, PSYCHIC,   90, 15,   0, PHYSICAL ;FUTURE_SIGHT
	move EFFECT_DEFENSE_DOWN_HIT,   20, FIGHTING, 100, 15,  50, PHYSICAL ;ROCK_SMASH
	move EFFECT_TRAP_TARGET,        15, WATER,     70, 15,   0, PHYSICAL ;WHIRLPOOL
	move EFFECT_BEAT_UP,            10, DARK,     100, 10,   0, PHYSICAL ;BEAT_UP

Moves2:
	move EFFECT_FAKE_OUT,           40, NORMAL,   100, 10,   0, PHYSICAL ;FAKE_OUT
	move EFFECT_UPROAR,             50, NORMAL,   100, 10,   0, SPECIAL  ;UPROAR
	move EFFECT_STOCKPILE,           0, NORMAL,   100, 20,   0, STATUS   ;STOCKPILE
	move EFFECT_SPIT_UP,             0, NORMAL,   100, 10,   0, SPECIAL  ;SPIT_UP
	move EFFECT_SWALLOW,             0, NORMAL,   100, 10,   0, STATUS   ;SWALLOW
	move EFFECT_BURN_HIT,          100, FIRE,      90, 10,  10, SPECIAL  ;HEAT_WAVE
	move EFFECT_HAIL,                0, ICE,      100, 10,   0, STATUS   ;HAIL
	move EFFECT_TORMENT,             0, DARK,     100, 15,   0, STATUS   ;TORMENT
	move EFFECT_FLATTER,             0, DARK,     100, 15,   0, STATUS   ;FLATTER
	move EFFECT_WILL_O_WISP,         0, FIRE,      75, 15,   0, STATUS   ;WILL_O_WISP
	move EFFECT_MEMENTO,             0, DARK,     100, 10,   0, STATUS   ;MEMENTO
	move EFFECT_FACADE,             70, NORMAL,   100, 20,   0, PHYSICAL ;FACADE
	move EFFECT_FOCUS_PUNCH,       150, FIGHTING, 100, 20,   0, PHYSICAL ;FOCUS_PUNCH
	move EFFECT_SMELLINGSALT,       60, FIGHTING, 100, 10,   0, PHYSICAL ;SMELLINGSALT
	move EFFECT_SPLASH,              0, NORMAL,   100, 20,   0, STATUS   ;FOLLOW_ME ; dummy
	move EFFECT_NATURE_POWER,        0, NORMAL,   100, 20,   0, STATUS   ;NATURE_POWER
	move EFFECT_CHARGE,              0, ELECTRIC, 100, 20,   0, STATUS   ;CHARGE
	move EFFECT_TAUNT,               0, DARK,     100, 20,   0, STATUS   ;TAUNT
	move EFFECT_SPLASH,              0, NORMAL,   100, 20,   0, STATUS   ;HELPING_HAND ; dummy
	move EFFECT_TRICK,               0, PSYCHIC,  100, 10,   0, STATUS   ;TRICK
	move EFFECT_ROLE_PLAY,           0, PSYCHIC,  100, 10,   0, STATUS   ;ROLE_PLAY
	move EFFECT_WISH,                0, NORMAL,   100, 10,   0, STATUS   ;WISH
	move EFFECT_ASSIST,              0, NORMAL,   100, 20,   0, STATUS   ;ASSIST
	move EFFECT_INGRAIN,             0, GRASS,    100, 20,   0, STATUS   ;INGRAIN
	move EFFECT_SUPERPOWER,        120, FIGHTING, 100, 5,    0, PHYSICAL ;SUPERPOWER
	move EFFECT_MAGIC_COAT,          0, PSYCHIC,  100, 15,   0, STATUS   ;MAGIC_COAT
	move EFFECT_RECYCLE,             0, NORMAL,   100, 10,   0, STATUS   ;RECYCLE
	move EFFECT_REVENGE,            60, FIGHTING, 100, 10,   0, PHYSICAL ;REVENGE
	move EFFECT_BRICK_BREAK,        75, NORMAL,   100, 15,   0, PHYSICAL ;BRICK_BREAK
	move EFFECT_YAWN,                0, NORMAL,   100, 10,   0, STATUS   ;YAWN
	move EFFECT_KNOCK_OFF,          20, DARK,     100, 20,   0, PHYSICAL ;KNOCK_OFF
	move EFFECT_ENDEAVOR,            0, FIGHTING, 100, 5,    0, PHYSICAL ;ENDEAVOR
	move EFFECT_HP_SCALING_HIT,    150, FIRE,     100, 5,    0, SPECIAL  ;ERUPTION
	move EFFECT_SKILL_SWAP,          0, PSYCHIC,  100, 10,   0, STATUS   ;SKILL_SWAP
	move EFFECT_IMPRISON,            0, PSYCHIC,  100, 10,   0, STATUS   ;IMPRISON
	move EFFECT_REFRESH,             0, NORMAL,   100, 20,   0, STATUS   ;REFRESH
	move EFFECT_GRUDGE,              0, GHOST,    100, 5,    0, STATUS   ;GRUDGE
	move EFFECT_SNATCH,              0, NORMAL,   100, 10,   0, PHYSICAL ;SNATCH
	move EFFECT_SECRET_POWER,       70, NORMAL,   100, 20,  30, PHYSICAL ;SECRET_POWER
	move EFFECT_FLY,                60, WATER,    100, 10,   0, PHYSICAL ;DIVE
	move EFFECT_MULTI_HIT,          15, FIGHTING, 100, 20,   0, PHYSICAL ;ARM_THRUST
	move EFFECT_CAMOUFLAGE,          0, NORMAL,   100, 20,   0, STATUS   ;CAMOUFLAGE
	move EFFECT_SP_ATK_UP_2,         0, BUG,      100, 20,   0, STATUS   ;TAIL_GLOW
	move EFFECT_SP_DEF_DOWN_HIT,    70, PSYCHIC,  100, 5,   50, SPECIAL  ;LUSTER_PURGE
	move EFFECT_SP_ATK_DOWN_HIT,    70, PSYCHIC,  100, 5,   50, SPECIAL  ;MIST_BALL
	move EFFECT_ATTACK_DOWN_2,       0, FLYING,   100, 15,   0, STATUS   ;FEATHERDANCE
	move EFFECT_CONFUSE,             0, NORMAL,   100, 20,   0, STATUS   ;TEETER_DANCE
	move EFFECT_BURN_HIT,           85, FIRE,      90, 10,  10, PHYSICAL ;BLAZE_KICK
	move EFFECT_MUD_SPORT,           0, GROUND,   100, 15,   0, STATUS   ;MUD_SPORT
	move EFFECT_ROLLOUT,            30, ICE,       90, 20,   0, PHYSICAL ;ICE_BALL
	move EFFECT_FLINCH_HIT,         60, GRASS,    100, 15,  30, PHYSICAL ;NEEDLE_ARM
	move EFFECT_HEAL,                0, NORMAL,   100, 10,   0, STATUS   ;SLACK_OFF
	move EFFECT_NORMAL_HIT,         90, NORMAL,   100, 10,   0, SPECIAL  ;HYPER_VOICE
	move EFFECT_POISON_FANG,        65, POISON,    95, 15,  30, PHYSICAL ;POISON_FANG
	move EFFECT_DEFENSE_DOWN_HIT,   75, NORMAL,    95, 10,  50, PHYSICAL ;CRUSH_CLAW
	move EFFECT_HYPER_BEAM,        150, FIRE,      90, 5,    0, SPECIAL  ;BLAST_BURN
	move EFFECT_HYPER_BEAM,        150, WATER,     90, 5,    0, SPECIAL  ;HYDRO_CANNON
	move EFFECT_ATTACK_UP_HIT,     100, STEEL,     80, 10,  20, PHYSICAL ;METEOR_MASH
	move EFFECT_FLINCH_HIT,         30, GHOST,    100, 15,   0, PHYSICAL ;ASTONISH
	move EFFECT_WEATHER_BALL,       50, NORMAL,   100, 10,   0, SPECIAL  ;WEATHER_BALL
	move EFFECT_HEAL_BELL,           0, GRASS,    100, 5,    0, STATUS   ;AROMATHERAPY
	move EFFECT_SP_DEF_DOWN_2,       0, DARK,     100, 20,   0, STATUS   ;FAKE_TEARS
	move EFFECT_NORMAL_HIT,         55, FLYING,    95, 25,   0, SPECIAL  ;AIR_CUTTER
	move EFFECT_SP_ATK_DOWN_2_HIT, 140, FIRE,      90, 5,    0, SPECIAL  ;OVERHEAT
	move EFFECT_FORESIGHT,           0, NORMAL,   100, 40,   0, STATUS   ;ODOR_SLEUTH
	move EFFECT_SPEED_DOWN_HIT,     50, NORMAL,    80, 10,   0, PHYSICAL ;ROCK_TOMB
	move EFFECT_ALL_UP_HIT,         60, NORMAL,   100, 5,    0, SPECIAL  ;SILVER_WIND
	move EFFECT_SP_DEF_DOWN_2,       0, NORMAL,    85, 40,   0, STATUS   ;METAL_SOUND
	move EFFECT_SLEEP,               0, NORMAL,    55, 15,   0, STATUS   ;GRASSWHISTLE
	move EFFECT_ATK_DEF_DOWN,        0, NORMAL,   100, 20,   0, STATUS   ;TICKLE
	move EFFECT_DEF_SP_DEF_UP,       0, NORMAL,   100, 20,   0, STATUS   ;COSMIC_POWER
	move EFFECT_HP_SCALING_HIT,    150, WATER,    100, 5,    0, SPECIAL  ;WATER_SPOUT
	move EFFECT_CONFUSE_HIT,        75, BUG,      100, 15,  10, SPECIAL  ;SIGNAL_BEAM
	move EFFECT_ALWAYS_HIT,         60, GHOST,    100, 20,   0, PHYSICAL ;SHADOW_PUNCH
	move EFFECT_FLINCH_HIT,         80, PSYCHIC,  100, 30,   0, SPECIAL  ;EXTRASENSORY
	move EFFECT_NORMAL_HIT,         85, FIGHTING,  90, 15,   0, PHYSICAL ;SKY_UPPERCUT
	move EFFECT_TRAP_TARGET,        15, GROUND,    70, 15,   0, PHYSICAL ;SAND_TOMB
	move EFFECT_OHKO,                0, ICE,       30, 5,    0, SPECIAL  ;SHEER_COLD
	move EFFECT_ACCURACY_DOWN_HIT,  95, WATER,     85, 10,  30, SPECIAL  ;MUDDY_WATER
	move EFFECT_MULTI_HIT,          10, GRASS,    100, 30,   0, PHYSICAL ;BULLET_SEED
	move EFFECT_ALWAYS_HIT,         60, FLYING,   100, 20,   0, PHYSICAL ;AERIAL_ACE
	move EFFECT_MULTI_HIT,          10, ICE,      100, 30,   0, PHYSICAL ;ICICLE_SPEAR
	move EFFECT_DEFENSE_UP_2,        0, STEEL,    100, 15,   0, STATUS   ;IRON_DEFENSE
	move EFFECT_MEAN_LOOK,           0, NORMAL,   100, 5,    0, STATUS   ;BLOCK
	move EFFECT_ATTACK_UP,           0, NORMAL,   100, 40,   0, STATUS   ;HOWL
	move EFFECT_NORMAL_HIT,         80, DRAGON,   100, 15,   0, PHYSICAL ;DRAGON_CLAW
	move EFFECT_HYPER_BEAM,        150, GRASS,     90, 5,    0, SPECIAL  ;FRENZY_PLANT
	move EFFECT_ATK_DEF_UP,          0, FIGHTING, 100, 20,   0, STATUS   ;BULK_UP
	move EFFECT_BOUNCE,             85, FLYING,    95, 5,   30, PHYSICAL ;BOUNCE
	move EFFECT_SPEED_DOWN_HIT,     55, GROUND,    95, 15, 100, SPECIAL  ;MUD_SHOT
	move EFFECT_POISON_HIT,         50, POISON,   100, 25,  10, PHYSICAL ;POISON_TAIL
	move EFFECT_THIEF,              40, NORMAL,   100, 40,   0, PHYSICAL ;COVET
	move EFFECT_VOLT_TACKLE,       120, ELECTRIC, 100, 15,  10, PHYSICAL ;VOLT_TACKLE
	move EFFECT_ALWAYS_HIT,         60, GRASS,    100, 20,   0, SPECIAL  ;MAGICAL_LEAF
	move EFFECT_WATER_SPORT,         0, WATER,    100, 15,   0, STATUS   ;WATER_SPORT
	move EFFECT_SP_ATK_SP_DEF_UP,    0, PSYCHIC,  100, 20,   0, STATUS   ;CALM_MIND
	move EFFECT_NORMAL_HIT,         70, GRASS,    100, 15,   0, PHYSICAL ;LEAF_BLADE
	move EFFECT_ATK_SPEED_UP,        0, DRAGON,   100, 20,   0, STATUS   ;DRAGON_DANCE
	move EFFECT_MULTI_HIT,          25, ROCK,      80, 10,   0, PHYSICAL ;ROCK_BLAST
	move EFFECT_ALWAYS_HIT,         60, ELECTRIC, 100, 20,   0, SPECIAL  ;SHOCK_WAVE
	move EFFECT_CONFUSE_HIT,        60, WATER,    100, 20,  20, SPECIAL  ;WATER_PULSE
	move EFFECT_DOOM_DESIRE,       140, STEEL,    100, 5,    0, SPECIAL  ;DOOM_DESIRE ; buffed
	move EFFECT_SP_ATK_DOWN_2_HIT, 140, PSYCHIC,   90, 5,    0, SPECIAL  ;PSYCHO_BOOST
	move EFFECT_ROOST,               0, FLYING,   100, 10,   0, STATUS   ;ROOST
	move EFFECT_GRAVITY,             0, PSYCHIC,  100, 5,    0, STATUS   ;GRAVITY
	move EFFECT_MIRACLE_EYE,         0, PSYCHIC,  100, 40,   0, STATUS   ;MIRACLE_EYE
	move EFFECT_WAKE_UP_SLAP,       60, FIGHTING, 100, 10,   0, PHYSICAL ;WAKE_UP_SLAP
	move EFFECT_HAMMER_ARM,        100, FIGHTING,  90, 10,   0, PHYSICAL ;HAMMER_ARM
	move EFFECT_GYRO_BALL,           0, STEEL,    100, 5,    0, PHYSICAL ;GYRO_BALL
	move EFFECT_HEALING_WISH,        0, PSYCHIC,  100, 10,   0, STATUS   ;HEALING_WISH
	move EFFECT_BRINE,              65, WATER,    100, 10,   0, SPECIAL  ;BRINE
	move EFFECT_NATURAL_GIFT,        0, NORMAL,   100, 15,   0, PHYSICAL ;NATURAL_GIFT
	move EFFECT_FEINT,              50, NORMAL,   100, 10,   0, PHYSICAL ;FEINT
	move EFFECT_PLUCK,              60, FLYING,   100, 20,   0, PHYSICAL ;PLUCK
	move EFFECT_TAILWIND,            0, FLYING,   100, 30,   0, STATUS   ;TAILWIND
	move EFFECT_ACUPRESSURE,         0, NORMAL,   100, 30,   0, STATUS   ;ACUPRESSURE
	move EFFECT_METAL_BURST,         0, STEEL,    100, 10,   0, PHYSICAL ;METAL_BURST
	move EFFECT_U_TURN,             70, BUG,      100, 20,   0, PHYSICAL ;U_TURN
	move EFFECT_CLOSE_COMBAT,      120, FIGHTING, 100, 5,    0, PHYSICAL ;CLOSE_COMBAT
	move EFFECT_PAYBACK,            50, DARK,     100, 10,   0, PHYSICAL ;PAYBACK
	move EFFECT_ASSURANCE,          50, DARK,     100, 10,   0, PHYSICAL ;ASSURANCE
	move EFFECT_EMBARGO,             0, DARK,     100, 15,   0, STATUS   ;EMBARGO
	move EFFECT_FLING,               0, DARK,     100, 10,   0, PHYSICAL ;FLING
	move EFFECT_PSYCHO_SHIFT,        0, PSYCHIC,   90, 10,   0, STATUS   ;PSYCHO_SHIFT
	move EFFECT_TRUMP_CARD,          0, NORMAL,   100, 5,    0, SPECIAL  ;TRUMP_CARD
	move EFFECT_HEAL_BLOCK,          0, PSYCHIC,  100, 15,   0, STATUS   ;HEAL_BLOCK
	move EFFECT_WRING_OUT,           0, NORMAL,   100, 5,    0, SPECIAL  ;WRING_OUT
	move EFFECT_POWER_TRICK,         0, PSYCHIC,  100, 10,   0, STATUS   ;POWER_TRICK
	move EFFECT_GASTRO_ACID,         0, POISON,   100, 10,   0, STATUS   ;GASTRO_ACID
	move EFFECT_LUCKY_CHANT,         0, NORMAL,   100, 30,   0, STATUS   ;LUCKY_CHANT
	move EFFECT_ME_FIRST,            0, NORMAL,   100, 20,   0, STATUS   ;ME_FIRST
	move EFFECT_COPYCAT,             0, NORMAL,   100, 20,   0, STATUS   ;COPYCAT
	move EFFECT_POWER_SWAP,          0, PSYCHIC,  100, 10,   0, STATUS   ;POWER_SWAP
	move EFFECT_GUARD_SWAP,          0, PSYCHIC,  100, 10,   0, STATUS   ;GUARD_SWAP
	move EFFECT_PUNISHMENT,         60, DARK,     100, 5,    0, PHYSICAL ;PUNISHMENT
	move EFFECT_LAST_RESORT,       130, NORMAL,   100, 5,    0, PHYSICAL ;LAST_RESORT
	move EFFECT_WORRY_SEED,          0, GRASS,    100, 10,   0, STATUS   ;WORRY_SEED
	move EFFECT_SUCKER_PUNCH,       80, DARK,     100, 5,    0, PHYSICAL ;SUCKER_PUNCH
	move EFFECT_TOXIC_SPIKES,        0, POISON,   100, 20,   0, STATUS   ;TOXIC_SPIKES
	move EFFECT_HEART_SWAP,          0, PSYCHIC,  100, 10,   0, STATUS   ;HEART_SWAP
	move EFFECT_AQUA_RING,           0, WATER,    100, 20,   0, STATUS   ;AQUA_RING
	move EFFECT_MAGNET_RISE,         0, ELECTRIC, 100, 10,   0, STATUS   ;MAGNET_RISE
	move EFFECT_FLARE_BLITZ,       120, FIRE,     100, 15,  10, PHYSICAL ;FLARE_BLITZ
	move EFFECT_PARALYZE_HIT,       60, FIGHTING, 100, 15,  30, PHYSICAL ;FORCE_PALM
	move EFFECT_ALWAYS_HIT,         90, FIGHTING, 100, 20,   0, SPECIAL  ;AURA_SPHERE
	move EFFECT_SPEED_UP_2,          0, ROCK,     100, 20,   0, STATUS   ;ROCK_POLISH
	move EFFECT_POISON_HIT,         80, POISON,   100, 20,  30, PHYSICAL ;POISON_JAB
	move EFFECT_FLINCH_HIT,         80, DARK,     100, 15,  20, SPECIAL  ;DARK_PULSE
	move EFFECT_NORMAL_HIT,         70, DARK,     100, 15,   0, PHYSICAL ;NIGHT_SLASH
	move EFFECT_NORMAL_HIT,         90, WATER,     90, 10,   0, PHYSICAL ;AQUA_TAIL
	move EFFECT_NORMAL_HIT,         80, GRASS,    100, 15,   0, PHYSICAL ;SEED_BOMB
	move EFFECT_FLINCH_HIT,         75, FLYING,    95, 20,  30, SPECIAL  ;AIR_SLASH
	move EFFECT_NORMAL_HIT,         80, BUG,      100, 15,   0, PHYSICAL ;X_SCISSOR
	move EFFECT_SP_DEF_DOWN_HIT,    90, BUG,      100, 10,  10, SPECIAL  ;BUG_BUZZ
	move EFFECT_NORMAL_HIT,         90, DRAGON,   100, 10,   0, SPECIAL  ;DRAGON_PULSE
	move EFFECT_FLINCH_HIT,        100, DRAGON,    75, 10,  20, PHYSICAL ;DRAGON_RUSH
	move EFFECT_NORMAL_HIT,         80, ROCK,     100, 20,   0, SPECIAL  ;POWER_GEM
	move EFFECT_LEECH_HIT,          75, FIGHTING, 100, 10,   0, PHYSICAL ;DRAIN_PUNCH
	move EFFECT_PRIORITY_HIT,       40, FIGHTING, 100, 30,   0, SPECIAL  ;VACUUM_WAVE
	move EFFECT_SP_DEF_DOWN_HIT,   120, FIGHTING,  70, 5,   10, SPECIAL  ;FOCUS_BLAST
	move EFFECT_SP_DEF_DOWN_HIT,    90, GRASS,    100, 10,  10, SPECIAL  ;ENERGY_BALL
	move EFFECT_RECOIL_HIT,        120, FLYING,   100, 15,   0, PHYSICAL ;BRAVE_BIRD
	move EFFECT_SP_DEF_DOWN_HIT,    90, GROUND,   100, 10,  10, SPECIAL  ;EARTH_POWER
	move EFFECT_TRICK,               0, DARK,     100, 10,   0, STATUS   ;SWITCHEROO
	move EFFECT_HYPER_BEAM,        150, NORMAL,    90, 5,    0, PHYSICAL ;GIGA_IMPACT
	move EFFECT_SP_ATK_UP_2,         0, PSYCHIC,  100, 20,   0, STATUS   ;NASTY_PLOT
	move EFFECT_PRIORITY_HIT,       40, FIGHTING, 100, 30,   0, PHYSICAL ;BULLET_PUNCH
	move EFFECT_AVALANCHE,          60, ICE,      100, 10,   0, PHYSICAL ;AVALANCHE
	move EFFECT_PRIORITY_HIT,       40, ICE,      100, 30,   0, PHYSICAL ;ICE_SHARD
	move EFFECT_NORMAL_HIT,         70, GHOST,    100, 15,   0, PHYSICAL ;SHADOW_CLAW
	move EFFECT_PARA_FLINCH_HIT,    65, ELECTRIC,  95, 15,  10, PHYSICAL ;THUNDER_FANG
	move EFFECT_FREEZE_FLINCH_HIT,  65, ICE,       95, 15,  10, PHYSICAL ;ICE_FANG
	move EFFECT_BURN_FLINCH_HIT,    65, FIRE,      95, 15,  10, PHYSICAL ;FIRE_FANG
	move EFFECT_PRIORITY_HIT,       40, GHOST,    100, 30,   0, PHYSICAL ;SHADOW_SNEAK
	move EFFECT_ACCURACY_DOWN_HIT,  65, GROUND,    85, 10,  30, SPECIAL  ;MUD_BOMB
	move EFFECT_NORMAL_HIT,         70, PSYCHIC,  100, 20,   0, PHYSICAL ;PSYCHO_CUT
	move EFFECT_FLINCH_HIT,         80, PSYCHIC,   90, 15,  20, PHYSICAL ;ZEN_HEADBUTT
	move EFFECT_ACCURACY_DOWN_HIT,  65, STEEL,     85, 10,  30, SPECIAL  ;MIRROR_SHOT
	move EFFECT_SP_DEF_DOWN_HIT,    80, STEEL,    100, 10,  10, SPECIAL  ;FLASH_CANNON
	move EFFECT_CONFUSE_HIT,        90, NORMAL,    85, 20,  20, PHYSICAL ;ROCK_CLIMB
	move EFFECT_DEFOG,               0, FLYING,   100, 15,   0, STATUS   ;DEFOG
	move EFFECT_TRICK_ROOM,          0, PSYCHIC,  100, 5,    0, STATUS   ;TRICK_ROOM
	move EFFECT_SP_ATK_DOWN_2_HIT, 140, DRAGON,    90, 5,    0, SPECIAL  ;DRACO_METEOR
	move EFFECT_PARALYZE_HIT,       80, ELECTRIC, 100, 15,  30, SPECIAL  ;DISCHARGE
	move EFFECT_BURN_HIT,           80, FIRE,     100, 15,  30, SPECIAL  ;LAVA_PLUME
	move EFFECT_SP_ATK_DOWN_2_HIT, 140, GRASS,     90, 5,    0, SPECIAL  ;LEAF_STORM
	move EFFECT_NORMAL_HIT,        120, GRASS,     85, 10,   0, PHYSICAL ;POWER_WHIP
	move EFFECT_HYPER_BEAM,        150, ROCK,      90, 5,    0, PHYSICAL ;ROCK_WRECKER
	move EFFECT_POISON_HIT,         70, POISON,    90, 20,  10, PHYSICAL ;CROSS_POISON
	move EFFECT_POISON_HIT,        120, POISON,    70, 5,   30, PHYSICAL ;GUNK_SHOT
	move EFFECT_FLINCH_HIT,         80, STEEL,     90, 15,  30, PHYSICAL ;IRON_HEAD
	move EFFECT_ALWAYS_HIT,         60, STEEL,    100, 20,   0, PHYSICAL ;MAGNET_BOMB
	move EFFECT_NORMAL_HIT,        100, ROCK,      80, 5,    0, PHYSICAL ;STONE_EDGE
	move EFFECT_CAPTIVATE,           0, NORMAL,   100, 20,   0, STATUS   ;CAPTIVATE
	move EFFECT_STEALTH_ROCK,        0, ROCK,     100, 20,   0, STATUS   ;STEALTH_ROCK
	move EFFECT_WEIGHT_DAMAGE,       0, GRASS,    100, 20,   0, SPECIAL  ;GRASS_KNOT
	move EFFECT_CONFUSE_HIT,        60, FLYING,   100, 20,  31, SPECIAL  ;CHATTER
	move EFFECT_JUDGMENT,          100, NORMAL,   100, 10,   0, SPECIAL  ;JUDGMENT
	move EFFECT_BUG_BITE,           60, BUG,      100, 20,   0, PHYSICAL ;BUG_BITE
	move EFFECT_SP_ATK_UP_HIT,      50, ELECTRIC,  90, 10,  70, SPECIAL  ;CHARGE_BEAM
	move EFFECT_RECOIL_HIT,        120, GRASS,    100, 15,   0, PHYSICAL ;WOOD_HAMMER
	move EFFECT_PRIORITY_HIT,       40, WATER,    100, 20,   0, PHYSICAL ;AQUA_JET
	move EFFECT_NORMAL_HIT,         90, BUG,      100, 15,   0, PHYSICAL ;ATTACK_ORDER
	move EFFECT_DEF_SP_DEF_UP,       0, BUG,      100, 10,   0, STATUS   ;DEFEND_ORDER
	move EFFECT_HEAL,                0, BUG,      100, 10,   0, STATUS   ;HEAL_ORDER
	move EFFECT_RECOIL_1_2,        150, ROCK,      80, 5,    0, PHYSICAL ;HEAD_SMASH
	move EFFECT_DOUBLE_HIT,         35, NORMAL,    90, 10,   0, PHYSICAL ;DOUBLE_HIT
	move EFFECT_HYPER_BEAM,        150, DRAGON,    90, 5,    0, SPECIAL  ;ROAR_OF_TIME
	move EFFECT_NORMAL_HIT,        100, DRAGON,    95, 5,    0, SPECIAL  ;SPACIAL_REND
	move EFFECT_LUNAR_DANCE,         0, PSYCHIC,  100, 10,   0, STATUS   ;LUNAR_DANCE
	move EFFECT_CRUSH_GRIP,          0, NORMAL,   100, 5,    0, PHYSICAL ;CRUSH_GRIP
	move EFFECT_TRAP_TARGET,       120, FIRE,      70, 5,    0, SPECIAL  ;MAGMA_STORM
	move EFFECT_SLEEP,               0, DARK,      80, 10,   0, STATUS   ;DARK_VOID
	move EFFECT_SP_DEF_DOWN_2_HIT, 120, GRASS,     85, 5,   40, SPECIAL  ;SEED_FLARE
	move EFFECT_ALL_UP_HIT,         60, GHOST,    100, 5,   10, SPECIAL  ;OMINOUS_WIND
	move EFFECT_FLY,               120, GHOST,    100, 5,    0, PHYSICAL ;SHADOW_FORCE
	move EFFECT_RECOIL_1_2,        140, ROCK,      90, 5,    0, SPECIAL  ;CORAL_BEAM ; CORSOLA_SIGNATURE
	move EFFECT_POT_SMASH,         140, FLYING,    90, 5,    0, PHYSICAL ;POT_SMASH ; FARFETCH'D_SIGNATURE
