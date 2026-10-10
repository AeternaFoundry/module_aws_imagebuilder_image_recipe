output "imagebuilder_image_recipes_id" {
  description = "Map of id values across all imagebuilder_image_recipes, keyed the same as var.imagebuilder_image_recipes"
  value       = { for k, v in aws_imagebuilder_image_recipe.imagebuilder_image_recipes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "imagebuilder_image_recipes_ami_tags" {
  description = "Map of ami_tags values across all imagebuilder_image_recipes, keyed the same as var.imagebuilder_image_recipes"
  value       = { for k, v in aws_imagebuilder_image_recipe.imagebuilder_image_recipes : k => v.ami_tags if v.ami_tags != null && length(v.ami_tags) > 0 }
}
output "imagebuilder_image_recipes_arn" {
  description = "Map of arn values across all imagebuilder_image_recipes, keyed the same as var.imagebuilder_image_recipes"
  value       = { for k, v in aws_imagebuilder_image_recipe.imagebuilder_image_recipes : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "imagebuilder_image_recipes_block_device_mapping" {
  description = "Map of block_device_mapping values across all imagebuilder_image_recipes, keyed the same as var.imagebuilder_image_recipes"
  value       = { for k, v in aws_imagebuilder_image_recipe.imagebuilder_image_recipes : k => v.block_device_mapping if v.block_device_mapping != null && length(v.block_device_mapping) > 0 }
}
output "imagebuilder_image_recipes_component" {
  description = "Map of component values across all imagebuilder_image_recipes, keyed the same as var.imagebuilder_image_recipes"
  value       = { for k, v in aws_imagebuilder_image_recipe.imagebuilder_image_recipes : k => v.component if v.component != null && length(v.component) > 0 }
}
output "imagebuilder_image_recipes_date_created" {
  description = "Map of date_created values across all imagebuilder_image_recipes, keyed the same as var.imagebuilder_image_recipes"
  value       = { for k, v in aws_imagebuilder_image_recipe.imagebuilder_image_recipes : k => v.date_created if v.date_created != null && length(v.date_created) > 0 }
}
output "imagebuilder_image_recipes_description" {
  description = "Map of description values across all imagebuilder_image_recipes, keyed the same as var.imagebuilder_image_recipes"
  value       = { for k, v in aws_imagebuilder_image_recipe.imagebuilder_image_recipes : k => v.description if v.description != null && length(v.description) > 0 }
}
output "imagebuilder_image_recipes_name" {
  description = "Map of name values across all imagebuilder_image_recipes, keyed the same as var.imagebuilder_image_recipes"
  value       = { for k, v in aws_imagebuilder_image_recipe.imagebuilder_image_recipes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "imagebuilder_image_recipes_owner" {
  description = "Map of owner values across all imagebuilder_image_recipes, keyed the same as var.imagebuilder_image_recipes"
  value       = { for k, v in aws_imagebuilder_image_recipe.imagebuilder_image_recipes : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "imagebuilder_image_recipes_parent_image" {
  description = "Map of parent_image values across all imagebuilder_image_recipes, keyed the same as var.imagebuilder_image_recipes"
  value       = { for k, v in aws_imagebuilder_image_recipe.imagebuilder_image_recipes : k => v.parent_image if v.parent_image != null && length(v.parent_image) > 0 }
}
output "imagebuilder_image_recipes_platform" {
  description = "Map of platform values across all imagebuilder_image_recipes, keyed the same as var.imagebuilder_image_recipes"
  value       = { for k, v in aws_imagebuilder_image_recipe.imagebuilder_image_recipes : k => v.platform if v.platform != null && length(v.platform) > 0 }
}
output "imagebuilder_image_recipes_region" {
  description = "Map of region values across all imagebuilder_image_recipes, keyed the same as var.imagebuilder_image_recipes"
  value       = { for k, v in aws_imagebuilder_image_recipe.imagebuilder_image_recipes : k => v.region if v.region != null && length(v.region) > 0 }
}
output "imagebuilder_image_recipes_systems_manager_agent" {
  description = "Map of systems_manager_agent values across all imagebuilder_image_recipes, keyed the same as var.imagebuilder_image_recipes"
  value       = { for k, v in aws_imagebuilder_image_recipe.imagebuilder_image_recipes : k => one(v.systems_manager_agent) if v.systems_manager_agent != null && length(v.systems_manager_agent) > 0 }
}
output "imagebuilder_image_recipes_tags" {
  description = "Map of tags values across all imagebuilder_image_recipes, keyed the same as var.imagebuilder_image_recipes"
  value       = { for k, v in aws_imagebuilder_image_recipe.imagebuilder_image_recipes : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "imagebuilder_image_recipes_tags_all" {
  description = "Map of tags_all values across all imagebuilder_image_recipes, keyed the same as var.imagebuilder_image_recipes"
  value       = { for k, v in aws_imagebuilder_image_recipe.imagebuilder_image_recipes : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "imagebuilder_image_recipes_user_data_base64" {
  description = "Map of user_data_base64 values across all imagebuilder_image_recipes, keyed the same as var.imagebuilder_image_recipes"
  value       = { for k, v in aws_imagebuilder_image_recipe.imagebuilder_image_recipes : k => v.user_data_base64 if v.user_data_base64 != null && length(v.user_data_base64) > 0 }
}
output "imagebuilder_image_recipes_version" {
  description = "Map of version values across all imagebuilder_image_recipes, keyed the same as var.imagebuilder_image_recipes"
  value       = { for k, v in aws_imagebuilder_image_recipe.imagebuilder_image_recipes : k => v.version if v.version != null && length(v.version) > 0 }
}
output "imagebuilder_image_recipes_working_directory" {
  description = "Map of working_directory values across all imagebuilder_image_recipes, keyed the same as var.imagebuilder_image_recipes"
  value       = { for k, v in aws_imagebuilder_image_recipe.imagebuilder_image_recipes : k => v.working_directory if v.working_directory != null && length(v.working_directory) > 0 }
}

