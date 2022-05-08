resource "aws_mwaa_environment" "example" {
  dag_s3_path        = "dag/"
  execution_role_arn = var.execution_role_arn1

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

  name = var.name1

  network_configuration {
    security_group_ids = var.security_group_ids1
    subnet_ids         = var.subnet_ids1
  }

  source_bucket_arn = aws_s3_bucket.example.arn1
}
