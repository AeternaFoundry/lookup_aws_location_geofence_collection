data "aws_location_geofence_collection" "location_geofence_collection_lookup" {
  for_each = var.location_geofence_collection_lookup

  collection_name = each.value.collection_name
  kms_key_id      = each.value.kms_key_id
  region          = each.value.region
  tags            = each.value.tags
}

