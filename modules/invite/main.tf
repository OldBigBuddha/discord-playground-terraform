resource "discord_invite" "invite" {
  channel_id = var.text_channel_id
  max_age    = 3600
  max_uses   = 1
}
