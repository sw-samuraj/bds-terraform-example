provider "oci" {
  version = "~> 3.71"
  tenancy_ocid = var.tenancy_ocid
  user_ocid = var.user_ocid
  fingerprint = var.fingerprint
  private_key_path = var.private_key_path
  region = var.region
}

data "oci_bds_bds_instance" "tf_bds_instance" {
    #Required
    bds_instance_id = "ocid1.bigdataservice.oc1.iad.amaaaaaapvq3y5aakpekytdob7kzldwybfkw4kdksgoycpuyrqw5uwbszsgq"
}

output "tf_bds_instance" {
  value = data.oci_bds_bds_instance.tf_bds_instance
}
