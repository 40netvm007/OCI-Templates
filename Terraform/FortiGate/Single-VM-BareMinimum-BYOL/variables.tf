variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}

variable "private_key_path" {}

variable "region" {
  default = "us-ashburn-1"
}

variable "compartment_ocid" {}

variable "vcn_cidr" {
  default = "10.1.0.0/16"
}

variable "mgmt_subnet_cidr" {
  default = "10.1.1.0/24"
}

variable "untrust_subnet_cidr" {
  default = "10.1.10.0/24"
}

variable "untrust_private_ip_primary" {
  default = "10.1.10.2"
}

variable "untrust_floating_private_ip" {
  default = "10.1.10.10"
}

variable "untrust_public_ip_lifetime" {
  default = "RESERVED"
  //or EPHEMERAL
}

variable "trust_subnet_cidr" {
  default = "10.1.100.0/24"
}

variable "trust_private_ip_primary" {
  default = "10.1.100.2"
}

variable "trust_floating_private_ip" {
  default = "10.1.100.10"
}

variable "vm_image_ocid" {
  type = "map"
  default = {
    // See https://docs.us-phoenix-1.oraclecloud.com/images/
    // Oracle-provided image "Oracle-Linux-7.4-2018.02.21-1"
    us-phoenix-1 = "ocid1.image.oc1.phx.aaaaaaaaupbfz5f5hdvejulmalhyb6goieolullgkpumorbvxlwkaowglslq"
    us-ashburn-1 = "ocid1.image.oc1.iad.aaaaaaaajlw3xfie2t5t52uegyhiq2npx7bqyu4uvi2zyu3w3mqayc2bxmaa"
    eu-frankfurt-1 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaa7d3fsb6272srnftyi4dphdgfjf6gurxqhmv6ileds7ba3m2gltxq"
    uk-london-1    = "ocid1.image.oc1.uk-london-1.aaaaaaaaa6h6gj6v4n56mqrbgnosskq63blyv2752g36zerymy63cfkojiiq"
  }
}

variable "instance_shape" {
  default = "VM.Standard1.4"
}

# Choose an Availability Domain (1,2,3)
variable "availability_domain" {
  default = "1"
}

variable "volume_size" {
  default = "50" //GB; you can modify this.
}

variable "bootstrap" {
  // Change to your own path
  default = "/Users/jkato/tmp/userdata/config.txt"
}

variable "license" {
  // Change to your own path
  default = "/Users/jkato/tmp/license/license.txt"
}
