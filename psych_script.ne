# created dictionary of words
@include "adjectives.ne"
@include "verb.ne"

# part of psych specific
@include "psych_characters.ne"
@include "psych_speech.ne"
@include "psych_settings.ne"
@include "psych_utils.ne"

# main procedural format
main -> plot_throw_back line_sep
		plot_setup line_sep 
		case_discovery line_sep 
		plot_development line_sep 
		shawn_focus1 line_sep 
			( henry_help_shawn line_sep
			wrong_suspect line_sep 
		| 
			wrong_suspect line_sep 
			shawn_focus_final line_sep )
		capture_suspect

# the flashback scene at the start of an episode
# 	normally something about what henry is teaching him is used to solve the crime
#	right now just a skeleton and not very random
plot_throw_back -> meta_setting_throwback 
	"[Young Shawn" (" is " | " and Young Gus are ") verb " with Younger Henry]" line_sep1
	"Young Shawn: " young_shawn_phrase line_sep1
	"Younger Henry: " younger_henry_phrase

# the scene that shows how the victim is killed/kidnapped/found dead
#	right now just stating who killed who using what to be replaced later
plot_setup -> meta_setting_scene "[@VICTIM@ was killed by @SUSPECT@ using @MURDER_WEAPON@ at @CRIME_SCENE@]"

# the scene where somehow the case is brought to the attention of Shawn, Gus and the SBPD
#	each cd_function is a different set of rules based on who discovers the case originally
# 	need to add Jules and Henry and maybe Woody, Buzz?
case_discovery -> cd_shawn | cd_gus | cd_vick | cd_lassie | cd_psych

# case discovery sub function that describes a new client walking into the Psych Office
	# in the future other ways they could be hired, more complex conversation
cd_psych -> "[A potential new client walks into the Psych Office]" line_sep1
	"New Client: Hello, my name is " random_name ". "
	"I " ( "am worried about my" | "think someone may have killed my" | "would like you to find my missing" ) " "
	relationship "." line_sep1 "Can you help solve this?"

# case case_discovery sub function for shawn
cd_shawn -> "Shawn discovers a new case " 
	("on the news."
		| "in the newspaper."
		| "while eating at a resturant."
		| "after recieving a cryptic " ("letter" | "email" | "note" | "text message" | "invitation") 
		| "after overhearing " char_main " and " char_reoccurring " discussing a \"solved\" death and realizes it was murder not " cd_shawn_theory)

# theories that the SBPD might have had before shawn figured out it was murder, used directly above
cd_shawn_theory -> "suicide." 
				| "an accident." 
				| "natural causes." 
				| "commited by the current suspect."

# case_discovery sub function for gus
cd_gus -> "Gus has a case he wants to investigate because " cd_gus_reason

# reasons gus might want to take a case, a few reasons, or any of gus' interests defined later
cd_gus_reason -> "Blackapella is in town." 
	| "Gus wants to help " ("the " adjective " Girl involved in the case." | "a damsel in distress.") 
	| "Gus needs money because Shawn spent it all."
	| "Gus has family in town, and they think he is the psychic detective."
	| "It has to do with " gus_interests "."

# case_discovery sub function for chief vick,
	# she gives the case to Jules and Lassie, then either hires shawn or not
cd_vick -> "Chief Vick assigns the case to Jules and Lassie." 
	line_sep1
	cd_vick_hire

# if hired state that, otherwise no, and respond
cd_vick_hire -> ("Chief Vick wants to hire Shawn and Gus for the case." 
					| "Shawn and Gus overhear and " cd_vick_not_hired)

# if not hired, either barge in or just go investigate 
cd_vick_not_hired -> 	("barge in and demand to be on the case" line_sep1 
						"Chief Vick: Shawn, we " cd_vick_reasons " case." line_sep1
						cd_investigate_alone_yell)
					| "decide to investigate on their own." line_sep1 cd_investigate_alone

# reasons vick won't hire psych
cd_vick_reasons -> ("don't need your assistance on " ("this" | "every") 
					| "cannot afford to hire you every" 
					| "have nearly solved this")

