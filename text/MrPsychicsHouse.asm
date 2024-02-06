_MrPsychicsHouseMrPsychicYouWantedThisText::
	text "...Wait! Don't"
	line "say a word!"

	para "You wanted this!"
	prompt

_MrPsychicsHouseMrPsychicReceivedTM29Text::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_MrPsychicsHouseMrPsychicTM29ExplanationText::
	text "TM29 is PSYCHIC!"

	para "It's a powerful"
	line "psychic type move"
	cont "that can confuse"
	cont "the target!"
	done

_MrPsychicsHouseMrPsychicTM29NoRoomText::
	text "Where do you plan"
	line "to put this?"
	done
