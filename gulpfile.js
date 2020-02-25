var shell = require('shelljs');

function defaultTask(cb) {
	if (shell.exec('nearleyc .\\psych_script.ne -o .\\psych_script_compiled.js').code !== 0) {
		shell.echo('Error: Browserify Command failed');
		shell.exit(1);
	}

	if (shell.exec('browserify .\\psych_generate.js -o .\\psych_generate_browser.js').code !== 0) {
		shell.echo('Error: Browserify Command failed');
		shell.exit(1);
	}
	
	if (shell.exec('nearley-railroad .\\psych_script.ne -o .\\docs\\psych_railroad.html').code !== 0) {
		shell.echo('Error: railroad Command failed');
		shell.exit(1);
	}

	if (shell.exec('nearley-railroad .\\psych_speech.ne -o .\\docs\\psych_speech_railroad.html').code !== 0) {
		shell.echo('Error: railroad Command failed');
		shell.exit(1);
	}

	if (shell.exec('nearley-railroad .\\psych_settings.ne -o .\\docs\\psych_settings_railroad.html').code !== 0) {
		shell.echo('Error: railroad Command failed');
		shell.exit(1);
	}
	
	if (shell.exec('nearley-railroad .\\psych_characters.ne -o .\\docs\\psych_characters_railroad.html').code !== 0) {
		shell.echo('Error: railroad Command failed');
		shell.exit(1);
	}

  	cb();
}

exports.default = defaultTask