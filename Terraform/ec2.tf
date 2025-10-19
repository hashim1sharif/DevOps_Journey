resource "aws_instance" "this" {
  ami                     = "ami-0bc691261a82b32bc"
  instance_type           = "t2.micro"
  
}

resource "aws_instance" "imported" {
  ami                     = "ami-0bc691261a82b32bc"
  instance_type           = "t2.micro"

  tags = {
          "Name" = "test.tf-demo"
        }
  
}