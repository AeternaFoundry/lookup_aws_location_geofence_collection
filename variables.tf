variable "location_geofence_collection_lookup" {
  description = <<EOT
Map of location_geofence_collection_lookup, attributes below
Required:
    - collection_name
Optional:
    - kms_key_id
    - region
    - tags
EOT

  type = map(object({
    collection_name = string
    kms_key_id      = optional(string)
    region          = optional(string)
    tags            = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.location_geofence_collection_lookup : (
        length(v.collection_name) >= 1 && length(v.collection_name) <= 100
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
}

