resource discord_text_channel general {
  name = var.text_channel_name
  server_id = var.server_id
  category = var.category_channel_id != null ? var.category_channel_id : null
  sync_perms_with_category = var.category_channel_id != null ? true : false
}
