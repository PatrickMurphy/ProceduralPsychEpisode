# created dictionary of words
@include "adjectives.ne"
@include "verb.ne"
@include "adverb.ne"

# part of psych specific
@include "psych_characters.ne"
@include "psych_speech.ne"
@include "psych_settings.ne"
@include "psych_case_discovery.ne"
@include "psych_utils.ne"

# main procedural format
main -> 				plot_throw_back 		line_sep
						plot_setup 				line_sep 
						case_discovery 			 
						plot_development 		line_sep 
						shawn_focus1 			line_sep 
						main_2					line_sep
						capture_suspect

# shawn gets help from shawn
# or wrong suspect then final realization
main_2 -> 				henry_help_shawn 		line_sep
						wrong_suspect 			line_sep 
						|	wrong_suspect 		line_sep 
							shawn_focus_final

# the flashback scene at the start of an episode
# 	normally something about what henry is teaching him is used to solve the crime
#	right now just a skeleton and not very random
plot_throw_back -> 		meta_setting_throwback 
						"[Young Shawn" (" is " | " and Young Gus are ") verb " with Younger Henry]" line_sep1
						"Young Shawn: " young_shawn_phrase line_sep1
						"Younger Henry: " younger_henry_phrase

# the scene that shows how the victim is killed/kidnapped/found dead
#	right now just stating who killed who using what to be replaced later
plot_setup -> 			meta_setting_scene "[@VICTIM@ was killed by @SUSPECT@ using @MURDER_WEAPON@ at @CRIME_SCENE@]"

# the scene where somehow the case is brought to the attention of Shawn, Gus and the SBPD
#	each cd_function is a different set of rules based on who discovers the case originally
# 	need to add Jules and Henry and maybe Woody, Buzz?
#	sub functions in psych_case_discovery.ne
case_discovery -> 		cd_shawn | cd_gus | cd_vick | cd_lassie | cd_psych

# intro first whitness is the first person shawn questions
intro_first_witness -> 	intro_first_witness1
						shawn_focus2 line_sep1
						intro_first_witness2

intro_first_witness1 -> "Hello, I am Shawn Spencer, I am a" job_prefix job_title job_postfix
						" and this is my partner \"" shawn_names_for_gus "\". (refering to Gus)" line_sep1
						"Burton Guster: Hello" ("." | ", No pictures please." | " nice to meet you.") line_sep1
						"Shawn Spencer: I hear you are the " relationship " of @VICTIM@ when did you last see them?" line_sep1
						"@SUSPECT2@: I saw @VICTIM@ " hour " days ago. I can't believe this." line_sep1
	
intro_first_witness2 -> "Shawn Spencer: ah I see... and...  you have no hard feelings toward @VICTIM@?" line_sep1
						"@SUSPECT2@: of course not! I loved @VICTIM@!" line_sep1
						"Shawn Spencer: Sorry had to ask, we will be leaving now." line_sep1
						"Burton Guster: (entering Blueberry) Shawn, @SUSPECT2@ totally did it." line_sep1
						"Shawn Spencer: You know that's right."

job_prefix -> 			" Head " 
						| " Lead " 
						| " Touring " 
						| " world-famous " 
						| " "

job_title -> 			"psychic detective" 
						| "radiation tester" 
						| "Shadow Puppet Master" 
						| "Rocket Scientist"
						| "Recording Artist"
						| "Full-time boat owner"

job_postfix -> 			"," 
						| " for the SBPD," 
						| " by trade,"

# this should be the framework for the center of the plot
#	currently just talk to the first witness, test basic shawn gus dialogue
plot_development -> 	intro_first_witness line_sep
						dialogue

# OPTIONAL: Henry solves case for shawn.
henry_help_shawn -> 	meta_setting_year["2020","Henry's House"] "Shawn Spencer: Dad, you know back in the day when you had that one case just like the one I am working now, how did you solve it?" line_sep1
						"Henry Spencer: Shawn, you know I don't want to be any part of your psychic mumbo jumbo." line_sep1
						"Shawn Spencer: " shawn_catchphrase line_sep1
						"Henry Spencer: Whatever, that case the weapon used was @MURDER_WEAPON@..." line_sep1
						"Shawn Spencer: See Dad, my case too." line_sep1
						"Henry Spencer: Anyway, turns out the body was moved to the @CRIME_SCENE@..." line_sep1
						shawn_focus_final


# SCENE where someone realizes that they have the wrong suspect currently
wrong_suspect -> 		meta_setting "Shawn Spencer: You have the wrong suspect " char_main 
						| "Turns out @SUSPECT3@ was actually just randomly connected, it was @SUSPECT@ all along."


# this is supposed to be the part of a scene that is where shawn actually notices something
#	needs quite a bit of work
shawn_focus2 -> 		shawn_focus_sub observable " is owned by @SUSPECT2@"
shawn_focus1 -> 		shawn_focus_sub observable " is owned by @SUSPECT3@"

# helper function for focus to change it some to use @SUSPECT@ etc
shawn_focus_final -> 	"final realization: " shawn_focus_sub " @MURDER_WEAPON@ was owned by @SUSPECT@"

shawn_focus_sub -> 		"Shawn " perception " " observable " while " verb "ing. " 
						line_sep1 " He notices that the"

# SCENE needed for capturing the actual guilty suspect
capture_suspect -> 		"@CAPTURE_CHAR@ captures @SUSPECT@ at " scene_setting line_sep1
						"@SUSPECT@: You'll never take me alive!" line_sep1 
						"Shawn Spencer: @CAPTURE_CHAR@ take him alive." line_sep1
						"@CAPTURE_CHAR@: " capture_phrase

