resource "discord_server" "hoge_server" {
  name = "test terraform server"
  region = "japan"
}

resource discord_category_channel chatting {
  name = "Chatting"
  server_id = discord_server.hoge_server.id
  position = 0
}

resource discord_text_channel general {
  name = "general"
  server_id = discord_server.hoge_server.id
  position = 0
  category = discord_category_channel.chatting.id
}

resource "discord_invite" "invite" {
  channel_id = discord_text_channel.general.id
  max_age    = 3600
  max_uses   = 1
}

output "invite_info" {
    value = discord_invite.invite.id
}
