resource discord_category_channel category {
  for_each = var.categories
  name     = each.key
  server_id = var.server_id
  position = 0
}

resource discord_text_channel text_channels {
  for_each = {
    for pair in flatten([
      for category_name, channel_names in var.categories : [
        for index, channel_name in channel_names : {
          key           = "${category_name}-${channel_name}"
          category_name = category_name
          channel_name  = channel_name
          position      = index
        }
      ]
    ]) : pair.key => pair
  }
  
  name     = each.value.channel_name
  server_id = var.server_id
  position = each.value.position
  category = discord_category_channel.category[each.value.category_name].id
}
