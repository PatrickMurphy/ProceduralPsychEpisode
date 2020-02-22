var fs = require('fs');
var words = require('./words.json');

for (var i = words.length - 1; i >= 0; i--) {
	var word_data = words[i];
	if(word_data.syllable <= 4){
		for (var j = word_data.partOfSpeech.length - 1; j >= 0; j--) {
			if(Math.random() >= 0.85){
				fs.appendFileSync(word_data.partOfSpeech[j]+'.ne', "\n"+' | "' + word_data.word + '"');
			}
		}
	}
}

