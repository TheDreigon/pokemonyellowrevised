MACRO move
	db \1 ; animation (interchangeable with move id)
	db \2 ; effect
	db \3 ; power
	db \4 ; type
	db \5 percent ; accuracy
	db \6 ; pp
	assert \6 <= 40, "PP must be 40 or less"
ENDM
; TODO: mandatorio: ver tutorial do mud-slap - aprender a fazer efeito + ataque.
Moves:
; Characteristics of each move.
	table_width MOVE_LENGTH, Moves
	move BUG_BITE,     NO_ADDITIONAL_EFFECT,        35, BUG,          100, 30
	move KARATE_CHOP,  NO_ADDITIONAL_EFFECT,        60, FIGHTING,     100, 30 ; deixou de ser high-crit
	move DOUBLESLAP,   TWO_TO_FIVE_ATTACKS_EFFECT,  16, NORMAL,        80, 20
	move COMET_PUNCH,  TWO_TO_FIVE_ATTACKS_EFFECT,  20, FIGHTING,      80, 20
	move MEGA_PUNCH,   NO_ADDITIONAL_EFFECT,        75, FIGHTING,      95, 20
	move PAY_DAY,      PAY_DAY_EFFECT,              60, NORMAL,       100, 30
	move FIRE_PUNCH,   BURN_SIDE_EFFECT1,           70, FIRE,         100, 15 ; magmar egg move.
	move ICE_PUNCH,    FREEZE_SIDE_EFFECT,          70, ICE,          100, 15 ; jynx egg move.
	move THUNDERPUNCH, PARALYZE_SIDE_EFFECT1,       70, ELECTRIC,     100, 15 ; electabuzz egg move.
	move SCRATCH,      NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35
	move VICEGRIP,     PARALYZE_SIDE_EFFECT2,       80, BUG,          100, 20 ; pinsir, kingler.
	move GUILLOTINE,   DEFENSE_DOWN1_EFFECT,       120, BUG,           80,  5 ; replaced 'OHKO_EFFECT' with 'DEFENSE_DOWN1_EFFECT'. passou a ser high-crit.
	move RAZOR_WIND,   CHARGE_EFFECT,               75, FLYING,       100, 20 ; passou a ser high-crit
	move SWORDS_DANCE, ATTACK_UP2_EFFECT,            0, NORMAL,       100, 20 ; growlithe, farfetch'd, etc.
	move CUT,          NO_ADDITIONAL_EFFECT,        55, BUG,          100, 25 ; passou a ser high-crit.
	move GUST,         NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 30
	move WING_ATTACK,  NO_ADDITIONAL_EFFECT,        60, FLYING,       100, 30
	move WHIRLWIND,    SPEED_DOWN1_EFFECT,           0, NORMAL,       100, 30 ; replaced 'SWITCH_AND_TELEPORT_EFFECT' with 'SPEED_DOWN1_EFFECT'.
	move FLY,          FLY_EFFECT,                  75, FLYING,       100, 20
	move BIND,         PARALYZE_SIDE_EFFECT2,       45, ROCK,         100, 20 ; no longer multi-turn; tornei a animação mais lenta/demorada. Onyx, Arbok, Dragonite, Gyarados, Machamp, Kangaskhan.
	move DRAGON_SLAM,  PARALYZE_SIDE_EFFECT2,       95, DRAGON,        90, 20 ; replaced 'NO_ADDITIONAL_EFFECT' with 'PARALYZE_SIDE_EFFECT2'.
	move VINE_WHIP,    NO_ADDITIONAL_EFFECT,        40, GRASS,        100, 25
	move GROUND_STOMP, SPEED_DOWN_SIDE_EFFECT,      45, GROUND,       100, 30 ; replaced 'FLINCH_SIDE_EFFECT1' with 'SPEED_DOWN_SIDE_EFFECT'. também dar ao Dodrio.
	move DOUBLE_KICK,  ATTACK_TWICE_EFFECT,         30, FIGHTING,     100, 20
	move MEGA_KICK,    NO_ADDITIONAL_EFFECT,        85, FIGHTING,      90, 15 ; TODO: scrap this move, give place to another.
	move JUMP_KICK,    NO_ADDITIONAL_EFFECT,        85, FIGHTING,      90, 15 ; replaced 'JUMP_KICK_EFFECT' with 'NO_ADDITIONAL_EFFECT'. TODO: scrap this move, give place to another.
	move ROLLING_KICK, FLINCH_SIDE_EFFECT2,         65, FIGHTING,     100, 25 ; hitmonlee's signature move.
	move SAND_ATTACK,  ACCURACY_DOWN1_EFFECT,        0, GROUND,       100, 15 ; TODO: give it damage, like mud-slap (see tutorial).
	move HEADBUTT,     FLINCH_SIDE_EFFECT2,         50, NORMAL,       100, 20 ; pokemon learns either Bite or Headbutt.
	move HORN_ATTACK,  NO_ADDITIONAL_EFFECT,        55, ROCK,          90, 25
	move FURY_ATTACK,  TWO_TO_FIVE_ATTACKS_EFFECT,  17, NORMAL,        80, 20
	move HORN_DRILL,   DEFENSE_DOWN1_EFFECT,       100, ROCK,          90, 15 ; replaced 'OHKO_EFFECT' with 'DEFENSE_DOWN1_EFFECT'. Rhydon, Tauros, Rapidash, Seaking.
	move TACKLE,       NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35
	move BODY_SLAM,    NO_ADDITIONAL_EFFECT,        80, NORMAL,       100, 25 ; replaced 'PARALYZE_SIDE_EFFECT2' with 'NO_ADDITIONAL_EFFECT'. just a stronger Tackle now.
	move WRAP,         TRAPPING_EFFECT,             16, GRASS,         80, 20 ; tornei a animação ligeiramente mais lenta/demorada. Tangela, Victreebell, Tentacruel, Lickitung.
	move TAKE_DOWN,    DEFENSE_DOWN1_EFFECT,        85, FIGHTING,      90, 20 ; replaced 'RECOIL_EFFECT' with 'DEFENSE_DOWN1_EFFECT'. versao ligeiramente mais fraca do Submission.
	move THRASH,       THRASH_PETAL_DANCE_EFFECT,  110, DRAGON,        90,  5
	move DOUBLE_EDGE,  RECOIL_EFFECT,              125, NORMAL,        80,  5
	move TAIL_WHIP,    DEFENSE_DOWN1_EFFECT,         0, NORMAL,       100, 30
	move POISON_STING, POISON_SIDE_EFFECT1,         35, POISON,       100, 30
	move TWINEEDLE,    TWINEEDLE_EFFECT,            40, BUG,          100, 20
	move PIN_MISSILE,  TWO_TO_FIVE_ATTACKS_EFFECT,  18, BUG,           80, 20
	move LEER,         SPEED_DOWN1_EFFECT,           0, NORMAL,       100, 30
	move BITE,         FLINCH_SIDE_EFFECT1,         45, NORMAL,       100, 30 ; pokemon learns either Bite or Headbutt.
	move GROWL,        ATTACK_DOWN1_EFFECT,          0, NORMAL,       100, 30
	move ROAR,         ATTACK_UP1_EFFECT,            0, NORMAL,       100, 30 ; replaced 'SWITCH_AND_TELEPORT_EFFECT' with 'ATTACK_UP1_EFFECT'. growlithe.
	move SING,         SLEEP_EFFECT,                 0, NORMAL,        75, 20 ; jigglypuff, chansey.
	move SUPERSONIC,   CONFUSION_EFFECT,             0, NORMAL,        80, 20 ; zubat.
	move SONICBOOM,    SPECIAL_DAMAGE_EFFECT,        1, NORMAL,       100, 20
	move DISABLE,      DISABLE_EFFECT,               0, NORMAL,        70, 20
	move ACID,         DEFENSE_DOWN1_EFFECT,        60, POISON,       100, 25 ; replaced 'DEFENSE_DOWN_SIDE_EFFECT' with 'DEFENSE_DOWN1_EFFECT'.
	move EMBER,        BURN_SIDE_EFFECT1,           40, FIRE,         100, 25
	move FLAMETHROWER, BURN_SIDE_EFFECT1,           90, FIRE,         100, 15
	move ICY_MIST,     SPEED_DOWN_SIDE_EFFECT,      40, ICE,          100, 25 ; replaced 'MIST_EFFECT' with 'SPEED_DOWN_SIDE_EFFECT'.
	move WATER_GUN,    NO_ADDITIONAL_EFFECT,        40, WATER,        100, 25
	move HYDRO_PUMP,   SPEED_DOWN1_EFFECT,         120, WATER,         80,  5 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPEED_DOWN1_EFFECT'.
	move SURF,         SPEED_DOWN_SIDE_EFFECT,      90, WATER,        100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPEED_DOWN_SIDE_EFFECT'.
	move ICE_BEAM,     FREEZE_SIDE_EFFECT,          90, ICE,          100, 15
	move BLIZZARD,     FREEZE_SIDE_EFFECT,         120, ICE,           80,  5
	move PSYBEAM,      SPECIAL_DOWN_SIDE_EFFECT,    65, PSYCHIC_TYPE, 100, 20 ; replaced 'CONFUSION_SIDE_EFFECT' with 'SPECIAL_DOWN_SIDE_EFFECT'.
	move BUBBLEBEAM,   SPEED_DOWN_SIDE_EFFECT,      65, WATER,        100, 20
	move AURORA_BEAM,  SPECIAL_DOWN_SIDE_EFFECT,    65, ICE,          100, 20 ; replaced 'ATTACK_DOWN_SIDE_EFFECT' with 'SPECIAL_DOWN_SIDE_EFFECT'.
	move HYPER_BEAM,   HYPER_BEAM_EFFECT,          125, DRAGON,        90,  5 ; dragonite, gyarados, mewtwo.
	move PECK,         NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 30
	move DRILL_PECK,   DEFENSE_DOWN1_EFFECT,        90, FLYING,       100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'DEFENSE_DOWN1_EFFECT'.
	move SUBMISSION,   ATTACK_DOWN1_EFFECT,         90, FIGHTING,     100, 20 ; replaced 'RECOIL_EFFECT' with 'ATTACK_DOWN1_EFFECT'. Machamp-line signature move.
	move LOW_KICK,     FLINCH_SIDE_EFFECT2,         45, FIGHTING,      90, 20
	move SHADOW_BALL,  SPECIAL_DOWN_SIDE_EFFECT,    70, GHOST,        100, 25 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPECIAL_DOWN_SIDE_EFFECT'. gastly-line and maybe marowak.
	move SEISMIC_TOSS, SPECIAL_DAMAGE_EFFECT,        1, FIGHTING,     100, 20
	move STRENGTH,     ATTACK_UP1_EFFECT,           60, FIGHTING,     100, 30 ; replaced 'NO_ADDITIONAL_EFFECT' with 'ATTACK_UP1_EFFECT'. machop-line learns naturally.
	move ABSORB,       DRAIN_HP_EFFECT,             30, GRASS,        100, 30
	move MEGA_DRAIN,   DRAIN_HP_EFFECT,             65, GRASS,        100, 20
	move LEECH_SEED,   LEECH_SEED_EFFECT,            0, GRASS,         90, 15
	move GROWTH,       SPECIAL_UP1_EFFECT,           0, NORMAL,       100, 25
	move RAZOR_LEAF,   NO_ADDITIONAL_EFFECT,        55, GRASS,        100, 25
	move SOLARBEAM,    CHARGE_EFFECT,              120, GRASS,        100, 10
	move POISONPOWDER, POISON_EFFECT,                0, GRASS,         80, 20
	move STUN_SPORE,   PARALYZE_EFFECT,              0, GRASS,         75, 20
	move SLEEP_POWDER, SLEEP_EFFECT,                 0, GRASS,         70, 20
	move PETAL_DANCE,  THRASH_PETAL_DANCE_EFFECT,  110, GRASS,         90,  5
	move STRING_SHOT,  SPEED_DOWN1_EFFECT,           0, BUG,          100, 30
	move DRAGON_RAGE,  SPECIAL_DAMAGE_EFFECT,        1, DRAGON,       100, 20 ; give to charizard too.
	move FIRE_SPIN,    BURN_SIDE_EFFECT1,           65, FIRE,         100, 20 ; replaced 'TRAPPING_EFFECT' with 'BURN_SIDE_EFFECT1'.
	move THUNDERSHOCK, PARALYZE_SIDE_EFFECT1,       65, ELECTRIC,     100, 20
	move THUNDERBOLT,  PARALYZE_SIDE_EFFECT2,       90, ELECTRIC,     100, 15 ; replaced 'PARALYZE_SIDE_EFFECT1' with 'PARALYZE_SIDE_EFFECT2'.
	move THUNDER_WAVE, PARALYZE_EFFECT,              0, ELECTRIC,     100, 20
	move THUNDER,      PARALYZE_SIDE_EFFECT2,      120, ELECTRIC,      80,  5 ; replaced 'PARALYZE_SIDE_EFFECT1' with 'PARALYZE_SIDE_EFFECT2'.
	move ROCK_THROW,   FLINCH_SIDE_EFFECT2,         60, ROCK,          90, 20 ; replaced 'NO_ADDITIONAL_EFFECT' with 'FLINCH_SIDE_EFFECT2'.
	move EARTHQUAKE,   SPEED_DOWN_SIDE_EFFECT,      90, GROUND,       100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPEED_DOWN_SIDE_EFFECT'.
	move FISSURE,      SPEED_DOWN1_EFFECT,         120, GROUND,        80,  5 ; replaced 'OHKO_EFFECT' with 'SPEED_DOWN1_EFFECT'.
	move DIG,          CHARGE_EFFECT,               75, GROUND,       100, 20
	move TOXIC,        POISON_EFFECT,                0, POISON,       100, 20
	move CONFUSION,    CONFUSION_SIDE_EFFECT,       40, PSYCHIC_TYPE, 100, 25 ; make gastly-line also learn confusion.
	move PSYCHIC_M,    CONFUSION_SIDE_EFFECT,       90, PSYCHIC_TYPE, 100, 15 ; replaced 'SPECIAL_DOWN_SIDE_EFFECT' with 'CONFUSION_SIDE_EFFECT'.
	move HYPNOSIS,     SLEEP_EFFECT,                 0, PSYCHIC_TYPE,  70, 20
	move MEDITATE,     SPECIAL_UP1_EFFECT,           0, NORMAL,       100, 25 ; replaced 'ATTACK_UP1_EFFECT' with 'SPECIAL_UP1_EFFECT'. TODO: find how to fix the 'Badge Boost glitch'.
	move AGILITY,      SPEED_UP2_EFFECT,             0, NORMAL,       100, 20
	move QUICK_ATTACK, SPEED_UP1_EFFECT,            50, NORMAL,       100, 25 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPECIAL_UP1_EFFECT'. give to Beedril, Hitmonchan too. TODO: test Speed +1.
	move RAGE,         ATTACK_UP1_EFFECT,           65, DRAGON,        90, 20 ; replaced 'RAGE_EFFECT' with 'ATTACK_UP1_EFFECT'. gyarados, dragonite, tauros, primeape, marowak, fearow, kangaskhan, etc.
	move TELEPORT,     EVASION_UP1_EFFECT,           0, NORMAL,       100, 15 ; replaced 'SWITCH_AND_TELEPORT_EFFECT' with 'EVASION_UP1_EFFECT'.
	move NIGHT_SHADE,  SPECIAL_DAMAGE_EFFECT,        0, GHOST,        100, 20 ; give to marowak too.
	move MIMIC,        MIMIC_EFFECT,                 0, NORMAL,       100, 10 ; clefairy, porygon. TODO: maybe change into something more useful/consistent?
	move SCREECH,      DEFENSE_DOWN2_EFFECT,         0, NORMAL,        90, 20
	move DOUBLE_TEAM,  EVASION_UP1_EFFECT,           0, NORMAL,       100, 15
	move RECOVER,      HEAL_EFFECT,                  0, NORMAL,       100, 20 ; dar ao vaporeon.
	move HARDEN,       DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 30
	move MINIMIZE,     EVASION_UP1_EFFECT,           0, NORMAL,       100, 15
	move SMOKESCREEN,  ACCURACY_DOWN1_EFFECT,        0, NORMAL,       100, 15
	move CONFUSE_RAY,  CONFUSION_EFFECT,             0, GHOST,         90, 20
	move WITHDRAW,     DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 30
	move DEFENSE_CURL, DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 30
	move BARRIER,      DEFENSE_UP2_EFFECT,           0, NORMAL,       100, 20
	move LIGHT_SCREEN, LIGHT_SCREEN_EFFECT,          0, NORMAL,       100, 20 ; give to porygon too.
	move HAZE,         POISON_SIDE_EFFECT2,         90, POISON,       100, 15 ; weezing, gengar, golbat.
	move REFLECT,      REFLECT_EFFECT,               0, NORMAL,       100, 20 ; give to porygon too.
	move FOCUS_ENERGY, ATTACK_UP1_EFFECT,            0, NORMAL,       100, 30 ; replaced 'FOCUS_ENERGY_EFFECT' with 'ATTACK_UP1_EFFECT'. give to fighting types.
	move BIDE,         BIDE_EFFECT,                  0, NORMAL,       100, 20
	move METRONOME,    METRONOME_EFFECT,             0, NORMAL,       100, 40 ; jigglypuff signature move. also porygon.
	move MIRROR_MOVE,  MIRROR_MOVE_EFFECT,           0, NORMAL,       100, 20 ; TODO: maybe change into something more useful/consistent?
	move SELFDESTRUCT, EXPLODE_EFFECT,             100, NORMAL,       100,  5
	move EGG_BOMB,     NO_ADDITIONAL_EFFECT,        90, GRASS,         90, 10 ; exeggute, chansey.
	move LICK,         PARALYZE_SIDE_EFFECT2,       30, GHOST,        100, 20 ; give to jynx.
	move SMOG,         POISON_SIDE_EFFECT1,         30, POISON,       100, 30 ; koffing signature move.
	move SLUDGE,       POISON_SIDE_EFFECT2,         90, POISON,       100, 15 ; muk.
	move BONE_CLUB,    FLINCH_SIDE_EFFECT1,         60, GROUND,       100, 30
	move FIRE_BLAST,   BURN_SIDE_EFFECT2,          120, FIRE,          80,  5
	move WATERFALL,    FLINCH_SIDE_EFFECT1,         95, WATER,         95, 20
	move CLAMP,        TRAPPING_EFFECT,             30, WATER,         90, 20 ; cloyster signature move.
	move SWIFT,        NO_ADDITIONAL_EFFECT,        40, ELECTRIC,     100, 25 ; replaced 'SWIFT_EFFECT' with 'NO_ADDITIONAL_EFFECT'.
	move SKULL_BASH,   RECOIL_EFFECT,              110, ROCK,         100,  5 ; TODO: improve animation. ; replaced 'CHARGE_EFFECT' with 'RECOIL_EFFECT'. Pokemon: Rhyhorn, Rhydon, Onix, Kabutops, Aerodactyl, Omastar, Geodude/Graveler/Golem, Tauros, Blastoise, Marowak, Exeggutor, Rapidash.
	move SPIKE_CANNON, TWO_TO_FIVE_ATTACKS_EFFECT,  18, ROCK,          80, 20 ; cloyster, omastar, sandslash.
	move CONSTRICT,    SPEED_DOWN1_EFFECT,          30, BUG,          100, 30 ; Pinsir, Tangela, Victreebell.
	move AMNESIA,      SPECIAL_UP1_EFFECT,           0, NORMAL,       100, 25 ; temporarily replaced 'SPECIAL_UP2_EFFECT' with 'SPECIAL_UP1_EFFECT'.
	move KINESIS,      ACCURACY_DOWN1_EFFECT,       30, PSYCHIC_TYPE, 100, 20 ; see tutorial. related to sand-attack.
	move SOFTBOILED,   HEAL_EFFECT,                  0, NORMAL,       100, 20
	move HI_JUMP_KICK, NO_ADDITIONAL_EFFECT,        90, FIGHTING,      90, 15 ; replaced 'JUMP_KICK_EFFECT' with 'NO_ADDITIONAL_EFFECT'. passou a ser high-crit. hitmonlee's signature move.
	move GLARE,        PARALYZE_EFFECT,              0, DRAGON,        90, 20 ; arbok's signature move. also, dragonite, gyarados, tauros, onyx, gengar.
	move DREAM_EATER,  DREAM_EATER_EFFECT,         100, PSYCHIC_TYPE, 100, 15 ; hypno.
	move POISON_GAS,   POISON_EFFECT,                0, POISON,        75, 20 ; koffing, gastly.
	move BARRAGE,      TWO_TO_FIVE_ATTACKS_EFFECT,  18, GRASS,         80, 20 ; exeggute, chansey.
	move LEECH_LIFE,   DRAIN_HP_EFFECT,             65, BUG,          100, 20 ; golbat.
	move LOVELY_KISS,  SLEEP_EFFECT,                 0, NORMAL,        75, 15 ; jynx.
	move SKY_ATTACK,   CHARGE_EFFECT,              120, FLYING,       100, 10
	move TRANSFORM,    TRANSFORM_EFFECT,             0, NORMAL,       100, 40
	move BUBBLE,       NO_ADDITIONAL_EFFECT,        20, WATER,        100, 30
	move DIZZY_PUNCH,  CONFUSION_SIDE_EFFECT,       65, FIGHTING,     100, 25 ; hitmonchan signature.
	move SPORE,        SLEEP_EFFECT,                 0, GRASS,         90, 20
	move FLASH,        ACCURACY_DOWN1_EFFECT,        0, NORMAL,       100, 15 ; TODO: find out how to turn Flash from an HM to a TM.
	move PSYWAVE,      SPECIAL_DAMAGE_EFFECT,        1, PSYCHIC_TYPE,  90, 15 ; slightly weaker Confusion.
	move SPLASH,       SPLASH_EFFECT,                0, NORMAL,       100, 40
	move ACID_ARMOR,   DEFENSE_UP2_EFFECT,           0, NORMAL,       100, 20 ; muk, vaporeon.
	move CRABHAMMER,   FLINCH_SIDE_EFFECT2,        100, WATER,         90, 20 ; deixou de ser high-crit.
	move EXPLOSION,    EXPLODE_EFFECT,             150, NORMAL,       100,  5
	move FURY_SWIPES,  TWO_TO_FIVE_ATTACKS_EFFECT,  17, NORMAL,        80, 20
	move BONEMERANG,   ATTACK_TWICE_EFFECT,         45, GROUND,        90, 20
	move REST,         HEAL_EFFECT,                  0, NORMAL,       100, 20
	move ROCK_SLIDE,   PARALYZE_SIDE_EFFECT2,       90, ROCK,         100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'PARALYZE_SIDE_EFFECT2'.
	move HYPER_FANG,   FLINCH_SIDE_EFFECT1,         80, NORMAL,        90, 20
	move SHARPEN,      ATTACK_UP2_EFFECT,            0, NORMAL,       100, 20 ; replaced 'ATTACK_UP1_EFFECT' with 'ATTACK_UP2_EFFECT'. Porygon.
	move CONVERSION,   SPECIAL_UP2_EFFECT,           0, NORMAL,       100, 20 ; replaced 'CONVERSION_EFFECT' with 'SPECIAL_UP2_EFFECT'. Porygon.
	move TRI_ATTACK,   ACCURACY_UP1_EFFECT,         90, NORMAL,       100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'ACCURACY_UP1_EFFECT'. Porygon, Mewtwo. TODO: test if this effect works.
	move SUPER_FANG,   SUPER_FANG_EFFECT,            1, NORMAL,        90, 20
	move SLASH,        NO_ADDITIONAL_EFFECT,        60, NORMAL,       100, 25
	move SUBSTITUTE,   SUBSTITUTE_EFFECT,            0, NORMAL,       100, 10
	move COUNTER,      DEFENSE_UP1_EFFECT,           1, FIGHTING,     100, 20 ; replaced 'NO_ADDITIONAL_EFFECT' with 'DEFENSE_UP1_EFFECT'. TODO: retest move, after I added new defense +1 effect.
	move STRUGGLE,     RECOIL_EFFECT,               50, NORMAL,       100, 10 ; Always have Struggle as the last move on the list.
	assert_table_length NUM_ATTACKS

; Idea: create a new drain-hp ghost type move - Parasect, Gengar.
; Idea: create a new signature move for Farfetch'd - fighting type -, like "Leek Strike - 60, FIGHTING, 100, 30".
; Idea: create a new signature move for Mewtwo, Mew: "move MIND_BURST,     SPECIAL_DOWN1_EFFECT,      120, PSYCHIC_TYPE, 100, 10".
; Ideias de dar ao Hitmonchan: Sky Uppercut, Mach Punch, Drain Punch.
; Idea: Drain Kiss (maybe Psychic type), Jynx's new signature move.
; Ideias novos moves: Dragon Dance, Will-O-Wisp.

; TODO: testar se ataques como o Strength ainda aumentam os stats caso não acertem no oponente.
