resource "oci_identity_policy" "devopspolicy" {
  provider       = oci.home_region
  name           = "${var.compartment_name}_devopspolicies"
  description    = "policy created for devops"
  compartment_id = var.compartment_ocid

  statements = [
    "Allow group Administrators to manage devops-family in compartment id ${var.compartment_ocid}",
    "Allow group Administrators to manage all-artifacts in compartment id ${var.compartment_ocid}",
    "Allow ${var.compartment_name}_devops_dg to manage all-resources in compartment id ${var.compartment_ocid}",
  ]
}