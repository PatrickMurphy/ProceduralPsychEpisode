# Procedural Psych Episode Script

Script to generate a random episode of the hilarious but formulaic show https://en.wikipedia.org/wiki/Psych

Try it out: https://patrickmurphy.github.io/ProceduralPsychEpisode/


## Technology Used

 - Nearley https://nearley.js.org/docs/
 - Node https://nodejs.org/
 - NPM: nearley-generator, gulp, shelljs, browserify

 - psych_script.ne 			-- a custom Nearley Grammar written to generate Psych Episodes (WIP)
	 - psych_characters.ne 	-- describes character names etc
	 - psych_speech.ne 		-- supports the basics of dialogue so far
	 - psych_settings.ne 	-- scenes and locations
	 - psych_utils.ne 		-- utilities

## How to Build / Run
  Complie the nearly grammer to JS, then run the Psych Generate Script.

		nearleyc .\psych_script.ne -o .\psych_script_compiled.js

		node .\psych_generate.js


## How you can help
Take a look at what I have so far, nearley is pretty straight forward, you could easily create a pull request that just adds some values to a list like

    gus_phrase -> "phrase 1" | "phrase 2"
in psych_speech.ne and easily add "I want some pancakes. Who wants pancakes? Whipped butter, maple syrup-- what?!" to the list like this

    gus_phrase -> "phrase 1" | "I want some pancakes. Who wants pancakes? Whipped butter, maple syrup-- what?!" | "phrase 2"

 ## Example Output
 
		Set Murder Weapon set to knife
		Set 2nd Wrong Suspect Name set to Kate
		Set First Wrong Suspect Name set to John
		Set Real Suspect Name set to Sam
		Set Victim Name set to Jared




		[Setting: Friday 05:54 AM 1974 Henry's House]
		[Young Shawn is eating with Younger Henry]
		Young Shawn: Dad, I don't want to practice my detective skills
		Younger Henry: Shawn, you are never going to learn to be a man unless you stop acting like a kid and practice.

		[Setting: Monday 04:15 PM 2020 Sewer Pipes]
		[Jared was killed by Sam using knife at @CRIME_SCENE@]

		[A potential new client walks into the Psych Office]
		New Client: Hello, my name is Abby. I am worried about my daughter.
		Can you help solve this?

		Hello, I am Shawn Spencer, I am a Recording Artist, and this is my partner "Radio Star". (refering to Gus)
		Burton Guster: Hello, No pictures please.
		Shawn Spencer: I hear you are the daughter of Jared when did you last see them?
		John: I saw Jared 4 days ago. I can't believe this.
		Shawn remembers a propagable computer while readdressesing.
		 He noices that the knife was owned by Sam
		Shawn Spencer: ah I see... and...  you have no hard feelings toward Jared?
		John: of course not! I loved Jared!
		Shawn Spencer: Sorry had to ask, we will be leaving now.
		Burton Guster: (entering Blueberry) Shawn, John totataly did it.
		Shawn Spencer: You know that's right.

		[Setting: Saturday 11:56 PM 2020 Jared's Apartment]
		Shawn Spencer: Shawn goes limp
		Gus Burton: Are you trying to tell me you went skydiving with a rabbi?
		Shawn Spencer: Doodles are the windows to the soul
		Gus Burton: Are you trying to tell me you went skydiving with a rabbi?

		Shawn smells a eutectic shirt while premissesing.
		 He noices that the knife was owned by Sam

		[Setting: Saturday 01:45 PM 2020 Neighborhood Park]
		Shawn Spencer: You have the wrong suspect Chief Vick

		final realization: Shawn sees a violated drawer while paroleesing.
		 He noices that the knife was owned by Sam

		capture guilty party at Landfill: Sam