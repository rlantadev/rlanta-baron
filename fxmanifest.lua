fx_version 'cerulean'
game 'gta5'

description 'rlanta-baron'
version '1.0.0'

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/main.lua'
}

client_script 'client/main.lua'

lua54 'yes'

dependency 'qb-core'