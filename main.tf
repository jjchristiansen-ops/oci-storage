
data "oci_objectstorage_namespace" "ns" {
  compartment_id = var.compartment_ocid
}

resource "oci_objectstorage_bucket" "this" {
  compartment_id = var.compartment_ocid
  name           = var.bucket_name
  namespace      = data.oci_objectstorage_namespace.ns.namespace
  storage_tier   = var.storage_tier ##"Standard" # or "Archive"
  ##versioning     = "Enabled"  # Optional: enables bucket versioning
}