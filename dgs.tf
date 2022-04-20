resource "oci_identity_dynamic_group" "devopsgroup1" {
  provider       = oci.home_region
  name           = "var.oci_dg_name_${random_string.random_id}"
  description    = "DevOps deploy pipeline dynamic group"
  compartment_id = var.compartment_ocid
  matching_rule  = "ALL {resource.type = 'devopsdeploypipeline', resource.compartment.id = '${var.compartment_ocid}'}"
}
