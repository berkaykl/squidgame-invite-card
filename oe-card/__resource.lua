fx_version 'adamant'
game 'gta5'

ui_page 'html/ui.html'

files {
	'html/ui.html',
	'html/styles.css',
 
	'html/img/*.png',

	'html/scripts.js',

	'html/lib/*.js',
}

client_script 'client.lua'
server_script 'server.lua'

exports {
	'opencard'
}