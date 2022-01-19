variable "AWS_ACCESS_KEY"{
   type= string
   default = "xxx"
}

variable "AWS_SECRET_KEY"{
    type = string
     default = "xxxx"
}
variable "region" {
  type = string
  default = "eu-west-1"
}

variable "domain_name" {
  type = string
  description = "The domain name for the website."
  default = "sholker.com"
}

variable "bucket_name" {
  type = string
  description = "The name of the bucket without the www. prefix. Normally domain_name."
  default = "sholker"
}
variable "common_tags" {
  description = "Common tags you want applied to all components."
  default = {
    Project = "sholker"
  }
}
