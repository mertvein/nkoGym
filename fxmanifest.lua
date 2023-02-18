fx_version 'cerulean'
game 'gta5'

author 'github.com/nkowashere'
discord 'discord.gg/nko'
description 'GYM is a script made by nkò that you can do fitness.'
version '1.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'cfg.lua'
}

client_scripts {
    'sh_client.lua'
}

server_scripts {
    'sh_server.lua'
}

lua54 'yes'