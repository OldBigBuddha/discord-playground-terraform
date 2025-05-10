data discord_permission administrator {
    administrator = "allow"
}

resource discord_role administrator {
    name = "Admin"
    server_id = var.server_id
    permissions = data.discord_permission.administrator.allow_bits
    position = 0
}

resource "discord_member_roles" "admin_user" {
  user_id = var.user_id
  server_id = var.server_id

  role {
    role_id = discord_role.administrator.id
  }
}