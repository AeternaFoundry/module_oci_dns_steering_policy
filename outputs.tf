output "dns_steering_policies_id" {
  description = "Map of id values across all dns_steering_policies, keyed the same as var.dns_steering_policies except keys with no id are omitted"
  value       = { for k, v in oci_dns_steering_policy.dns_steering_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dns_steering_policies_answers" {
  description = "Map of answers values across all dns_steering_policies, keyed the same as var.dns_steering_policies except keys with no answers are omitted"
  value       = { for k, v in oci_dns_steering_policy.dns_steering_policies : k => v.answers if v.answers != null && length(v.answers) > 0 }
}
output "dns_steering_policies_compartment_id" {
  description = "Map of compartment_id values across all dns_steering_policies, keyed the same as var.dns_steering_policies except keys with no compartment_id are omitted"
  value       = { for k, v in oci_dns_steering_policy.dns_steering_policies : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "dns_steering_policies_defined_tags" {
  description = "Map of defined_tags values across all dns_steering_policies, keyed the same as var.dns_steering_policies except keys with no defined_tags are omitted"
  value       = { for k, v in oci_dns_steering_policy.dns_steering_policies : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "dns_steering_policies_display_name" {
  description = "Map of display_name values across all dns_steering_policies, keyed the same as var.dns_steering_policies except keys with no display_name are omitted"
  value       = { for k, v in oci_dns_steering_policy.dns_steering_policies : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "dns_steering_policies_freeform_tags" {
  description = "Map of freeform_tags values across all dns_steering_policies, keyed the same as var.dns_steering_policies except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_dns_steering_policy.dns_steering_policies : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "dns_steering_policies_health_check_monitor_id" {
  description = "Map of health_check_monitor_id values across all dns_steering_policies, keyed the same as var.dns_steering_policies except keys with no health_check_monitor_id are omitted"
  value       = { for k, v in oci_dns_steering_policy.dns_steering_policies : k => v.health_check_monitor_id if v.health_check_monitor_id != null && length(v.health_check_monitor_id) > 0 }
}
output "dns_steering_policies_rules" {
  description = "Map of rules values across all dns_steering_policies, keyed the same as var.dns_steering_policies except keys with no rules are omitted"
  value       = { for k, v in oci_dns_steering_policy.dns_steering_policies : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "dns_steering_policies_self" {
  description = "Map of self values across all dns_steering_policies, keyed the same as var.dns_steering_policies except keys with no self are omitted"
  value       = { for k, v in oci_dns_steering_policy.dns_steering_policies : k => v.self if v.self != null && length(v.self) > 0 }
}
output "dns_steering_policies_state" {
  description = "Map of state values across all dns_steering_policies, keyed the same as var.dns_steering_policies except keys with no state are omitted"
  value       = { for k, v in oci_dns_steering_policy.dns_steering_policies : k => v.state if v.state != null && length(v.state) > 0 }
}
output "dns_steering_policies_template" {
  description = "Map of template values across all dns_steering_policies, keyed the same as var.dns_steering_policies except keys with no template are omitted"
  value       = { for k, v in oci_dns_steering_policy.dns_steering_policies : k => v.template if v.template != null && length(v.template) > 0 }
}
output "dns_steering_policies_time_created" {
  description = "Map of time_created values across all dns_steering_policies, keyed the same as var.dns_steering_policies except keys with no time_created are omitted"
  value       = { for k, v in oci_dns_steering_policy.dns_steering_policies : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "dns_steering_policies_ttl" {
  description = "Map of ttl values across all dns_steering_policies, keyed the same as var.dns_steering_policies except keys with no ttl are omitted"
  value       = { for k, v in oci_dns_steering_policy.dns_steering_policies : k => v.ttl if v.ttl != null }
}

