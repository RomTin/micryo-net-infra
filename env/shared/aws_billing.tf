# aws_billing.tf

resource "aws_budgets_budget" "cost_total" {
  name              = "total"
  budget_type       = "COST"
  limit_amount      = local.cost_limit
  limit_unit        = "USD"
  time_period_start = "2021-11-01_00:00"
  time_unit         = "MONTHLY"

  cost_types {
    include_support = false
  }

  dynamic "notification" {
    for_each = [75, 90, 100]
    content {
      comparison_operator        = "GREATER_THAN"
      notification_type          = "ACTUAL"
      threshold                  = notification.value
      threshold_type             = "PERCENTAGE"
      subscriber_email_addresses = [var.NOTIFICATION_EMAIL]
    }
  }
}
