variable "server_id" {
  type = string
  description = "DiscordサーバーのID"
}

variable "category_channel_id" {
  type = string
  description = "カテゴリーチャンネルのID"
  default = null
}

variable "text_channel_name" {
  type = string
  description = "テキストチャンネル名"
}
