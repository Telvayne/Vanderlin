/mob/living/carbon/human/species/tieberian/shadowtief
	race = /datum/species/tieberian/shadowtief

/datum/attribute_holder/sheet/job/species/tiefling/shadowtief
	raw_attribute_list = list(
		STAT_STRENGTH = 0,
		STAT_PERCEPTION = 0,
		STAT_INTELLIGENCE = 0,
		STAT_ENDURANCE = 0,
		STAT_SPEED = 0
	)

/datum/species/tieberian/shadowtief
	name = "Shadowling"
	id = SPEC_ID_TIEFLING_SHADOW
	id_override = SPEC_ID_TIEFLING
	desc = "While tieflings enjoy the benefits of at least looking somewhat human, Shadow Tieflings are cursed to a twisted form."

	inherent_traits = list(TRAIT_NO_REFLECTION, TRAIT_ABOMINATION, TRAIT_WEAK_TO_FIRE)
	 // no reflection for creepy shadowlings.  Can't be pretty.  Takes bonus fire damage according to defines



	statsheet_male = /datum/attribute_holder/sheet/job/species/tiefling/shadowtief
	statsheet_female = /datum/attribute_holder/sheet/job/species/tiefling/shadowtief
	skin_tone_wording = "burden"

/datum/species/tieberian/shadowtief/get_skin_list()
	return sortList(list(
		"Banished" = "2F2F38",
		"Verboten" = "1C1C27",
		"Anathema" = "131313",
	))

/datum/species/tieberian/shadowtief/get_hairc_list()
	var/static/list/hair_colors = sortList(list(
		"black - oil" = "181a1d",
		"black - cave" = "201616",
		"black - rogue" = "2b201b",
		"black - midnight" = "1d1b2b",
		"black - wine-dark" = "210e0e",
		"black - ebb" = "151515",
		"black - flow" = "0b141d",
	))

	return hair_colors

/datum/species/tieberian/shadowtief/preference_accessible(datum/preferences/prefs)
	. = ..()
	if(!.)
		return

	if(!prefs?.parent)
		return FALSE

	return prefs.parent.has_triumph_buy(TRIUMPH_BUY_SHADOW_TIEFLING)

