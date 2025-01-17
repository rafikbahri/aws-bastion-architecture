variable "vpc_name" {
  description = "Name of the main VPC"
  type        = string
  default     = "main-vpc"
}

variable "vpc_cidr" {
  description = "CIDR of the main VPC"
  type        = string
  default     = "192.168.0.0/16"
}

variable "platform" {
  description = "Environment type (dev, prod, staging)"
  type        = string
  default     = "dev"
}

variable "bastion_servers_count" {
  description = "Number of bastion nodes to be created"
  default     = 1
}

variable "private_instances_count" {
  description = "Number of private instances to be created"
  default     = 3
}

variable "eks_create_cluster" {
  description = "Whether to create an EKS cluster or not"
  type        = bool
  default     = false
}

variable "server_prefix" {
  description = "Instance name prefix"
  default     = "ec2"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0546127e0cf2c6498"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "ec2-default"
}

variable "create_key" {
  description = "Whether to create a key pair or not"
  type        = bool
  default     = true
}

variable "key_name" {
  description = "Key pair name"
  type        = string
  default     = "key-pair"
}

variable "ssh_enabled" {
  description = "Whether SSH access to the instance is enabled or not"
  type        = bool
  default     = true
}

variable "ssh_user" {
  type        = string
  description = "Maps environment variable $SSH_USER"
  default     = "ec2-user"
}

variable "bastions_subnet_cidr" {
  type        = string
  default     = "192.168.15.0/24"
  description = "Bastions subnet CIDR block - Internet exposed"
}

variable "private_instances_subnet_cidr" {
  type        = string
  default     = "192.168.16.0/24"
  description = "Private instances subnet CIDR block - Not internet exposed, accessible through Bastions"
}

variable "ssh_identity_file" {
  type        = string
  default     = "~/.ssh/id_rsa_bastion"
  description = "SSH identity file (ssh private key)"
}
