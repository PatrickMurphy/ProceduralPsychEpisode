# Procedural Psych Episode Script

Script to generate a random episode of the hilarious but formulaic show https://en.wikipedia.org/wiki/Psych

Try it out: https://patrickmurphy.github.io/ProceduralPsychEpisode/


## Technology Used

 - Nearley https://nearley.js.org/docs/
 - Node https://nodejs.org/
 - NPM: nearley-generator, gulp, shelljs, browserify

## Basic Code Structure
 - ./docs/ 						-- documentation and some working files
 - ./grammar/
 	- psych_script.ne 			-- a custom Nearley Grammar written to generate Psych Episodes (WIP)
	- psych_characters.ne 		-- describes character names etc
	- psych_speech.ne 			-- supports the basics of dialogue so far
	- psych_settings.ne 		-- scenes and locations
	- psych_utils.ne 			-- utilities

 - ./tools/ 					-- Node script to choose words to put some into nearly files by part of speech

 - ./psych_generate.js 			-- Node Script to replace placeholders & returns or outputs the generated text
 - ./psych_generate_browser.js 	-- BrowserifyJS version of the above file for web use
 - ./gulpfile.js 				-- GulpJS Nearley build automation (nearleyc) & railroad diagrams (nearley-railroad)

## How to Build / Run
  Complie the nearly grammer to JS, then run the Psych Generate Script.
   if you have gulp-cli run gulp
		gulp

   Otherwise:

		nearleyc .\grammar\psych_script.ne -o .\psych_script_compiled.js

   Run:
		node .\psych_generate.js

## How you can help
Take a look at what I have so far, nearley is pretty straight forward, you could easily create a pull request that just adds some values to a list like

    	gus_phrase -> "phrase 1" | "phrase 2"
in psych_speech.ne and easily add "I want some pancakes. Who wants pancakes? Whipped butter, maple syrup-- what?!" to the list like this

    	gus_phrase -> "phrase 1" | "I want some pancakes. Who wants pancakes? Whipped butter, maple syrup-- what?!" | "phrase 2"


## Example Output
 
		[Setting: Tuesday 03:15 PM 1978 Beach]
		[Young Shawn and Young Gus are curse with Younger Henry]
		Young Shawn: Dad, I don't want to practice my detective skills.
		Younger Henry: Shawn, you are never going to learn to be a man unless you stop acting like a kid and practice.

		[Setting: Thursday 09:05 PM 2020 Sewer Pipes]
		[Abby Johnson was killed by Ricky Jackson using poison at Sewer Pipes]

		Chief Vick assigns the case to Jules and Lassie.
		Chief Vick wants to hire Shawn and Gus for the case.

		[Setting: Wednesday 06:00 PM2020 Sewer Pipes]
		Hello, I am Shawn Spencer, I am a Lead Recording Artist for the SBPD, and this is my partner "Magic Head". (refering to Gus)
		Burton Guster: Hello nice to meet you.
		Shawn Spencer: I hear you are the boss of Abby Johnson when did you last see them?
		Abby Tyler: I saw Abby Johnson 02 days ago. I can't believe this.
		Shawn hears a propagable poison while handfastsing.
		 He notices that thea glutenous floor is owned by Abby Tyler
		Shawn Spencer: ah I see... and...  you have no hard feelings toward Abby Johnson?
		Abby Tyler: of course not! I loved Abby Johnson!
		Shawn Spencer: Sorry had to ask, we will be leaving now.
		Burton Guster: (entering Blueberry) Shawn, Abby Tyler totally did it.
		Shawn Spencer: You know that's right.

		[Setting: Saturday 01:56 AM 2020 Henry's House]
		Shawn Spencer: I'd say that's pretty ridiculous. Not as ridiculous as Denise Richards playing a nuclear physicist named Christmas Jones in a Bond movie, but still.
		Gus Burton: The Blueberry has plenty of horsepower.
		Shawn Spencer: Sweet black licorice!
		Gus Burton: [sarcastically] Nobody! Excellent! Call the chief at home, tell 'em the crime is solved. Because apparently, we just imagined the whole thing!

		Shawn feels a theralite drawer while requitesing.
		 He notices that thea expanding rope is owned by Miquel Smith

		[Setting: Thursday 08:46 AM2020 Henry's House]
		Shawn Spencer: Dad, you know back in the day when you had that one case just like the one I am working now, how did you solve it?
		Henry Spencer: Shawn, you know I don't want to be any part of your psychic mumbo jumbo.
		Shawn Spencer: I got the information because, I am psychic.
		Henry Spencer: Whatever, that case the weapon used was poison...
		Shawn Spencer: See Dad, my case too.
		Henry Spencer: Anyway, turns out the body was moved to the Sewer Pipes...
		final realization: Shawn feels a desiccative knife while deadening.
		 He notices that the poison was owned by Ricky Jackson

		Turns out Miquel Smith was actually just randomly connected, it was Ricky Jackson all along.

		Henery Spencer captures Ricky Jackson at Beach
		Ricky Jackson: You'll never take me alive!
		Shawn Spencer: Henery Spencer take him alive.
		Henery Spencer: Now we've got you, Ricky Jackson!