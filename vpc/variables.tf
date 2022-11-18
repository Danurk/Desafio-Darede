variable "vpc1_tags" {
  type = map(string)
  default = {
    "Name"      = "carlos1-vpc"
    "Owner"     = "Carlos"
    "ManagedBy" = "Terraform"
  }
}

variable "vpc2_tags" {
  type = map(string)
  default = {
    "Name"      = "carlos2-vpc"
    "Owner"     = "Carlos"
    "ManagedBy" = "Terraform"
  }
}


variable "igw1_tags" {
  type = map(string)
  default = {
    "Name" = "carlos-igw"
  }
}

variable "route1_table_tags" {
  type = map(string)
  default = {
    "Name" = "carlos-route-table"
  }
}

variable "subnet_cidrs_public" {
  type    = list(string)
  default = ["10.1.1.0/24", "10.1.2.0/24"]
}

variable "subnet_cidrs_private" {
  type    = list(string)
  default = ["10.1.3.0/24", "10.1.4.0/24"]
}

variable "subnet_cidrs_db" {
  type    = list(string)
  default = ["10.1.5.0/24", "10.1.6.0/24"]
}

variable "availability_zones" {
  description = "AZs in this region to use"
  default     = ["us-east-1a", "us-east-1b"]
  type        = list(string)
}

variable "subnet_cidrs_public2" {
  type    = list(string)
  default = ["10.2.1.0/24", "10.2.2.0/24"]
}

variable "subnet_cidrs_private2" {
  type    = list(string)
  default = ["10.2.3.0/24", "10.2.4.0/24"]
}

variable "subnet_cidrs_db2" {
  type    = list(string)
  default = ["10.2.5.0/24", "10.2.6.0/24"]
}

variable "domain_name" {
  type    = string
  default = "carlosnascimento.tk"
}

variable "endpoint" {
  type    = string
  default = "mywebsite.carlosnascimento.tk"
}

variable "resourse_record_name" {
  type    = string
  default = "www"
}

variable "instance_tags" {
  type = map(string)
  default = {
    "Name"      = "Nginx"
    "ManagedBy" = "Terraform"
    "Owner"     = "Carlos"
  }
}
/*
variable "private_key" {
  type    = string
  default = file("~/Users/carlo/Documents/Chaves/carlos-key-pri.ppk")
}

variable "public_key" {
  type    = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDOf2vhMWq4q5OsIPeSZTXh/X+Y9eKwczaeoo3XZZv3npEtIYKiY3mCMuolmYVqCvIyJcOQZob/uGL18eXj43CUSnI38bpp72ZkQRpmhIoSa/FJ+6ZlT9pZyqy0U1xNbdPLQZJv/+vuEfqvD5nmPODoD8R71IAJERSiwg906M7cNGbcR83NmitXR5zen64bP/nu6Z8PIvGp8/331iRcFtnRotE3H0KLOT8+h53mV8sH07zIdYx7AintlnEZgbPkWztG8RdVYK57lsJNM2CiVTZ68nWAu1ZowOphGSlism7ki6uqlAJC0POSjFFbsKr51nh/V1aEwtoGDjdKT2w51k3L imported-openssh-key"
}
*/