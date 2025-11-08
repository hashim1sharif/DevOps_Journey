variable "instance_type" {
  type   = string
    default = "t2.micro"
}

# variable "ami" {
#   type = string
#   default = "ami-0bc691261a82b32bc"
# }

locals {
    instance_ami = "ami-0bc691261a82b32bc"
    
}

output "instance_id" {
    description = "the ID of the EC2 instance"
  value = aws_instance.this.id
  
}