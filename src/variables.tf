###cloud vars


variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBPJM02oeS8YDupm0QWiurQyOtUB+K8dwFwlHB0wsZ9c root@alex-VirtualBox"
  description = "ssh-keygen -t ed25519"
}

#### service account yandex

variable "service_account_key_file" {
  description = "Path to service account key file"
  type        = string
}

#### name vm

variable "vm_web_name" {
  description = "Name VM"
  type        = string
  default     = "netology-develop-platform-web"
}

variable "vm_web_platform_id" {
  description = "Platform ID"
  type        = string
  default     = "standard-v2"
}

variable "vm_web_cores" {
  description = "Number of CPU"
  type        = number
  default     = 2
}

variable "vm_web_memory" {
  description = "RAM GB"
  type        = number
  default     = 1
}

variable "vm_web_core_fraction" {
  description = "CPU core"
  type        = number
  default     = 5
}

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

variable "vm_web_serial_port_enable" {
  description = "Enable serial console (1 = enabled, 0 = disable)"
  type        = string
  default     = "1"
}

variable "vm_web_ssh_user" {
  description = "Default SSH user"
  type        = string
  default     = "ubuntu"
}

variable "vm_web_image_family" {
  description = "Image family"
  type        = string
  default     = "ubuntu-2004-lts"
}
