# case discovery sub function that describes a new client walking into the Psych Office
	# in the future other ways they could be hired, more complex conversation
cd_psych -> "[A potential new client walks into the Psych Office]" line_sep1
	"New Client: Hello, my name is @SUSPECT2@. "
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
				("with Juliet" (" " | " both off-duty" ) 
					| "alone" 
					| "off-duty") 
				" "
				("before Shawn and Gus." line_sep1 "Carlton Lassiter: I better alert Chief Vick of this." line_sep1 cd_vick  
					| ( "after Shawn and Gus." line_sep1 
					"Carlton Lassiter: " lassie_to_shawn_phrase line_sep1
					"Spawn Spencer: " shawn_to_lassie line_sep1
					cd_investigate_alone_yell))

# use yell
cd_investigate_alone_yell -> 	"Shawn Spencer: All right, we won't go investigate the murder. (loudly)" line_sep1
								cd_investigate_alone

# investigate_setting is in psych_settings.ne
cd_investigate_alone -> "Shawn Spencer: (Quietly) Gus, lets go investigate " investigate_setting line_sep1
				"Burton Guster: I'll meet you at the Blueberry in " minute " minutes"
