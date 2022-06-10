remote_state {
  backend = "gcs"
  config = {
    bucket = read_terragrunt_config(find_in_parent_folders("backend.hcl")).inputs.bucket 
    prefix = path_relative_to_include() 
  }
}


inputs = merge(
    read_terragrunt_config(find_in_parent_folders("global.hcl")).inputs,
    read_terragrunt_config(find_in_parent_folders("backend.hcl")).inputs,
    read_terragrunt_config(find_in_parent_folders("team.hcl")).inputs,
    read_terragrunt_config(find_in_parent_folders("folder.hcl")).inputs,
  {
    project_name = "${basename(get_terragrunt_dir())}"
  }
)

