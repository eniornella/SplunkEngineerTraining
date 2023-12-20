variable "key_pair_name" {
  description = "Name of the key pair to use for EC2 instances"
  type        = string
  default     = "splunk-training"
  
}

variable "key_pair_path" {
  description = "Path to the key pair to use for EC2 instances"
  type        = string
  default     = "C:\\Users\\Enior\\downloads\\splunk-training.pem"
  
}