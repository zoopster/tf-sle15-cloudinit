variable "libvirt_uri" {
  default     = "qemu:///system"
  description = "URL of libvirt connection - default to localhost"
}

variable "stack_name" {
  default     = ""
  description = "Identifier to make all your resources unique and avoid clashes with other users of this terraform project"
}

variable "image_uri" {
  default     = ""
  description = "URL of the image to use"
}

variable "pool" {
  default     = "default"
  description = "Pool to be used to store all the volumes"
}

variable "network_mode" {
  type        = string
  default     = "nat"
  description = "Network mode used by the cluster"
}

variable "dns_domain" {
  type        = string
  default     = "caasp.local"
  description = "Name of DNS Domain"
}

variable "network_cidr" {
  type        = string
  default     = "192.168.100.0/24"
  description = "Network used by the cluster"
}

variable "repositories" {
  type        = map
  default     = {}
  description = "Urls of the repositories to mount via cloud-init"
}

variable "authorized_keys" {
  type        = list
  default     = []
  description = "SSH keys to inject into all the nodes"
}

variable "ntp_servers" {
  type        = list
  default     = []
  description = "List of NTP servers to configure"
}

variable "packages" {
  type = list

  default = [
    "kernel-default",
    "-kernel-default-base",
  ]

  description = "List of packages to install"
}

variable "username" {
  default     = "sles"
  description = "Username for the cluster nodes"
}

variable "password" {
  default     = "linux"
  description = "Password for the cluster nodes"
}

variable "caasp_registry_code" {
  default     = ""
  description = "SUSE CaaSP Product Registration Code"
}

variable "ha_registry_code" {
  default     = ""
  description = "SUSE Linux Enterprise High Availability Extension Registration Code"
}

variable "masters" {
  default     = 1
  description = "Number of master nodes"
}

variable "master_memory" {
  default     = 2048
  description = "Amount of RAM for a master"
}

variable "master_vcpu" {
  default     = 2
  description = "Amount of virtual CPUs for a master"
}

variable "rmt_server_name" {
  default     = ""
  description = "SUSE Repository Mirroring Server Name"
}

variable "disk_size" {
  default     = "25769803776"
  description = "Disk size (in bytes)"
}
