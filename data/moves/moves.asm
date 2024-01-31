MACRO move
	db \1 ; animation (interchangeable with move id)
	db \2 ; effect
	db \3 ; power
	db \4 ; type
	db \5 percent ; accuracy
	db \6 ; pp
	assert \6 <= 40, "PP must be 40 or less"
ENDM

Moves:
; Characteristics of each move.
	table_width MOVE_LENGTH, Moves
	move BUG_BITE,     NO_ADDITIONAL_EFFECT,        35, NORMAL,       100, 30
	move KARATE_CHOP,  NO_ADDITIONAL_EFFECT,        60, FIGHTING,     100, 30 ; deixou de ser high-crit
	move DOUBLESLAP,   TWO_TO_FIVE_ATTACKS_EFFECT,  15, NORMAL,        80, 20
	move COMET_PUNCH,  TWO_TO_FIVE_ATTACKS_EFFECT,  20, FIGHTING,      80, 20
	move MEGA_PUNCH,   NO_ADDITIONAL_EFFECT,        75, FIGHTING,      95, 15
	move PAY_DAY,      PAY_DAY_EFFECT,              60, NORMAL,       100, 30
	move FIRE_PUNCH,   BURN_SIDE_EFFECT1,           70, FIRE,         100, 15 ; magmar egg move.
	move ICE_PUNCH,    FREEZE_SIDE_EFFECT,          70, ICE,          100, 15 ; jynx egg move.
	move THUNDERPUNCH, PARALYZE_SIDE_EFFECT1,       70, ELECTRIC,     100, 15 ; electabuzz egg move.
	move SCRATCH,      NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35
	move VICEGRIP,     PARALYZE_SIDE_EFFECT2,       80, BUG,          100, 20 ; pinsir, kingler.
	move GUILLOTINE,   DEFENSE_DOWN1_EFFECT,       120, BUG,           80,  5 ; replaced 'OHKO_EFFECT' with 'DEFENSE_DOWN1_EFFECT'. passou a ser high-crit. ver se o Pinsir e Kingler não são muito rápidos (devido a crit-chance).
	move RAZOR_WIND,   CHARGE_EFFECT,               80, FLYING,       100, 20 ; passou a ser high-crit
	move SWORDS_DANCE, ATTACK_UP2_EFFECT,            0, NORMAL,       100, 20 ; growlithe, farfetch'd, etc.
	move CUT,          NO_ADDITIONAL_EFFECT,        55, BUG,          100, 25 ; passou a ser high-crit.
	move GUST,         NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 30
	move WING_ATTACK,  NO_ADDITIONAL_EFFECT,        60, FLYING,       100, 30
	move WHIRLWIND,    SPEED_DOWN1_EFFECT,           0, NORMAL,       100, 30 ; replaced 'SWITCH_AND_TELEPORT_EFFECT' with 'SPEED_DOWN1_EFFECT'.
	move FLY,          FLY_EFFECT,                  75, FLYING,       100, 15
	move BIND,         PARALYZE_SIDE_EFFECT2,       50, ROCK,          95, 25 ; no longer multi-turn; tornei a animação mais lenta/demorada. Onyx, Arbok, Dragonite, Gyarados, Machamp, Kangaskhan.
	move DRAGON_SLAM,  FLINCH_SIDE_EFFECT2,         90, DRAGON,        90, 20
	move VINE_WHIP,    NO_ADDITIONAL_EFFECT,        40, GRASS,        100, 25
	move GROUND_STOMP, SPEED_DOWN_SIDE_EFFECT,      45, GROUND,       100, 25 ; replaced 'FLINCH_SIDE_EFFECT1' with 'SPEED_DOWN_SIDE_EFFECT'.
	move DOUBLE_KICK,  ATTACK_TWICE_EFFECT,         30, FIGHTING,     100, 20
	move MEGA_KICK,    NO_ADDITIONAL_EFFECT,        90, FIGHTING,      85, 10
	move JUMP_KICK,    JUMP_KICK_EFFECT,            80, FIGHTING,      95, 20
	move ROLLING_KICK, FLINCH_SIDE_EFFECT2,         65, FIGHTING,      95, 15 ; hitmonlee signature
	move SAND_ATTACK,  ACCURACY_DOWN1_EFFECT,        0, GROUND,       100, 15
	move HEADBUTT,     FLINCH_SIDE_EFFECT2,         50, NORMAL,       100, 20 ; pokemon learns either Bite or Headbutt.
	move HORN_ATTACK,  NO_ADDITIONAL_EFFECT,        60, NORMAL,        95, 25
	move FURY_ATTACK,  TWO_TO_FIVE_ATTACKS_EFFECT,  16, NORMAL,        80, 20
	move HORN_DRILL,   DEFENSE_DOWN1_EFFECT,       120, ROCK,          80,  5 ; replaced 'OHKO_EFFECT' with 'DEFENSE_DOWN1_EFFECT'. passou a ser high-crit. Rhydon's signature move.
	move TACKLE,       NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35
	move BODY_SLAM,    PARALYZE_SIDE_EFFECT2,       80, NORMAL,       100, 20
	move WRAP,         TRAPPING_EFFECT,             16, GRASS,         90, 25 ; tornei a animação ligeiramente mais lenta/demorada. Tangela, Victreebell, Tentacruel, Lickitung.
	move TAKE_DOWN,    DEFENSE_DOWN1_EFFECT,        90, NORMAL,       100, 15 ; replaced 'RECOIL_EFFECT' with 'DEFENSE_DOWN1_EFFECT'.
	move THRASH,       THRASH_PETAL_DANCE_EFFECT,  110, DRAGON,        90,  5
	move DOUBLE_EDGE,  RECOIL_EFFECT,              120, NORMAL,        80, 10
	move TAIL_WHIP,    DEFENSE_DOWN1_EFFECT,         0, NORMAL,       100, 30
	move POISON_STING, POISON_SIDE_EFFECT1,         35, POISON,       100, 25
	move TWINEEDLE,    TWINEEDLE_EFFECT,            40, BUG,          100, 20
	move PIN_MISSILE,  TWO_TO_FIVE_ATTACKS_EFFECT,  18, BUG,           80, 20
	move LEER,         SPEED_DOWN1_EFFECT,           0, NORMAL,       100, 30
	move BITE,         FLINCH_SIDE_EFFECT1,         50, NORMAL,       100, 30 ; pokemon learns either Bite or Headbutt.
	move GROWL,        ATTACK_DOWN1_EFFECT,          0, NORMAL,       100, 30
	move ROAR,         ATTACK_UP1_EFFECT,            0, NORMAL,       100, 30 ; replaced 'SWITCH_AND_TELEPORT_EFFECT' with 'ATTACK_UP1_EFFECT'. growlithe.
	move SING,         SLEEP_EFFECT,                 0, NORMAL,        75, 20 ; jigglypuff
	move SUPERSONIC,   CONFUSION_EFFECT,             0, NORMAL,        75, 20 ; zubat
	move SONICBOOM,    SPECIAL_DAMAGE_EFFECT,        1, NORMAL,        90, 20
	move DISABLE,      DISABLE_EFFECT,               0, NORMAL,        60, 20
	move ACID,         DEFENSE_DOWN1_EFFECT,        60, POISON,       100, 25 ; replaced 'DEFENSE_DOWN_SIDE_EFFECT' with 'DEFENSE_DOWN1_EFFECT'.
	move EMBER,        BURN_SIDE_EFFECT1,           40, FIRE,         100, 25
	move FLAMETHROWER, BURN_SIDE_EFFECT1,           90, FIRE,         100, 15
	move ICY_MIST,     SPEED_DOWN_SIDE_EFFECT,      40, ICE,          100, 25 ; replaced 'MIST_EFFECT' with 'SPEED_DOWN_SIDE_EFFECT'. TODO: test damage animation.
	move WATER_GUN,    NO_ADDITIONAL_EFFECT,        40, WATER,        100, 25
	move HYDRO_PUMP,   SPEED_DOWN1_EFFECT,         120, WATER,         80,  5 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPEED_DOWN1_EFFECT'.
	move SURF,         SPEED_DOWN_SIDE_EFFECT,      90, WATER,        100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPEED_DOWN_SIDE_EFFECT'.
	move ICE_BEAM,     FREEZE_SIDE_EFFECT,          90, ICE,          100, 15
	move BLIZZARD,     FREEZE_SIDE_EFFECT,         120, ICE,           80,  5
	move PSYBEAM,      SPECIAL_DOWN_SIDE_EFFECT,    65, PSYCHIC_TYPE, 100, 20 ; replaced 'CONFUSION_SIDE_EFFECT' with 'SPECIAL_DOWN_SIDE_EFFECT'.
	move BUBBLEBEAM,   SPEED_DOWN_SIDE_EFFECT,      65, WATER,        100, 20
	move AURORA_BEAM,  SPECIAL_DOWN_SIDE_EFFECT,    65, ICE,          100, 20 ; replaced 'ATTACK_DOWN_SIDE_EFFECT' with 'SPECIAL_DOWN_SIDE_EFFECT'.
	move HYPER_BEAM,   HYPER_BEAM_EFFECT,          125, DRAGON,        90,  5 ; TODO: note: "In Generations 1-3, all Dragon type moves were categorized as Special".
	move PECK,         NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 30
	move DRILL_PECK,   DEFENSE_DOWN1_EFFECT,        80, FLYING,       100, 20 ; replaced 'NO_ADDITIONAL_EFFECT' with 'DEFENSE_DOWN1_EFFECT'.
	move SUBMISSION,   ATTACK_DOWN1_EFFECT,        100, FIGHTING,      90, 20 ; replaced 'RECOIL_EFFECT' with 'ATTACK_DOWN1_EFFECT'.
	move LOW_KICK,     FLINCH_SIDE_EFFECT2,         50, FIGHTING,      90, 20
	move SHADOW_BALL,  SPECIAL_DOWN_SIDE_EFFECT,    70, GHOST,        100, 25 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPECIAL_DOWN_SIDE_EFFECT'. gastly-line and maybe marowak.
	move SEISMIC_TOSS, SPECIAL_DAMAGE_EFFECT,        1, FIGHTING,     100, 20
	move STRENGTH,     ATTACK_UP1_EFFECT,           60, FIGHTING,     100, 20 ; replaced 'NO_ADDITIONAL_EFFECT' with 'ATTACK_UP1_EFFECT'. TODO: find how to fix the 'Badge Boost glitch'.
	move ABSORB,       DRAIN_HP_EFFECT,             30, GRASS,        100, 20
	move MEGA_DRAIN,   DRAIN_HP_EFFECT,             60, GRASS,        100, 20
	move LEECH_SEED,   LEECH_SEED_EFFECT,            0, GRASS,         90, 10
	move GROWTH,       SPECIAL_UP1_EFFECT,           0, NORMAL,       100, 25
	move RAZOR_LEAF,   NO_ADDITIONAL_EFFECT,        55, GRASS,        100, 25
	move SOLARBEAM,    CHARGE_EFFECT,              130, GRASS,        100,  5
	move POISONPOWDER, POISON_EFFECT,                0, GRASS,         80, 20
	move STUN_SPORE,   PARALYZE_EFFECT,              0, GRASS,         75, 20
	move SLEEP_POWDER, SLEEP_EFFECT,                 0, GRASS,         70, 20
	move PETAL_DANCE,  THRASH_PETAL_DANCE_EFFECT,  110, GRASS,         90,  5
	move STRING_SHOT,  SPEED_DOWN1_EFFECT,           0, BUG,          100, 30
	move DRAGON_RAGE,  SPECIAL_DAMAGE_EFFECT,        1, DRAGON,        90, 20
	move FIRE_SPIN,    BURN_SIDE_EFFECT1,           65, FIRE,         100, 20 ; replaced 'TRAPPING_EFFECT' with 'BURN_SIDE_EFFECT1'.
	move THUNDERSHOCK, PARALYZE_SIDE_EFFECT1,       65, ELECTRIC,     100, 20
	move THUNDERBOLT,  PARALYZE_SIDE_EFFECT2,       90, ELECTRIC,     100, 15 ; replaced 'PARALYZE_SIDE_EFFECT1' with 'PARALYZE_SIDE_EFFECT2'.
	move THUNDER_WAVE, PARALYZE_EFFECT,              0, ELECTRIC,     100, 20
	move THUNDER,      PARALYZE_SIDE_EFFECT2,      120, ELECTRIC,      80,  5 ; replaced 'PARALYZE_SIDE_EFFECT1' with 'PARALYZE_SIDE_EFFECT2'.
	move ROCK_THROW,   FLINCH_SIDE_EFFECT2,         60, ROCK,          90, 20 ; replaced 'NO_ADDITIONAL_EFFECT' with 'FLINCH_SIDE_EFFECT2'.
	move EARTHQUAKE,   SPEED_DOWN_SIDE_EFFECT,      90, GROUND,       100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPEED_DOWN_SIDE_EFFECT'.
	move FISSURE,      SPEED_DOWN1_EFFECT,         120, GROUND,        80,  5 ; replaced 'OHKO_EFFECT' with 'SPEED_DOWN1_EFFECT'.
	move DIG,          CHARGE_EFFECT,               75, GROUND,       100, 15
	move TOXIC,        POISON_EFFECT,                0, POISON,       100, 20
	move CONFUSION,    CONFUSION_SIDE_EFFECT,       40, PSYCHIC_TYPE, 100, 25 ; make gastly-line also learn confusion.
	move PSYCHIC_M,    CONFUSION_SIDE_EFFECT,       90, PSYCHIC_TYPE, 100, 15 ; replaced 'SPECIAL_DOWN_SIDE_EFFECT' with 'CONFUSION_SIDE_EFFECT'.
	move HYPNOSIS,     SLEEP_EFFECT,                 0, PSYCHIC_TYPE,  70, 20
	move MEDITATE,     SPECIAL_UP1_EFFECT,           0, NORMAL,       100, 30 ; replaced 'ATTACK_UP1_EFFECT' with 'SPECIAL_UP1_EFFECT'.
	move AGILITY,      SPEED_UP2_EFFECT,             0, NORMAL,       100, 20
	move QUICK_ATTACK, NO_ADDITIONAL_EFFECT,        45, NORMAL,       100, 25
	move RAGE,         ATTACK_UP1_EFFECT,           60, DRAGON,        90, 20 ; replaced 'RAGE_EFFECT' with 'ATTACK_UP1_EFFECT'.
	move TELEPORT,     EVASION_UP1_EFFECT,           0, NORMAL,       100, 15 ; replaced 'SWITCH_AND_TELEPORT_EFFECT' with 'EVASION_UP1_EFFECT'.
	move NIGHT_SHADE,  SPECIAL_DAMAGE_EFFECT,        0, GHOST,        100, 20 ; give marowak too.
	move MIMIC,        MIMIC_EFFECT,                 0, NORMAL,       100, 10 ; TODO: maybe change into something more useful/consistent?
	move SCREECH,      DEFENSE_DOWN2_EFFECT,         0, NORMAL,        90, 20
	move DOUBLE_TEAM,  EVASION_UP1_EFFECT,           0, NORMAL,       100, 15
	move RECOVER,      HEAL_EFFECT,                  0, NORMAL,       100, 20
	move HARDEN,       DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 30
	move MINIMIZE,     EVASION_UP1_EFFECT,           0, NORMAL,       100, 15
	move SMOKESCREEN,  ACCURACY_DOWN1_EFFECT,        0, NORMAL,       100, 15
	move CONFUSE_RAY,  CONFUSION_EFFECT,             0, GHOST,        100, 20
	move WITHDRAW,     DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 30
	move DEFENSE_CURL, DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 30
	move BARRIER,      DEFENSE_UP2_EFFECT,           0, NORMAL,       100, 20
	move LIGHT_SCREEN, LIGHT_SCREEN_EFFECT,          0, NORMAL,       100, 20
	move HAZE,         POISON_SIDE_EFFECT2,         90, POISON,       100, 15 ; weezing, gengar. ; TODO: test damage animation.
	move REFLECT,      REFLECT_EFFECT,               0, NORMAL,       100, 20
	move FOCUS_ENERGY, ATTACK_UP1_EFFECT,            0, NORMAL,       100, 30 ; replaced 'FOCUS_ENERGY_EFFECT' with 'ATTACK_UP1_EFFECT', until f.energy bug is fixed.
	move BIDE,         BIDE_EFFECT,                  0, NORMAL,       100, 20
	move METRONOME,    METRONOME_EFFECT,             0, NORMAL,       100, 40
	move MIRROR_MOVE,  MIRROR_MOVE_EFFECT,           0, NORMAL,       100, 20 ; TODO: maybe change into something more useful/consistent?
	move SELFDESTRUCT, EXPLODE_EFFECT,             130, NORMAL,       100,  5
	move EGG_BOMB,     NO_ADDITIONAL_EFFECT,        90, GRASS,         90, 10 ; exeggute, chansey.
	move LICK,         PARALYZE_SIDE_EFFECT2,       30, GHOST,        100, 20 ; TODO: In generation 1, Ghost type was categorised as Physical - make it Special. And Dragon Special -> Physical.
	move SMOG,         POISON_SIDE_EFFECT1,         35, POISON,       100, 25 ; koffing signature move.
	move SLUDGE,       POISON_SIDE_EFFECT2,         90, POISON,       100, 15 ; muk
	move BONE_CLUB,    FLINCH_SIDE_EFFECT1,         65, GROUND,       100, 20
	move FIRE_BLAST,   BURN_SIDE_EFFECT2,          120, FIRE,          80,  5
	move WATERFALL,    FLINCH_SIDE_EFFECT1,         95, WATER,         95, 15
	move CLAMP,        TRAPPING_EFFECT,             30, WATER,         90, 20 ; cloyster signature move.
	move SWIFT,        FLINCH_SIDE_EFFECT1,         40, ELECTRIC,     100, 25 ; replaced 'SWIFT_EFFECT' with 'FLINCH_SIDE_EFFECT1'.
	move SKULL_BASH,   RECOIL_EFFECT,              100, ROCK,          90, 10 ; replaced 'CHARGE_EFFECT' with 'RECOIL_EFFECT'. Pokemon: Rhyhorn, Rhydon, Onix/Steelix, Kabutops, Aerodactyl, Omastar, Geodude/Graveler/Golem, Tauros, Blastoise, Marowak, Exeggutor, Rapidash.
	move SPIKE_CANNON, TWO_TO_FIVE_ATTACKS_EFFECT,  18, ROCK,          80, 20 ; cloyster, omastar, sandslash.
	move CONSTRICT,    SPEED_DOWN_SIDE_EFFECT,      30, BUG,          100, 30 ; Pinsir, Tangela, Victreebell
	move AMNESIA,      SPECIAL_UP1_EFFECT,           0, NORMAL,       100, 25 ; temporarily replaced 'SPECIAL_UP2_EFFECT' with 'SPECIAL_UP1_EFFECT', until possible special split.
	move KINESIS,      ACCURACY_DOWN1_EFFECT,       30, PSYCHIC_TYPE,  90, 20
	move SOFTBOILED,   HEAL_EFFECT,                  0, NORMAL,       100, 20
	move HI_JUMP_KICK, JUMP_KICK_EFFECT,           110, FIGHTING,      80, 10 ; hitmonlee.
	move GLARE,        PARALYZE_EFFECT,              0, NORMAL,        90, 20
	move DREAM_EATER,  DREAM_EATER_EFFECT,         100, PSYCHIC_TYPE, 100, 15 ; TODO: maybe change into something more useful/consistent?
	move POISON_GAS,   POISON_EFFECT,                0, POISON,        70, 20
	move BARRAGE,      TWO_TO_FIVE_ATTACKS_EFFECT,  18, GRASS,         80, 20 ; exeggute, chansey.
	move LEECH_LIFE,   DRAIN_HP_EFFECT,             65, BUG,          100, 20 ; golbat
	move LOVELY_KISS,  SLEEP_EFFECT,                 0, NORMAL,        75, 15
	move SKY_ATTACK,   CHARGE_EFFECT,              130, FLYING,       100,  5
	move TRANSFORM,    TRANSFORM_EFFECT,             0, NORMAL,       100, 10
	move BUBBLE,       NO_ADDITIONAL_EFFECT,        20, WATER,        100, 30
	move DIZZY_PUNCH,  CONFUSION_SIDE_EFFECT,       65, FIGHTING,      95, 15 ; hitmonchan signature
	move SPORE,        SLEEP_EFFECT,                 0, GRASS,         90, 20
	move FLASH,        ACCURACY_DOWN1_EFFECT,        0, NORMAL,       100, 15
	move PSYWAVE,      SPECIAL_DAMAGE_EFFECT,        1, PSYCHIC_TYPE,  90, 15
	move SPLASH,       SPLASH_EFFECT,                0, NORMAL,       100, 40
	move ACID_ARMOR,   DEFENSE_UP2_EFFECT,           0, NORMAL,       100, 20
	move CRABHAMMER,   FLINCH_SIDE_EFFECT2,        100, WATER,         90, 15 ; deixou de ser high-crit.
	move EXPLOSION,    EXPLODE_EFFECT,             170, NORMAL,       100,  5
	move FURY_SWIPES,  TWO_TO_FIVE_ATTACKS_EFFECT,  18, NORMAL,        80, 20
	move BONEMERANG,   ATTACK_TWICE_EFFECT,         50, GROUND,        90, 10
	move REST,         HEAL_EFFECT,                  0, NORMAL,       100, 20
	move ROCK_SLIDE,   PARALYZE_SIDE_EFFECT2,       90, ROCK,         100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'PARALYZE_SIDE_EFFECT2'.
	move HYPER_FANG,   FLINCH_SIDE_EFFECT1,         80, NORMAL,        90, 15
	move SHARPEN,      ATTACK_UP2_EFFECT,            0, NORMAL,       100, 20 ; replaced 'ATTACK_UP1_EFFECT' with 'ATTACK_UP2_EFFECT'.
	move CONVERSION,   SPECIAL_UP2_EFFECT,           0, NORMAL,       100, 20 ; replaced 'CONVERSION_EFFECT' with 'SPECIAL_UP2_EFFECT'. TODO: test move animation.
	move TRI_ATTACK,   ACCURACY_UP1_EFFECT,         90, NORMAL,       100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'ACCURACY_UP1_EFFECT'. Porygon's signature move (and Mewtwo). TODO: test if this effect works.
	move SUPER_FANG,   SUPER_FANG_EFFECT,            1, NORMAL,        90, 15
	move SLASH,        NO_ADDITIONAL_EFFECT,        60, NORMAL,       100, 25
	move SUBSTITUTE,   SUBSTITUTE_EFFECT,            0, NORMAL,       100, 10
	move STRUGGLE,     RECOIL_EFFECT,               50, NORMAL,       100, 10
	assert_table_length NUM_ATTACKS
