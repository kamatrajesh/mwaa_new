variable "name" {
  description = "name of MWAA"
  type        = string
  }
variable "security_group_ids" {
  description = "security group ids"
  type        = list(string)
  }
variable "subnet_ids" {
  description = "subnet ids"
  type        = list(string)
  }

variable "execution_role_arn" {
  description = "subnet ids"
  type        = string
  }

variable "execution_role_arn" {
  description = "subnet ids"
  type        = string
  }
