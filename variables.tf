variable "dns_steering_policies" {
  description = <<EOT
Map of dns_steering_policies, attributes below
Required:
    - compartment_id
    - display_name
    - template
Optional:
    - defined_tags
    - freeform_tags
    - health_check_monitor_id
    - ttl
    - answers (block):
        - is_disabled (optional)
        - name (required)
        - pool (optional)
        - rdata (required)
        - rtype (required)
    - rules (block):
        - cases (optional, block):
            - answer_data (optional, block):
                - answer_condition (optional)
                - should_keep (optional)
                - value (optional)
            - case_condition (optional)
            - count (optional)
        - default_answer_data (optional, block):
            - answer_condition (optional)
            - should_keep (optional)
            - value (optional)
        - default_count (optional)
        - description (optional)
        - rule_type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id          = string
    display_name            = string
    template                = string
    defined_tags            = optional(map(string))
    freeform_tags           = optional(map(string))
    health_check_monitor_id = optional(string)
    ttl                     = optional(number)
    answers = optional(list(object({
      is_disabled = optional(bool)
      name        = string
      pool        = optional(string)
      rdata       = string
      rtype       = string
    })))
    rules = optional(list(object({
      cases = optional(list(object({
        answer_data = optional(list(object({
          answer_condition = optional(string)
          should_keep      = optional(bool)
          value            = optional(number)
        })))
        case_condition = optional(string)
        count          = optional(number)
      })))
      default_answer_data = optional(list(object({
        answer_condition = optional(string)
        should_keep      = optional(bool)
        value            = optional(number)
      })))
      default_count = optional(number)
      description   = optional(string)
      rule_type     = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dns_steering_policies : (
        v.rules == null || alltrue([for item in v.rules : (contains([for v in ["FILTER", "HEALTH", "LIMIT", "PRIORITY", "WEIGHTED"] : lower(v)], lower(item.rule_type)))])
      )
    ])
    error_message = "must be one of: \"FILTER\", \"HEALTH\", \"LIMIT\", \"PRIORITY\", \"WEIGHTED\""
  }
}

