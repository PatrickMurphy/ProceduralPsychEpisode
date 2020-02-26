var shell = require('shelljs');

function defaultTask(cb) {
	if (shell.exec('nearleyc .\\grammar\\psych_script.ne -o .\\psych_script_compiled.js').code !== 0) {
		shell.echo('Error: Browserify Command failed');
		shell.exit(1);
	}

	if (shell.exec('browserify .\\psych_generate.js -o .\\psych_generate_browser.js').code !== 0) {
		shell.echo('Error: Browserify Command failed');
		shell.exit(1);
	}
	
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

exports.default = defaultTask