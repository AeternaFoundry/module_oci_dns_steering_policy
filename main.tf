resource "oci_dns_steering_policy" "dns_steering_policies" {
  for_each = var.dns_steering_policies

  compartment_id          = each.value.compartment_id
  display_name            = each.value.display_name
  template                = each.value.template
  defined_tags            = each.value.defined_tags
  freeform_tags           = each.value.freeform_tags
  health_check_monitor_id = each.value.health_check_monitor_id
  ttl                     = each.value.ttl

  dynamic "answers" {
    for_each = each.value.answers != null ? each.value.answers : []
    content {
      is_disabled = answers.value.is_disabled
      name        = answers.value.name
      pool        = answers.value.pool
      rdata       = answers.value.rdata
      rtype       = answers.value.rtype
    }
  }

  dynamic "rules" {
    for_each = each.value.rules != null ? each.value.rules : []
    content {
      dynamic "cases" {
        for_each = rules.value.cases != null ? rules.value.cases : []
        content {
          dynamic "answer_data" {
            for_each = cases.value.answer_data != null ? cases.value.answer_data : []
            content {
              answer_condition = answer_data.value.answer_condition
              should_keep      = answer_data.value.should_keep
              value            = answer_data.value.value
            }
          }
          case_condition = cases.value.case_condition
          count          = cases.value.count
        }
      }
      dynamic "default_answer_data" {
        for_each = rules.value.default_answer_data != null ? rules.value.default_answer_data : []
        content {
          answer_condition = default_answer_data.value.answer_condition
          should_keep      = default_answer_data.value.should_keep
          value            = default_answer_data.value.value
        }
      }
      default_count = rules.value.default_count
      description   = rules.value.description
      rule_type     = rules.value.rule_type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

