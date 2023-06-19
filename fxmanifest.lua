----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

fx_version 'adamant'

game 'gta5'

author 'case#1993'

description 'BOII | Development - Hunting Script'

version '1.1.2'

lua54 'yes'

shared_scripts {
    'shared/*',
}

client_scripts{
    'client/**/*',
}

server_scripts{
    'server/*',
}
escrow_ignore{
	'client/menus/*',
	'client/hunting_c.lua',
	'server/hunting_s.lua',
	'client/spawnmoreanimals.lua',
	'shared/*'
}

dependency '/assetpacks'