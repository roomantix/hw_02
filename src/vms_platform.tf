# Переменные для первой ВМ (web)

variable "vm_web_platform_id" {
  description = "Platform ID"
  type        = string
  default     = "standard-v2"
}

#variable "vm_web_cores" {
#  description = "Number of CPU"
#  type        = number
#  default     = 2
#}

#variable "vm_web_memory" {
#  description = "RAM GB"
#  type        = number
#  default     = 1
#}

#variable "vm_web_core_fraction" {
#  description = "CPU core"
#  type        = number
#  default     = 5
#}

variable "vm_web_preemptible" {
  description = ""
  type        = bool
  default     = true
}

variable "vm_web_nat" {
  description = "Enable NAT on network interface"
  type        = bool
  default     = true
}

#variable "vm_web_serial_port_enable" {
#  description = "Enable serial console (1 = enabled, 0 = disable)"
#  type        = string
#  default     = "1"
#}

#variable "vm_web_ssh_user" {
#  description = "Default SSH user"
#  type        = string
#  default     = "ubuntu"
#}

variable "vm_web_image_family" {
  description = "Image family"
  type        = string
  default     = "ubuntu-2004-lts"
}


# Переменные для второй ВМ (db)

variable "vm_db_platform_id" {
  description = "Platform ID for the DB VM"
  type        = string
  default     = "standard-v2"
}
/*
variable "vm_db_cores" {
  description = "CPU cores for DB VM"
  type        = number
  default     = 2
}

variable "vm_db_memory" {
  description = "RAM size GB"
  type        = number
  default     = 2
}

variable "vm_db_core_fraction" {
  description = "Core fraction for DB VM"
  type        = number
  default     = 20
}
*/
variable "vm_db_preemptible" {
  description = ""
  type        = bool
  default     = true
}

variable "vm_db_nat" {
  description = "Enable NAT for DB VM"
  type        = bool
  default     = true
}
/*
variable "vm_db_serial_port_enable" {
  description = "Serial port enable flag"
  type        = string
  default     = "1"
}

variable "vm_db_ssh_user" {
  description = "Default SSH user"
  type        = string
  default     = "ubuntu"
}
*/
variable "vm_db_image_family" {
  description = "Image family"
  type        = string
  default     = "ubuntu-2004-lts"
}

variable "vm_db_zone" {
  description = "zone b"
  type        = string
  default     = "ru-central1-b"
}

# меняем название вм через не сколько переменных

variable "prefix" {
  description = "Prefix for instance names"
  type        = string
  default     = "netology"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "develop"
}

variable "vm_web_role" {
  description = "Role suffix for web instance"
  type        = string
  default     = "platform-web"
}

variable "vm_db_role" {
  description = "Role suffix for DB instance"
  type        = string
  default     = "platform-db"
}


variable "vms_resources" {
  description = "Resource configurations web , db VMs"
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
    hdd_size      = number
    hdd_type      = string
  }))

  default = {
    web = {
      cores         = 2
      memory        = 1
      core_fraction = 5
      hdd_size      = 10
      hdd_type      = "network-hdd"
    }
    db = {
      cores         = 2
      memory        = 2
      core_fraction = 20
      hdd_size      = 10
      hdd_type      = "network-hdd"
    }
  }
}

variable "vms_metadata" {
  description = "Common metadata for all VMs"
  type        = map(string)
}