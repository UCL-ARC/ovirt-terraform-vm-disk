# Disk configuration
variable "format" {
  description = "Disk format"
  type        = string
  default     = "cow"
}

variable "name" {
  description = "Disk name"
  type        = string
}

variable "shareable" {
  description = "Allow disk to be shared"
  type        = bool
  default     = false
}

variable "size" {
  description = "Disk size (GB)"
  type        = number
}

variable "sparse" {
  description = "Thin provision"
  type        = bool
  default     = true
}

variable "storage_domain_id" {
  description = "Target storage domain ID"
  type        = string
}

# Disk attachment configuiration
variable "active" {
  description = "Make disk live"
  type        = bool
  default     = true
}

variable "disk_id" {
  description = "ID of disk to attach to VM"
  type        = string
  default     = ""
}

variable "bootable" {
  description = "Flag disk as bootable"
  type        = bool
  default     = false
}

variable "interface" {
  description = "Disk interface type"
  type        = string
  default     = "virtio_scsi"
}

variable "pass_discard" {
  description = "Enable discard (reclaim)"
  type        = string
  default     = ""
}

variable "read_only" {
  description = "Flag disk as read-only"
  type        = bool
  default     = false
}

variable "use_scsi_reservation" {
  description = "SCSI reservation"
  type        = bool
  default     = false
}

variable "vm_id" {
  description = "Target VM ID"
  type        = string
}
