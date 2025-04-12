module "server"{
    source = "../../modules/server"

    server_name = local.server_name
    server_resion = local.region
}

module "standalone_text_channel" {
    source = "../../modules/textchannel"
    
    server_id = module.server.server_id
    text_channel_name = local.text_channel_name
}

module "category"{
    source = "../../modules/category"

    server_id = module.server.server_id
    categories = local.category_config
}

module "invite"{
    source = "../../modules/invite"

    text_channel_id = module.standalone_text_channel.text_channel_id
}