# case_discovery sub function lassie, either he shows up to the scene before or after shawn re using cd_vick
cd_lassie -> "Lassie shows up to the murder scene " 
				("with Julie" ("t" | "t both off-duty" ) 
					| "alone" 
					| "off-duty") 
				" "
				("before Shawn and Gus." line_sep1 "Carlton Lassiter: I better alert Chief Vick of this." line_sep1 cd_vick  
					| ( "after Shawn and Gus." line_sep1 
					"Carlton Lassiter: " lassie_to_shawn_phrase line_sep1
					"Spawn Spencer: " shawn_to_lassie line_sep1
					cd_investigate_alone))

# use yell
cd_investigate_alone_yell -> 	"Shawn Spencer: All right, we won't go investigate the murder. (loudly)" line_sep1
								cd_investigate_alone

# investigate_setting is in psych_settings.ne
cd_investigate_alone -> "Shawn Spencer: (Quietly) Gus, lets go investigate " investigate_setting line_sep1
				"Burton Guster: I'll meet you at the Blueberry in " minute " minutes"


# intro first whitness is the first person shawn questions
intro_first_witness -> "Hello, I am Shawn Spencer, I am a" 
	( " Head " 
		| " Lead " 
		| " Touring " 
		| " world-famous " 
		| " ") 
	("psychic detective" 
		| "radiation tester" 
		| "Shadow Puppet Master" 
		| "Rocket Scientist"
		| "Recording Artist"
		| "Full-time boat owner")
	( "," | " for the SBPD," | " by trade,") 
	" and this is my partner \"" shawn_names_for_gus "\". (refering to Gus)" line_sep1
	"Burton Guster: Hello" ("." | ", No pictures please." | " nice to meet you.") line_sep1
	"Shawn Spencer: I hear you are the " relationship " of @VICTIM@ when did you last see them?" line_sep1
	"@SUSPECT2@: I saw @VICTIM@ 4 days ago. I can't believe this." line_sep1
	shawn_focus2 line_sep1
	"Shawn Spencer: ah I see... and...  you have no hard feelings toward @VICTIM@?" line_sep1
	"@SUSPECT2@: of course not! I loved @VICTIM@!" line_sep1
	"Shawn Spencer: Sorry had to ask, we will be leaving now." line_sep1
	"Burton Guster: (entering Blueberry) Shawn, @SUSPECT2@ totally did it." line_sep1
	"Shawn Spencer: You know that's right."

# this should be the framework for the center of the plot
#	currently just talk to the first witness, test basic shawn gus dialogue
plot_development -> intro_first_witness line_sep dialogue

# OPTIONAL: Henry solves case for shawn.
henry_help_shawn -> meta_setting_year["2020","Henry's House"] "Shawn Spencer: Dad, you know back in the day when you had that one case just like the one I am working now, how did you solve it?" line_sep1
	"Henry Spencer: Shawn, you know I don't want to be any part of your psychic mumbo jumbo." line_sep1
	"Shawn Spencer: " shawn_catchphrase line_sep1
	"Henry Spencer: Whatever, that case the weapon used was @MURDER_WEAPON@..." line_sep1
	"Shawn Spencer: See Dad, my case too." line_sep1
	"Henry Spencer: Anyway, turns out the body was moved to the @CRIME_SCENE@..." line_sep1
	shawn_focus_final


# SCENE where someone realizes that they have the wrong suspect currently
wrong_suspect -> meta_setting "Shawn Spencer: You have the wrong suspect " char_main 
	| "Turns out @SUSPECT2@ was actually just randomly connected, it was @SUSPECT@ all along."


# this is supposed to be the part of a scene that is where shawn actually notices something
#	needs quite a bit of work
shawn_focus2 -> shawn_focus_sub observable " is owned by @SUSPECT2@"
shawn_focus1 -> shawn_focus_sub observable " is owned by @SUSPECT1@"

# helper function for focus to change it some to use @SUSPECT@ etc
shawn_focus_final -> "final realization: " shawn_focus_sub "@MURDER_WEAPON@ was owned by @SUSPECT@"

shawn_focus_sub -> "Shawn " perception " " observable " while " verb "ing. " 
					line_sep1 " He notices that the "

# SCENE needed for capturing the actual guilty suspect
capture_suspect -> char_main " captures @SUSPECT@ at " scene_setting line_sep1
	"@SUSPECT@: You'll never take me alive!" line_sep1 
	"Shawn Spencer: Gus take him alive."

