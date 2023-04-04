variable "vpc_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "Vpc cidr block"
}

variable "subnet_public_cidr_blocks" {
  type        = list(string)
  description = "Subnets publics cidr block"
}

variable "subnet_private_cidr_blocks" {
  type        = list(string)
  description = "Subnets privates block"
}

variable "azs" {
  type        = list(string)
  description = "Zonas de disponibilidade da AWS"
}

variable "env" {
  type        = string
  description = "Enviroment"
}

variable "db_username" {
  type        = string
  description = "username do bd"
}

variable "db_password" {
  type        = string
  description = "senha do bd"
}

variable "name" {
  type = string
}

variable "subnets_private_ids" {
  type        = list(string)
  description = "lista subnets pub id"
}