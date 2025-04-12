variable "server_id" {
  type        = string
  description = "サーバーID"
}

variable "categories" {
  type        = map(list(string))
  description = "カテゴリー名をキー、テキストチャンネル名のリストを値とするマップ"
}
