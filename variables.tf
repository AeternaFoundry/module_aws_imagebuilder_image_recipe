variable "imagebuilder_image_recipes" {
  description = <<EOT
Map of imagebuilder_image_recipes, attributes below
Required:
    - name
    - parent_image
    - version
    - component (block):
        - component_arn (required)
        - parameter (optional, block):
            - name (required)
            - value (required)
Optional:
    - ami_tags
    - description
    - region
    - tags
    - tags_all
    - user_data_base64
    - working_directory
    - block_device_mapping (block):
        - device_name (optional)
        - ebs (optional, block):
            - delete_on_termination (optional)
            - encrypted (optional)
            - iops (optional)
            - kms_key_id (optional)
            - snapshot_id (optional)
            - throughput (optional)
            - volume_size (optional)
            - volume_type (optional)
        - no_device (optional)
        - virtual_name (optional)
    - systems_manager_agent (block):
        - uninstall_after_build (required)
EOT

  type = map(object({
    name              = string
    parent_image      = string
    version           = string
    ami_tags          = optional(map(string))
    description       = optional(string)
    region            = optional(string)
    tags              = optional(map(string))
    tags_all          = optional(map(string))
    user_data_base64  = optional(string)
    working_directory = optional(string)
    component = list(object({
      component_arn = string
      parameter = optional(list(object({
        name  = string
        value = string
      })))
    }))
    block_device_mapping = optional(list(object({
      device_name = optional(string)
      ebs = optional(object({
        delete_on_termination = optional(string)
        encrypted             = optional(string)
        iops                  = optional(number)
        kms_key_id            = optional(string)
        snapshot_id           = optional(string)
        throughput            = optional(number)
        volume_size           = optional(number)
        volume_type           = optional(string)
      }))
      no_device    = optional(bool)
      virtual_name = optional(string)
    })))
    systems_manager_agent = optional(object({
      uninstall_after_build = bool
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_image_recipes : (
        length(v.component) >= 1
      )
    ])
    error_message = "Each component list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_image_recipes : (
        length(v.parent_image) >= 1 && length(v.parent_image) <= 1024
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_image_recipes : (
        v.working_directory == null || (length(v.working_directory) >= 1 && length(v.working_directory) <= 1024)
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  # Note: 16 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

