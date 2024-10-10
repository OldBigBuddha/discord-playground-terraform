module "server"{
    source = "../../modules/server"

    server_name = local.server_name
    server_resion = local.region
}

module "category"{
    source = "../../modules/category"

    channel_id = module.server.server_id
    category_name = local.category_name
}

module "text_channel"{
    source = "../../modules/textchannel"

    server_id = module.server.server_id
    category_channel_id = module.category.default_id
    text_channel_name = local.text_channel_name
}

module "invite"{
    source = "../../modules/invite"

    text_channel_id = module.text_channel.text_channel_id
}
