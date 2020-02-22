


dialogue -> meta_setting shawn_gus_dialogue line_sep1 shawn_gus_dialogue

shawn_gus_dialogue -> shawn_dialogue_line line_sep1 gus_dialogue_line

shawn_dialogue_line -> "Shawn Spencer: " shawn_catchphrase

gus_dialogue_line -> "Gus Burton: " (gus_catchphrase | gus_phrase)

gus_phrase -> "Shawn, you know I don't do dead bodies." 
	| "The Blueberry has plenty of horsepower." 
	| gus_interests " is a serious art"
	| "The super smeller is telling me something."
	| "How do you just eat when there's a dead guy laying there?"
	| "[sarcastically] Nobody! Excellent! Call the chief at home, tell 'em the crime is solved. Because apparently, we just imagined the whole thing!"

gus_catchphrase -> "C'mon Son" 
	| "You know that's right" 
	| "Have you heard about Pluto? That's messed up, right?" 
	| "Suck it!"
	| "I just got a lap dance from Patrick Swayze!"
	| "Are you trying to tell me you went skydiving with a rabbi?"

gus_interests -> "Tap Dancing"
	| "Spelling Bee" 
	| "Safe Cracking" 
	| "Ghost Hunting" 
	| "Pharmaceutical sales" 
	| "Harry Potter Cosplay"

shawn_names_for_gus -> "Radio Star"
	| "Gee Buttersnaps"
	| "Ovaltine Jenkins"
	| "Lavender Gumes"
	| "Magic Head" 
	| "Black and Tan"
	| "Comma to the top"
	| "Control, alt, delete"
	| "John Jacob Jingleheimer Schmidt"
	| "Largeblackman"
	| "MC. Clap Yo Handz"
	| "Blue Ivy Carter"
	| "Don't ever call me Homeskillet"
	| "Big Baby Burton"
	| "Slicks"
	| "Guster Sillypants Jackson"
	| "Dr. Mc-[makes Click Clack Popping noises with mouth]-tock"

shawn_catchphrase -> "Muheee." 
	| "Shawn goes limp" 
	| "...QUE?"
	| char_name " is a lying liar from Liarsburg!"
	| "The psychic forces said so." 
	| "Hey Jules." 
	| "Let's crash a " ("funeral" | "wedding" | "bar mitzvah" | "wake" | "strip club grand opening") "."
	| "Lassie, it was murder." 
	| "My Dad said I could borrow his boat." 
	| "No wait, I'll tell Lassie and Jules back at the station with a little bit of this (puts fingers to temple)."
	| "I told " char_reoccurring " I sensed it psychically and now we need to prove it Gus!"
	| "I got the information because, I am psychic."
	| "Anna Banana would like to hear Venus by Bananarama."
	| "Gus, a boy cat wouldn't serve my purposes nearly as well."
	| "There is a witness. There's a cat. I want to talk to that cat."
	| "Gus, don't be a giant snapping turtle."
	| "Well, look who's Mr. On Board and acting like a whacked wombat!"
	| "That thing is brighter than the sun! I think you just gave me glaucoma!"
	| "Doodles are the windows to the soul"
	| "Are you a fan of delicious flavor?"
	| "Jules is an enigma wrapped in a little blonde riddle."
	| "Sweet black licorice!"
	| "I'd say that's pretty ridiculous. Not as ridiculous as Denise Richards playing a nuclear physicist named Christmas Jones in a Bond movie, but still."

shawn_to_lassie -> "Lassie, it was murder."
	| "There is a witness. There's a " ("cat. I want to talk to that cat." | "dog. I want to talk to that dog." | "bird. I want to talk to that bird.")
	| "You are wrong lassie, something bigger is happening here."
	| "Lassie, we weren't investigating, Gus and I are just scouting a location for our next " ("film" | "comic book" | "music video" | "Frisbee Golf tournamant")

lassie_to_shawn_phrase -> "Spencer, if I see you anywhere near this case, I'll throw every book I can find at you."
	| "God Dammit Spencer, get out of here"
	| "I thought I told you to stay away from this case Spencer!"
	| "I'm gonna kill you, Spencer."
	| "Why are you always here first?"
	| "Spencer, this case is open and shut no need for you here."

lassie_phrase -> lassie_to_shawn_phrase	| "A dead body changes things." 