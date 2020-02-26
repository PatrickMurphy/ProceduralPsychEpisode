const { series } = require('gulp');
var shell = require('shelljs');

function compile(cb) {
	if (shell.exec('nearleyc .\\grammar\\psych_script.ne -o .\\psych_script_compiled.js').code !== 0) {
		shell.echo('Error: Browserify Command failed');
		shell.exit(1);
	}
  	cb();
}

function browserify_generate_js(cb) {
	if (shell.exec('browserify .\\psych_generate.js -o .\\psych_generate_browser.js').code !== 0) {
		shell.echo('Error: Browserify Command failed');
		shell.exit(1);
	}
  	cb();
}

function generate_railroad_diagrams(cb) {
	if (shell.exec('nearley-railroad .\\grammar\\psych_script.ne -o .\\docs\\psych_railroad.html').code !== 0) {
		shell.echo('Error: railroad psych_script Command failed');
		shell.exit(1);
	}

	if (shell.exec('nearley-railroad .\\grammar\\psych_case_discovery.ne -o .\\docs\\psych_case_discovery_railroad.html').code !== 0) {
		shell.echo('Error: railroad psych_script Command failed');
		shell.exit(1);
	}

	if (shell.exec('nearley-railroad .\\grammar\\psych_speech.ne -o .\\docs\\psych_speech_railroad.html').code !== 0) {
		shell.echo('Error: railroad psych_speech Command failed');
		shell.exit(1);
	}

	if (shell.exec('nearley-railroad .\\grammar\\psych_settings.ne -o .\\docs\\psych_settings_railroad.html').code !== 0) {
		shell.echo('Error: railroad psych_settings Command failed');
		shell.exit(1);
	}
	
	if (shell.exec('nearley-railroad .\\grammar\\psych_characters.ne -o .\\docs\\psych_characters_railroad.html').code !== 0) {
		shell.echo('Error: railroad psych_characters Command failed');
		shell.exit(1);
	}

  	cb();
}

function run(cb) {
	shell.exec('node ./psych_generate.js', function(code, stdout, stderr) {
		if(code !== 0){
			console.log('Program stderr:', stderr);
		}else{
			console.log('Program output:', stdout);
		}
	});
	cb();
}

exports.default = series(compile, browserify_generate_js);
exports.build = series(compile, browserify_generate_js, generate_railroad_diagrams);
exports.compile = compile;
exports.run = run;
exports.browserify = browserify_generate_js;
exports.railroad = generate_railroad_diagrams;