locals {
  server_name = "OJILab Playground"
  user_id = "256659591201423382"
  region = "japan"
  text_channel_name = "general"
  
  // カテゴリーと対応するテキストチャンネルをマップとして定義
  category_config = {
    lab = ["remind"]
  }
}
