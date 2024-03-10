variable "enable" {
  type = bool
}

variable "namespace" {
  type = string
}

variable "backupStorageLocation_name" {
  type = string
  description = "nome backup location"
}

variable "backupStorageLocation_bucket" {
  type =  string
  description = "nome da bucket"
}

