variable "project" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The region where the resources will be created"
  type        = string
  default     = "us-central1"  # Set to your desired region
}

variable "credentials" {
  description = "Path to the service account key file"
  type        = string
}

variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
  default     = "gcp-autovm"  # Default VM name
}

variable "machine_type" {
  description = "The type of machine to create"
  type        = string
  default     = "n1-standard-1"  # Set to your desired machine type
}

variable "zone" {
  description = "The zone where the virtual machine will be created"
  type        = string
  default     = "us-central1-a"  # Set to your desired zone
}

variable "auto_delete" {
  description = "Whether to automatically delete the VM when the resource is deleted"
  type        = bool
  default     = true  # Set to true or false as per your requirement
}

variable "image" {
  description = "The image to use for the VM"
  type        = string
  default     = "ubuntu-1804-bionic-v20220131"  # Update with your desired image
}

variable "subnet_id" {
  description = "The subnet in which the VM will be created"
  type        = string
  default     = "default"  # Update with your desired subnet
}

variable "network" {
  description = "The network in which the VM will be created"
  type        = string
  default     = "default"  # Update with your desired network
}

variable "vm_desired_status" {
  description = "The desired status of the VM"
  type        = string
  default     = "RUNNING"  # Set to RUNNING or TERMINATED as required
}

variable "ssh_pub_key" {
  description = "Public SSH key for accessing the VM"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDIVMbsKyKe+JVLlyjX1C2CK1DONottK4eYLwIFKU8PvP+gZtOibTxybOr9hwUt4uYfOYyKvEXZtEjPam7hdz46wxlZpGW0jZ/lyr/+I4o52gfVaVBcGHjTVo6JIDc+bqqqabIuc55aK382uza/cbmW0GCZcOMMquE+ZtX+x2iXP76vWzQPgSSCnDSpehUqRzj8e6IGJFLEnWvX7apnIdlgxhCTgGflVHKvb4/LI7lYtatpXeQjtUTQKhLqKD9mpan4wo3fVHbPUq1ZqGKwWq/1Y3IMWJAPLUUVgDV4kJUzqdOt6mB/cCH9rMv/TBwQnh5M1LvCA0mwYOV/k3J9GZ2h cmpdev"  # Add your SSH public key here or keep empty
}

variable "ssh_user" {
  description = "Username for SSH access to the VM"
  type        = string
  default     = "ubuntu"  # Change as per your OS
}

variable "vm_username" {
  description = "The username for the VM"
  type        = string
  default     = "user"  # Default username for the VM
}

variable "vm_password" {
  description = "Password for the VM (not recommended for SSH)"
  type        = string
  default     = "Cmpdev123456$"  # Leave empty or set if using password authentication
}

variable "authentication_type" {
  description = "Type of authentication to use for the VM"
  type        = string
  default     = "ssh_key"  # Set to 'ssh_key' or 'password'
}
