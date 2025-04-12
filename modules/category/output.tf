output "category_ids" {
    description = "すべてのカテゴリーIDのマップ（キー：カテゴリー名、値：カテゴリーID）"
    value = {
        for name, category in discord_category_channel.category : name => category.id
    }
}
