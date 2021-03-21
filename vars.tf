variable "AWS_REGION" {
  type        = string
  description = "The AWS Region where Terraform will depoy to"

}

## AWS Credential and Account Information
variable "aws_profile" {
  type        = string
  description = "The AWS CLI profile name representing the account to deploy Terraform"
}


variable "Bundle_ID" {
  type        = string
  description = "The AWS WorkSpace Bundle ID"
}

variable "Directory_ID" {
  type        = string
  description = "The AWS WorkSpace Directory ID"
}