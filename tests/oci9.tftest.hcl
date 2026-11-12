# Synthetic fixtures only. Every run is plan-only; no tenancy credentials are used.
mock_provider "oci" {
  mock_resource "oci_core_local_peering_gateway" {
    defaults = { "id" = "MOCK_OCID_GATEWAY", "is_cross_tenancy_peering" = false, "peer_advertised_cidr" = "mock-value", "peer_advertised_cidr_details" = ["mock-value"], "peering_status" = "mock-value", "peering_status_details" = "mock-value", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
}
variables {
  compartment_ocid_1 = "MOCK_OCID_COMPARTMENT"
  vcn_1_id           = "MOCK_OCID_MOCK"
  vcn_1_name         = "compatibility"
  vcn_2_id           = "MOCK_OCID_MOCK"
  vcn_2_name         = "compatibility"
}

run "oci9_plan" {
  command = plan
}
