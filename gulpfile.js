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

  	cb();
}

exports.default = defaultTask