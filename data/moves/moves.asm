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
	move BUG_BITE,     FLINCH_SIDE_EFFECT1,         35, BUG,          100, 35
	move KARATE_CHOP,  NO_ADDITIONAL_EFFECT,        60, FIGHTING,     100, 30 ; deixou de ser high-crit.
	move DOUBLESLAP,   TWO_TO_FIVE_ATTACKS_EFFECT,  16, NORMAL,        85, 20
	move COMET_PUNCH,  TWO_TO_FIVE_ATTACKS_EFFECT,  18, FIGHTING,      85, 20
	move MEGA_PUNCH,   NO_ADDITIONAL_EFFECT,        75, FIGHTING,      90, 20
	move PAY_DAY,      PAY_DAY_EFFECT,              60, NORMAL,       100, 30
	move FIRE_PUNCH,   BURN_SIDE_EFFECT1,           55, FIRE,         100, 25
	move ICE_PUNCH,    FREEZE_SIDE_EFFECT,          55, ICE,          100, 25
	move THUNDERPUNCH, PARALYZE_SIDE_EFFECT1,       55, ELECTRIC,     100, 25
	move SCRATCH,      NO_ADDITIONAL_EFFECT,        35, NORMAL,       100, 35 ; pokemon learns either Scratch/Bite or Tackle.
	move VICEGRIP,     NO_ADDITIONAL_EFFECT,        70, BUG,          100, 25 ; pinsir, kingler. passou a ser high-crit.
	move GUILLOTINE,   DEFENSE_DOWN1_EFFECT,       120, BUG,           80,  5 ; replaced 'OHKO_EFFECT' with 'DEFENSE_DOWN1_EFFECT'. passou a ser high-crit.
	move RAZOR_WIND,   NO_ADDITIONAL_EFFECT,        65, FLYING,       100, 20 ; replaced 'CHARGE_EFFECT' with 'NO_ADDITIONAL_EFFECT'. passou a ser high-crit.
	move SWORDS_DANCE, ATTACK_UP2_EFFECT,            0, NORMAL,       100, 20 ; arcanine, farfetch'd, primeape, marowak, pinsir, scyther, kabutops, sandslash, persian, kingler, hitmons.
	move CUT,          NO_ADDITIONAL_EFFECT,        55, BUG,          100, 25 ; passou a ser high-crit.
	move GUST,         NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 35
	move WING_ATTACK,  NO_ADDITIONAL_EFFECT,        60, FLYING,       100, 30
	move WHIRLWIND,    SPEED_DOWN1_EFFECT,           0, NORMAL,       100, 30 ; replaced 'SWITCH_AND_TELEPORT_EFFECT' with 'SPEED_DOWN1_EFFECT'. pidgeot, fearow, butterfree, farfetch'd, dragonite, aerodactyl.
	move FLY,          FLY_EFFECT,                  70, FLYING,       100, 25
	move BIND,         PARALYZE_SIDE_EFFECT2,       45, ROCK,         100, 25 ; no longer multi-turn; tornei a animação mais lenta/demorada. Onyx, Arbok, Dragonite, Gyarados, Machamp, Kangaskhan.
	move DRAGON_SLAM,  PARALYZE_SIDE_EFFECT2,       90, DRAGON,       100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'PARALYZE_SIDE_EFFECT2'. Natural: onyx, dragonite, gyarados.
	move VINE_WHIP,    NO_ADDITIONAL_EFFECT,        40, GRASS,        100, 30 ; bellsprout, bulbasaur, tangela - vinewhip; oddish, zubat - absorb.
	move GROUND_STOMP, SPEED_DOWN_SIDE_EFFECT,      45, GROUND,       100, 30 ; replaced 'FLINCH_SIDE_EFFECT1' with 'SPEED_DOWN_SIDE_EFFECT'. também dar ao Dodrio.
	move DOUBLE_KICK,  ATTACK_TWICE_EFFECT,         30, FIGHTING,     100, 20
	move MEGA_KICK,    NO_ADDITIONAL_EFFECT,        85, FIGHTING,      90, 15 ; TODO: scrap this move, give place to another?
	move JUMP_KICK,    NO_ADDITIONAL_EFFECT,        85, FIGHTING,      90, 15 ; replaced 'JUMP_KICK_EFFECT' with 'NO_ADDITIONAL_EFFECT'. TODO: scrap this move, give place to another.
	move ROLLING_KICK, FLINCH_SIDE_EFFECT2,         65, FIGHTING,     100, 25 ; hitmonlee's signature move.
	move SAND_ATTACK,  ACCURACY_DOWN1_EFFECT,       20, GROUND,       100, 20
	move HEADBUTT,     CONFUSION_SIDE_EFFECT,       45, NORMAL,       100, 25 ; TODO: editar a animacao para ser como o Bite, onde o Pokemon se aproxima primeiro.
	move HORN_ATTACK,  NO_ADDITIONAL_EFFECT,        50, NORMAL,        90, 30 ; passou a ser high-crit.
	move FURY_ATTACK,  TWO_TO_FIVE_ATTACKS_EFFECT,  17, NORMAL,        85, 20
	move HORN_DRILL,   DEFENSE_DOWN1_EFFECT,       100, ROCK,          90, 15 ; replaced 'OHKO_EFFECT' with 'DEFENSE_DOWN1_EFFECT'. passou a ser high-crit. Rhydon (learns right after skull bash), Rapidash, Seaking.
	move TACKLE,       NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35 ; pokemon learns either Scratch/Bite or Tackle.
	move BODY_SLAM,    NO_ADDITIONAL_EFFECT,        80, NORMAL,       100, 30 ; replaced 'PARALYZE_SIDE_EFFECT2' with 'NO_ADDITIONAL_EFFECT'. just a stronger Tackle now. common move.
	move WRAP,         TRAPPING_EFFECT,             16, GRASS,         80, 20 ; tornei a animação ligeiramente mais lenta/demorada. Tangela, Victreebel, Tentacruel.
	move TAKE_DOWN,    DEFENSE_DOWN1_EFFECT,        80, FIGHTING,      95, 20 ; replaced 'RECOIL_EFFECT' with 'DEFENSE_DOWN1_EFFECT'. versao ligeiramente mais fraca e comum do Submission.
	move THRASH,       THRASH_PETAL_DANCE_EFFECT,  110, DRAGON,        90,  5
	move DOUBLE_EDGE,  RECOIL_EFFECT,              110, NORMAL,        90, 10
	move TAIL_WHIP,    DEFENSE_DOWN1_EFFECT,         0, NORMAL,       100, 30
	move POISON_STING, POISON_SIDE_EFFECT1,         35, POISON,       100, 30
	move TWINEEDLE,    TWINEEDLE_EFFECT,            40, BUG,          100, 20
	move PIN_MISSILE,  TWO_TO_FIVE_ATTACKS_EFFECT,  18, BUG,           85, 20
	move LEER,         SPEED_DOWN1_EFFECT,           0, NORMAL,       100, 30
	move BITE,         FLINCH_SIDE_EFFECT1,         45, NORMAL,       100, 35 ; pokemon learns either Scratch/Bite or Tackle.
	move GROWL,        ATTACK_DOWN1_EFFECT,          0, NORMAL,       100, 30 ; give to oddish.
	move ROAR,         ATTACK_UP1_EFFECT,            0, NORMAL,       100, 30 ; replaced 'SWITCH_AND_TELEPORT_EFFECT' with 'ATTACK_UP1_EFFECT'. growlithe.
	move SING,         SLEEP_EFFECT,                 0, NORMAL,        90, 20 ; jigglypuff, chansey (high level).
	move SUPERSONIC,   CONFUSION_EFFECT,             0, NORMAL,        80, 20 ; zubat, magnemite, voltorb, electabuzz.
	move SONICBOOM,    SPECIAL_DAMAGE_EFFECT,        1, NORMAL,       100, 20
	move DISABLE,      DISABLE_EFFECT,               0, NORMAL,        75, 15
	move ACID,         DEFENSE_DOWN1_EFFECT,        60, POISON,       100, 25 ; replaced 'DEFENSE_DOWN_SIDE_EFFECT' with 'DEFENSE_DOWN1_EFFECT'.
	move EMBER,        BURN_SIDE_EFFECT1,           40, FIRE,         100, 30
	move FLAMETHROWER, BURN_SIDE_EFFECT2,           90, FIRE,         100, 15 ; replaced 'BURN_SIDE_EFFECT1' with 'BURN_SIDE_EFFECT2'.
	move ICY_MIST,     SPEED_DOWN_SIDE_EFFECT,      40, ICE,          100, 30 ; replaced 'MIST_EFFECT' with 'SPEED_DOWN_SIDE_EFFECT'.
	move WATER_GUN,    NO_ADDITIONAL_EFFECT,        40, WATER,        100, 30
	move HYDRO_PUMP,   SPEED_DOWN1_EFFECT,         110, WATER,         85, 10 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPEED_DOWN1_EFFECT'.
	move SURF,         SPEED_DOWN_SIDE_EFFECT,      90, WATER,        100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPEED_DOWN_SIDE_EFFECT'.
	move ICE_BEAM,     FREEZE_SIDE_EFFECT,          90, ICE,          100, 15
	move BLIZZARD,     FREEZE_SIDE_EFFECT,         110, ICE,           85, 10
	move PSYBEAM,      SPECIAL_DOWN_SIDE_EFFECT,    70, PSYCHIC_TYPE, 100, 20 ; replaced 'CONFUSION_SIDE_EFFECT' with 'SPECIAL_DOWN_SIDE_EFFECT'.
	move BUBBLEBEAM,   SPEED_DOWN_SIDE_EFFECT,      55, WATER,        100, 25
	move AURORA_BEAM,  SPECIAL_DOWN_SIDE_EFFECT,    70, ICE,          100, 20 ; replaced 'ATTACK_DOWN_SIDE_EFFECT' with 'SPECIAL_DOWN_SIDE_EFFECT'.
	move HYPER_BEAM,   HYPER_BEAM_EFFECT,          130, DRAGON,        80,  5 ; dragonite, gyarados (high level), mewtwo.
	move PECK,         NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 35
	move DRILL_PECK,   DEFENSE_DOWN1_EFFECT,        90, FLYING,       100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'DEFENSE_DOWN1_EFFECT'.
	move SUBMISSION,   ATTACK_DOWN1_EFFECT,         90, FIGHTING,     100, 20 ; replaced 'RECOIL_EFFECT' with 'ATTACK_DOWN1_EFFECT'. Machamp signature move.
	move LOW_KICK,     FLINCH_SIDE_EFFECT2,         45, FIGHTING,      90, 25
	move SHADOW_BALL,  SPECIAL_DOWN_SIDE_EFFECT,    75, GHOST,        100, 25 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPECIAL_DOWN_SIDE_EFFECT'. gengar, ninetales, maybe marowak. high-level move.
	move SEISMIC_TOSS, SPECIAL_DAMAGE_EFFECT,        1, FIGHTING,     100, 25
	move STRENGTH,     ATTACK_UP1_EFFECT,           60, FIGHTING,     100, 30 ; replaced 'NO_ADDITIONAL_EFFECT' with 'ATTACK_UP1_EFFECT'. machop-line and pinsir learn naturally.
	move ABSORB,       DRAIN_HP_EFFECT,             25, GRASS,        100, 30 ; bellsprout, bulbasaur, tangela - vinewhip; bellsprout, oddish, zubat - absorb.
	move MEGA_DRAIN,   DRAIN_HP_EFFECT,             50, GRASS,        100, 25
	move LEECH_SEED,   LEECH_SEED_EFFECT,            0, GRASS,        100, 15
	move GROWTH,       SPECIAL_UP1_EFFECT,           0, NORMAL,       100, 25 ; grass types.
	move RAZOR_LEAF,   NO_ADDITIONAL_EFFECT,        65, GRASS,        100, 20 ; high-crit.
	move SOLARBEAM,    CHARGE_EFFECT,              125, GRASS,        100, 10
	move POISONPOWDER, POISON_EFFECT,                0, GRASS,         80, 20
	move STUN_SPORE,   PARALYZE_EFFECT,              0, GRASS,         75, 20
	move SLEEP_POWDER, SLEEP_EFFECT,                 0, GRASS,         70, 20
	move PETAL_DANCE,  THRASH_PETAL_DANCE_EFFECT,   90, GRASS,        100, 15 ; venusaur, vileplume, victreebel.
	move STRING_SHOT,  SPEED_DOWN1_EFFECT,           0, BUG,          100, 30
	move DRAGON_RAGE,  SPECIAL_DAMAGE_EFFECT,        1, DRAGON,       100, 20 ; dragonite, gyarados, charizard.
	move FIRE_SPIN,    BURN_SIDE_EFFECT1,           70, FIRE,         100, 20 ; replaced 'TRAPPING_EFFECT' with 'BURN_SIDE_EFFECT1'. give to weezing.
	move THUNDERSHOCK, PARALYZE_SIDE_EFFECT1,       70, ELECTRIC,     100, 20
	move THUNDERBOLT,  PARALYZE_SIDE_EFFECT2,       90, ELECTRIC,     100, 15 ; replaced 'PARALYZE_SIDE_EFFECT1' with 'PARALYZE_SIDE_EFFECT2'.
	move THUNDER_WAVE, PARALYZE_EFFECT,              0, ELECTRIC,     100, 20
	move THUNDER,      PARALYZE_SIDE_EFFECT2,      110, ELECTRIC,      85, 10 ; replaced 'PARALYZE_SIDE_EFFECT1' with 'PARALYZE_SIDE_EFFECT2'.
	move ROCK_THROW,   FLINCH_SIDE_EFFECT2,         60, ROCK,          90, 25 ; replaced 'NO_ADDITIONAL_EFFECT' with 'FLINCH_SIDE_EFFECT2'.
	move EARTHQUAKE,   SPEED_DOWN_SIDE_EFFECT,      90, GROUND,       100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPEED_DOWN_SIDE_EFFECT'.
	move FISSURE,      SPEED_DOWN1_EFFECT,         120, GROUND,        80,  5 ; replaced 'OHKO_EFFECT' with 'SPEED_DOWN1_EFFECT'.
	move DIG,          CHARGE_EFFECT,               70, GROUND,       100, 25
	move TOXIC,        POISON_EFFECT,                0, POISON,       100, 20 ; muk, weezing, tentacruel, arbok, vileplume, victreebel, golbat, venomoth.
	move CONFUSION,    CONFUSION_SIDE_EFFECT,       55, PSYCHIC_TYPE, 100, 25 ; make gastly-line also learn confusion?
	move PSYCHIC_M,    SPECIAL_DOWN_SIDE_EFFECT,    90, PSYCHIC_TYPE, 100, 15
	move HYPNOSIS,     SLEEP_EFFECT,                 0, PSYCHIC_TYPE,  80, 20 ; hypno, poliwhirl, exeggutor.
	move MEDITATE,     SPECIAL_UP1_EFFECT,           0, NORMAL,       100, 25 ; replaced 'ATTACK_UP1_EFFECT' with 'SPECIAL_UP1_EFFECT'. signature lines: machop, hitchans, kadabra, mr mime, hypno.
	move AGILITY,      SPEED_UP2_EFFECT,             0, NORMAL,       100, 20 ; dodrio, electrode, arcanine, jolteon, pikachu, porygon, persian, rapidash, scyther, fearow, aerodactyl.
	move QUICK_ATTACK, SPEED_UP1_EFFECT,            50, NORMAL,       100, 25 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPEED_UP1_EFFECT'. give to Beedril, Dodrio, Dugtrio, Arcanine, Scyther, Persian, electric types too. TODO: test Speed +1.
	move RAGE,         ATTACK_UP1_EFFECT,           65, DRAGON,        90, 20 ; replaced 'RAGE_EFFECT' with 'ATTACK_UP1_EFFECT'. gyarados, dragonite, tauros, primeape, marowak, fearow, kangaskhan, etc.
	move TELEPORT,     EVASION_UP1_EFFECT,           0, NORMAL,       100, 15 ; replaced 'SWITCH_AND_TELEPORT_EFFECT' with 'EVASION_UP1_EFFECT'. alakazam, porygon, electrode.
	move NIGHT_SHADE,  SPECIAL_DAMAGE_EFFECT,        0, GHOST,        100, 25 ; gastly, marowak, ninetails.
	move MIMIC,        MIMIC_EFFECT,                 0, NORMAL,       100, 20 ; mew, golduck, wigglytuff, machamp, porygon.
	move SCREECH,      DEFENSE_DOWN2_EFFECT,         0, NORMAL,       100, 20 ; onyx, magneton, electabuzz, electrode, persian, arbok, primeape, aerodactyl, golbat, jigglytuff, .
	move DOUBLE_TEAM,  EVASION_UP1_EFFECT,           0, NORMAL,       100, 15 ; ninetails, gengar, scyther, jolteon.
	move RECOVER,      HEAL_EFFECT,                  0, NORMAL,       100, 15 ; vaporeon, muk, porygon, alakazam, starmie, lapras.
	move HARDEN,       DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 30 ; metapod, kakuna.
	move MINIMIZE,     EVASION_UP1_EFFECT,           0, NORMAL,       100, 15 ; jigglypuff, grimer, gastly.
	move SMOKESCREEN,  ACCURACY_DOWN1_EFFECT,        0, NORMAL,       100, 20 ; gastly, horsea, magmar, tentacool, koffing.
	move CONFUSE_RAY,  CONFUSION_EFFECT,             0, GHOST,        100, 20 ; gastly, vulpix, jynx, hypno.
	move WITHDRAW,     DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 30 ; shellder, squirtle, omanyte.
	move DEFENSE_CURL, DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 30 ; geodude, onyx, sandshrew, jigglypuff, hitmonchan, kabuto, ekans, lickitung.
	move BARRIER,      DEFENSE_UP2_EFFECT,           0, NORMAL,       100, 20 ; mr mime, clefairy.
	move LIGHT_SCREEN, LIGHT_SCREEN_EFFECT,          0, NORMAL,       100, 20 ; mr mime, porygon, alakazam, chansey, starmie, clefable.
	move HAZE,         POISON_SIDE_EFFECT2,         90, POISON,       100, 15 ; weezing, gengar, venomoth, vileplume.
	move REFLECT,      REFLECT_EFFECT,               0, NORMAL,       100, 20 ; mr mime, porygon, alakazam, chansey, starmie, clefable.
	move FOCUS_ENERGY, ATTACK_UP1_EFFECT,            0, NORMAL,       100, 30 ; replaced 'FOCUS_ENERGY_EFFECT' with 'ATTACK_UP1_EFFECT'. give to fighting types and scyther, tauros, marowak.
	move BIDE,         BIDE_EFFECT,                  0, NORMAL,       100, 20 ; snorlax, onyx, tauros, kangaskhan, dragonite, chansey, poliwrath.
	move METRONOME,    METRONOME_EFFECT,             0, NORMAL,       100, 20 ; mew, clefairy, porygon.
	move MIRROR_MOVE,  MIRROR_MOVE_EFFECT,           0, NORMAL,       100, 20 ; mew, eevee, clefairy, mr mime, porygon.
	move SELFDESTRUCT, EXPLODE_EFFECT,             100, NORMAL,       100,  5 ; TODO: scrap this move, give place to another.
	move EGG_BOMB,     BURN_SIDE_EFFECT2,           95, GRASS,        100, 10 ; replaced 'NO_ADDITIONAL_EFFECT' with 'BURN_SIDE_EFFECT2'. exeggutor, chansey.
	move LICK,         PARALYZE_SIDE_EFFECT2,       30, GHOST,        100, 30 ; lickitung, jynx, haunter, muk, hypno, golbat (maybe not zubat).
	move SMOG,         POISON_SIDE_EFFECT1,         30, POISON,       100, 30 ; koffing.
	move SLUDGE,       POISON_SIDE_EFFECT2,         90, POISON,       100, 15 ; muk, tentacruel, victreebel.
	move BONE_CLUB,    FLINCH_SIDE_EFFECT1,         60, GROUND,       100, 30
	move FIRE_BLAST,   BURN_SIDE_EFFECT2,          110, FIRE,          85, 10
	move WATERFALL,    FLINCH_SIDE_EFFECT1,         70, WATER,        100, 20 ; replaced 'NO_ADDITIONAL_EFFECT' with 'FLINCH_SIDE_EFFECT2'.
	move CLAMP,        TRAPPING_EFFECT,             18, WATER,         80, 20 ; cloyster signature move. ; TODO: maybe change to non-trapping, higher base power, raise user defense, maybe change name to include omaster.
	move SWIFT,        PARALYZE_SIDE_EFFECT1,       40, ELECTRIC,     100, 30 ; replaced 'SWIFT_EFFECT' with 'PARALYZE_SIDE_EFFECT1'.
	move SKULL_BASH,   RECOIL_EFFECT,              100, ROCK,          90, 10 ; replaced 'CHARGE_EFFECT' with 'RECOIL_EFFECT'. Pokemon: Rhydon, Onix, Kabutops, Omastar, Aerodactyl, Golem, Tauros, Blastoise, Marowak, Exeggutor, Cloyster.
	move SPIKE_CANNON, TWO_TO_FIVE_ATTACKS_EFFECT,  18, ROCK,          85, 20 ; cloyster, omastar, sandslash.
	move CONSTRICT,    SPEED_DOWN1_EFFECT,          30, BUG,          100, 30 ; Pinsir, Tangela, tentacruel.
	move AMNESIA,      SPECIAL_UP2_EFFECT,           0, NORMAL,       100, 15 ; slowbro (alakazam gets meditate), golduck, hypno, exeggutor, lickitung, wigglytuff, poliwrath.
	move KINESIS,      ACCURACY_DOWN1_EFFECT,       20, PSYCHIC_TYPE, 100, 20 ; kadabra's signature move.
	move SOFTBOILED,   HEAL_EFFECT,                  0, NORMAL,       100, 20 ; chansey, exeggutor.
	move HI_JUMP_KICK, NO_ADDITIONAL_EFFECT,       100, FIGHTING,      90, 20 ; replaced 'JUMP_KICK_EFFECT' with 'NO_ADDITIONAL_EFFECT'. hitmonlee's signature move.
	move GLARE,        PARALYZE_EFFECT,              0, DRAGON,        90, 20 ; Natural (after Scary Face): arbok, dragonite, gyarados, gengar, onyx. Learn: tauros, primeape, charizard, electabuzz, magmar, rhydon, nidoking, nidoqueen, arcanine, kangaskhan, hypno, golbat.
	move DREAM_EATER,  DREAM_EATER_EFFECT,         100, PSYCHIC_TYPE, 100, 20 ; hypno, gengar.
	move POISON_GAS,   POISON_EFFECT,                0, POISON,        80, 20 ; koffing, gastly, drowzee.
	move BARRAGE,      TWO_TO_FIVE_ATTACKS_EFFECT,  18, GRASS,         85, 20 ; exeggutor, chansey.
	move LEECH_LIFE,   DRAIN_HP_EFFECT,             60, BUG,          100, 20 ; golbat, parasect, venomoth.
	move LOVELY_KISS,  SLEEP_EFFECT,                 0, NORMAL,        80, 20 ; jynx (high level).
	move SKY_ATTACK,   CHARGE_EFFECT,              125, FLYING,       100,  5
	move TRANSFORM,    TRANSFORM_EFFECT,             0, NORMAL,       100, 40
	move BUBBLE,       NO_ADDITIONAL_EFFECT,        25, WATER,        100, 30 ; TODO: scrap this move, give place to another.
	move DIZZY_PUNCH,  CONFUSION_SIDE_EFFECT,       65, FIGHTING,     100, 25 ; hitmonchan.
	move SPORE,        SLEEP_EFFECT,                 0, GRASS,         90, 20
	move FLASH,        ACCURACY_DOWN1_EFFECT,        0, NORMAL,       100, 20 ; TODO: find out how to turn Flash from an HM to a TM.
	move PSYWAVE,      CONFUSION_SIDE_EFFECT,       40, PSYCHIC_TYPE, 100, 30 ; replaced 'SPECIAL_DAMAGE_EFFECT' with 'CONFUSION_SIDE_EFFECT'.
	move SPLASH,       SPLASH_EFFECT,                0, NORMAL,       100, 40
	move ACID_ARMOR,   DEFENSE_UP2_EFFECT,           0, NORMAL,       100, 20 ; replaced 'DEFENSE_UP2_EFFECT' with 'DEFENSE_UP1_EFFECT'. muk, vaporeon, tentacruel.
	move CRABHAMMER,   NO_ADDITIONAL_EFFECT,       100, ROCK,          90, 15 ; deixou de ser high-crit. kingler.
	move EXPLOSION,    EXPLODE_EFFECT,             125, FIRE,         100,  5 ; golem, weezing, electrode.
	move FURY_SWIPES,  TWO_TO_FIVE_ATTACKS_EFFECT,  17, NORMAL,        85, 20
	move BONEMERANG,   ATTACK_TWICE_EFFECT,         45, GROUND,        90, 20
	move REST,         HEAL_EFFECT,                  0, NORMAL,       100, 30 ; snorlax, poliwrath, chansey, slowbro.
	move ROCK_SLIDE,   PARALYZE_SIDE_EFFECT2,       90, ROCK,         100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'PARALYZE_SIDE_EFFECT2'.
	move HYPER_FANG,   FLINCH_SIDE_EFFECT1,         75, NORMAL,       100, 25
	move SHARPEN,      ATTACK_UP2_EFFECT,            0, NORMAL,       100, 20 ; replaced 'ATTACK_UP1_EFFECT' with 'ATTACK_UP2_EFFECT'. Porygon.
	move CONVERSION,   SPECIAL_UP2_EFFECT,           0, NORMAL,       100, 20 ; replaced 'CONVERSION_EFFECT' with 'SPECIAL_UP2_EFFECT'. Porygon.
	move TRI_ATTACK,   ACCURACY_UP1_EFFECT,         90, NORMAL,       100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'ACCURACY_UP1_EFFECT'. Porygon, Mewtwo.
	move SUPER_FANG,   SUPER_FANG_EFFECT,            1, NORMAL,        90, 20
	move SLASH,        NO_ADDITIONAL_EFFECT,        65, NORMAL,       100, 30 ; high-crit. stronger scratch.
	move SUBSTITUTE,   SUBSTITUTE_EFFECT,            0, NORMAL,       100, 10 ; gengar, alakazam, mr mime, jolteon, electrode.
	move COUNTER,      DEFENSE_UP1_EFFECT,           1, FIGHTING,     100, 20 ; replaced 'NO_ADDITIONAL_EFFECT' with 'DEFENSE_UP1_EFFECT'. fighting types.
	move STRUGGLE,     RECOIL_EFFECT,               40, DRAGON,       100, 10 ; Always have Struggle as the last move on the list (due to Metronome's internal workings). Changed type to Dragon type so it can hit all types, including Ghost.
	assert_table_length NUM_ATTACKS

; nº de ataques que temos de momento:
;   166 (incl. Struggle). não passar muito deste número.

; lista de moves a retirar:
;   Mega Kick (?)
;   Jump Kick
;   Selfdestruct
;   Bubble

; lista de moves a adicionar:
;   1 - novo HP-draining ghost type move (60 dmg/100 acc/20 pp) (Gengar, Ninetales, talvez Jynx, Parasect),
;   2 - temos tailwhip/growl/leer/etc - ter também um ataque como esses mas que baixe o special,
;   3 - Mach Punch (Hitmonchan, Machamp signature move),
;   4 - Dragon Dance (dragonite, charizard, gyarados),
;   5 - Will-O-Wisp (Ninetales, etc),
;   6 - um Quick Attack de Electric (e aí tirar o fundo branco da animaçao do quick attack e o 'SPEED_UP1_EFFECT' e dar a este novo),
;   7 - a new fighting type signature move for Farfetch'd: "Leek Strike - 60, NO_ADDITIONAL_EFFECT, FIGHTING, 100, 30". a animacao parecida com o Karate Chop, mas na horizontal.
;   8 - Poison Fang: Arbok, Golbat, Nidoking, Nidoqueen - POISON_SIDE_EFFECT2. (55/100/20)
;   9 - Idea: create a new signature move for Mewtwo, Mew: "move MIND_BURST,     SPECIAL_DOWN1_EFFECT,      120, PSYCHIC_TYPE, 100, 10".
;   10 - Crunch: stronger Bite, like Body Slam is a stronger Tackle; "move CRUNCH,  DEFENSE_DOWN_SIDE_EFFECT,         70, NORMAL,       100, 30"; animacao parecida com o Bite mas mais lenta e talvez o fundo preto.
;   11 - novo Magmar signature move: algo como "Magma Press" que queima sempre, 65 power e high-crit.
;   12 - novo Electabuzz signature move: algo como "Shock Smash" que paraliza sempre, 65 power e high-crit.
;   13 - 'Scary Face' - SPEED -2. Natural: Arbok, Hypno, Gengar, Onyx, Gyarados, Muk, Charizard, etc. Learned before Glare.
;   14 - Iron Defense - Defense +2 - Onyx, Magneton.
;   15 - Giga Drain - 75 power, 20 pp.

; ao criar um novo move que faca raise do special attack +2. dar aos eevees.
