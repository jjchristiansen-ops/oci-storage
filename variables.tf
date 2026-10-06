variable "bucket_name" {
    description = "Object Storage Bucket Name"
    type = string
}

variable "compartment_ocid" {
    description = "Compartment OCID where the bucket will be created"
    type = string
}

variable "storage_tier" {

  type    = string
  default = "Standard"
}

variable "namespace" {
  description = "OCI Object Storage namespace"
  type        = string
}