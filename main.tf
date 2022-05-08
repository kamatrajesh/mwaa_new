resource "aws_mwaa_environment" "example" {
  dag_s3_path        = "dag/"
  execution_role_arn = var.execution_role_arn
  regions="us-east-1"

  logging_configuration {
    dag_processing_logs {
      enabled   = true
      log_level = "INFO"
    }

    scheduler_logs {
      enabled   = true
      log_level = "INFO"
    }

    task_logs {
      enabled   = true
      log_level = "INFO"
    }

    webserver_logs {
      enabled   = true
      log_level = "INFO"
    }

    worker_logs {
      enabled   = true
      log_level = "INFO"
    }
  }

  name = var.name

  network_configuration {
    security_group_ids = var.security_group_ids
    subnet_ids         = var.subnet_ids
  }

  source_bucket_arn = var.source_bucket_arn
}
