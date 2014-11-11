#!/usr/bin/env node
var fs = require('fs');
var child_process = require('child_process');

var projectDir = process.cwd();
var projNodeDir = projectDir + '/node_modules';
var tmpNodeDir = '/tmp/' + projectDir.split('/').join('_');
console.log("Making mount-bind node_modules director here: " + projectDir);

if (!fs.existsSync(projNodeDir)) {
  fs.mkdirSync(projNodeDir);
}
if (!fs.existsSync(tmpNodeDir)) {
	fs.mkdirSync(tmpNodeDir);
}

var command = 'mount -o bind ' + tmpNodeDir + ' ' + projNodeDir;
console.log('#####################################################################');
console.log('########    To finish setting up, please run this command    ########');
console.log('#####################################################################');
console.log('');
console.log(' sudo ' + command);
console.log('');
console.log('#####################################################################');

/*
// Running this as ROOT is probably a stupid idea...
child_process.exec(command, function (error, stdout, stderr) {
	console.log(stdout);
	console.log(stderr);
	console.log(error);
});
*/
