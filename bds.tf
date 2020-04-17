resource "oci_bds_bds_instance" "tf_bds_instance" {
  #Required
  compartment_id = "ocid1.compartment.oc1..aaaaaaaa7gna34n3semxsi7ejf72jqpjnip6mqw2764hegwp7y2sl5rctdqa"
  display_name = "tf-bds-example"
  # Password has to be Base64 encoded, e.g.: echo Init01$$ | base64
  cluster_admin_password = "SW5pdDAxMTgwOTEK"
  is_high_availability = false
  is_secure = false
  cluster_version = "CDH6"
  master_node {
    shape = "VM.Standard2.4"
    subnet_id = "ocid1.subnet.oc1.iad.aaaaaaaacb7rucoodgxp75b7srwgni2kkykutpugzwhdcesw76iwxcfruoya"
    block_volume_size_in_gbs = 150
    number_of_nodes = 1
  }
  util_node {
    shape = "VM.Standard2.4"
    subnet_id = "ocid1.subnet.oc1.iad.aaaaaaaacb7rucoodgxp75b7srwgni2kkykutpugzwhdcesw76iwxcfruoya"
    block_volume_size_in_gbs = 150
    number_of_nodes = 1
  }
  worker_node {
    shape = "VM.Standard2.1"
    subnet_id = "ocid1.subnet.oc1.iad.aaaaaaaacb7rucoodgxp75b7srwgni2kkykutpugzwhdcesw76iwxcfruoya"
    block_volume_size_in_gbs = 150
    number_of_nodes = 3
  }
  cluster_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDvMxEFcD/GCxaF9fnUbW1dFWUPJrj69uMPk5kuzZsOxfBfHD4ZyMS3+YN3XTHaIYsmfJzSVMu3kV+h7xS4O0wkc4joXvzx4/EbrgPl6Ja9lcQkreICYJ9hEe5MF3onNhJVlLi0/VPtNWGAM3Jqk7UrYrQS6Ks3iDw9zNHfIRJ7jSRetLv8SBKClOowAKMq6CyEoVCdspL4xCsdP0UeXlwdihtgy0DQfNWbPt94kyHJFraaDUW8HKsIrTjp7Zk++GTsgRcUo5h7LpRmKHFKq3pZgekMGGVU1NTXDH3AY5lYnAnWIW0MJHgSEFeLXQ7Ry18ytj85I34R8d3ATgjmbZyY9BntEZ11fm9M3QaPX5cA3r6qlt70zMkMGpLka/R+M8/ELT2pBikJk6CjomCOtoTgGveoVbF0sX7V7Ocm/W8vAvpdZEid7hg1ApemCZxVPAjKLjWvtzN2pOKWc3ZL+3T2GOR0A1Zb6Gef8vZT7IDGJjCanUEEuCVx3cfV4+YDPSOQ/VJQM7i6/Yyo9IVx2e1kVDSMnH3n8lS+y0lostFAsIWzfGjizra1wc2aV5e0wqMbcOtJqm8SAesRhZYxrUlR9V1R8ggC75CI3TwUmjsMFKB1h6bFQ5NE4LSli35/dyNjDf3JjF2CtROLmBD1peVE5efjzyF7aGI+TJaTv4/hXw== vit.kotacka@oracle.com"

  #Optional
  freeform_tags = {
    "created-by" = "Vít Kotačka"
    "purpose" = "An example BDS instance created by Terraform."
  }
}
