var NearleyGenerator = require('nearley-generator');
var myGrammar = require('./psych_script_compiled.js');


function generateEpisode(){
	var g = new NearleyGenerator.default(myGrammar);

	var psych_episode_state_lists = ["characters","things"];

	// murder scene, victim significant other / next of kin
	// current chief, is henry working, is psych hired
	// are shawn and juliet dating
	// is gus against the case

	var psych_episode_state = {
		characters: [{tag:'@VICTIM@'
					, title:'Victim Name'
					, value: g.generate('random_name', .9)
				}
				,{tag:'@SUSPECT@'
					, title:'Real Suspect Name'
					, value: g.generate('random_name', .9)
				}
				,{tag:'@SUSPECT2@'
					, title:'First Wrong Suspect Name'
					, value: g.generate('random_name', .9)
				}
				,{tag:'@SUSPECT3@'
					, title:'2nd Wrong Suspect Name'
					, value: g.generate('random_name', .9)
				}
			],
		things: [
			{tag: '@MURDER_WEAPON@'
				, title: 'Murder Weapon'
				, value: g.generate('weapon', .9)
			},
			{tag: '@CRIME_SCENE@'
				, title: 'Crime Scene'
				, value: g.generate('scene_setting', .9)
			}
		]
	};

	var txt = g.generate('main', .9);

	for (var i = psych_episode_state_lists.length - 1; i >= 0; i--) {
		var state_list = psych_episode_state[psych_episode_state_lists[i]];
		for (var j = state_list.length - 1; j >= 0; j--) {
			var state_setting = state_list[j];
			txt = txt.split(state_setting.tag).join(state_setting.value);
			console.log("Set " + state_setting.title + " set to " + state_setting.value);
		}
	}

	return txt;
}

console.log(generateEpisode());