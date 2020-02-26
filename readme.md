# Procedural Psych Episode Script

Script to generate a random episode of the hilarious but formulaic show https://en.wikipedia.org/wiki/Psych

Try it out: https://patrickmurphy.github.io/ProceduralPsychEpisode/


## Technology Used

 - Nearley https://nearley.js.org/docs/
 - Node https://nodejs.org/
 - NPM: nearley-generator, gulp, shelljs, browserify

## File Structure
./docs/ 						-- documentation and some working files

./grammar/

- psych_script.ne 			-- a custom Nearley Grammar written to generate Psych Episodes (WIP)
- psych_characters.ne 		-- describes character names etc
- psych_speech.ne 			-- supports the basics of dialogue so far
- psych_settings.ne 		-- scenes and locations
- psych_utils.ne 			-- utilities

./tools/ 						-- Node script to choose words to put some into nearly files by part of speech

./psych_generate.js 			-- Node Script to replace placeholders & returns or outputs the generated text

./psych_generate_browser.js 	-- BrowserifyJS version of the above file for web use

./gulpfile.js 					-- GulpJS Nearley build automation (nearleyc) & railroad diagrams (nearley-railroad)

## How to Build / Run
  If you have gulp-cli run the following command:

		gulp build
		gulp run

   Otherwise build the nearly grammer to JS, then run the Psych Generate Script:

		nearleyc .\grammar\psych_script.ne -o .\psych_script_compiled.js
		node .\psych_generate.js

## Example Output
 
		...
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
		...


## How you can help
Take a look at what I have so far, nearley is pretty straight forward, you could easily create a pull request that just adds some values to a list like

    	gus_phrase -> "phrase 1" | "phrase 2"

in psych_speech.ne and easily add "I want some pancakes. Who wants pancakes? Whipped butter, maple syrup-- what?!" to the list like this

    	gus_phrase -> "phrase 1" | "I want some pancakes. Who wants pancakes? Whipped butter, maple syrup-- what?!" | "phrase 2"

