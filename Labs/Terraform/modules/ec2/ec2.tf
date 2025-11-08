resource "aws_instance" "this" {
  ami                     = local.instance_ami
  instance_type           = var.instance_type
}
resource "aws_instance" "imported" {
  ami                     = local.instance_ami
  instance_type           = var.instance_type
  tags = {"Name" = "import-terraform"}
}