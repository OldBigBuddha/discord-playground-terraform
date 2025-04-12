locals {
  server_name = "OJILab Playground"
  region = "japan"
  text_channel_name = "general"
  
  // カテゴリーと対応するテキストチャンネルをマップとして定義
  category_config = {
    lab = ["remind"]
  }
}
