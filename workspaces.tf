locals {
  user_names = csvdecode(file("./workspace_users.csv"))
}

data "aws_workspaces_bundle" "value_os" {
  bundle_id = var.Bundle_ID
}

resource "aws_workspaces_workspace" "work" {
  directory_id = var.Directory_ID
  bundle_id    = data.aws_workspaces_bundle.value_os.id
  count        = length(local.user_names)
  user_name    = local.user_names[count.index].User_Name
  
  workspace_properties {
    compute_type_name                         = "STANDARD"
    user_volume_size_gib                      = 10
    root_volume_size_gib                      = 80
    running_mode                              = "ALWAYS_ON"

  }
  
}