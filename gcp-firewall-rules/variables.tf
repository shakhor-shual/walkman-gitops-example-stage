variable "win_domain" {
  description = "Active Directory Windows Domain Name"
  default     = "some_namespace"
}

variable "credentials_file" {
  description = "GCP credentials file name"
  default     = "gcp.json"
}

variable "project_id" {
  description = "project ID"
  default     = "some-project"
}

variable "region" {
  description = "Region for VPC and subnet"
  default     = "us-central1"
}

variable "network" {
  description = "VPC name or self_link"
  default     = "some-vpc"
}

variable "ad_dc_tags" {
  description = "TAG for RDP access enable"
  default     = ["ad_controller", "some_domain"]
}

variable "source_ranges" {
  description = "Source Ranges of acces to"
  default     = ["0.0.0.0/0"]
}

}
