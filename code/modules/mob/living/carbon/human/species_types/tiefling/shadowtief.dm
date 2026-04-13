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
	desc = "OOOOO so spooky you gonna make her cute?  make sure to make her cute..!"

	inherent_traits = list(TRAIT_NO_REFLECTION, TRAIT_ABOMINATION, TRAIT_ASTRATA_CURSE)
	 // no reflection for creepy shadowlings.  Can't be pretty.  Can't get healed by divine sources.



	statsheet_male = /datum/attribute_holder/sheet/job/species/tiefling/shadowtief
	statsheet_female = /datum/attribute_holder/sheet/job/species/tiefling/shadowtief


/datum/species/tieberian/shadowtief/get_skin_list()
	return sortList(list(
		"Banished" = "2F2F38",
		"Verboten" = "1C1C27",
		"Anathema" = "131313",
	))


/datum/species/tieberian/shadowtief/preference_accessible(datum/preferences/prefs)
	. = ..()
	if(!.)
		return

	if(!prefs?.parent)
		return FALSE

	return prefs.parent.has_triumph_buy(TRIUMPH_BUY_SHADOW_TIEFLING)
