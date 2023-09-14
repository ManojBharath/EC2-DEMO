resource "aws_instance" "demoec2" {
  count = 3
  ami           = "ami-008b85aa3ff5c1b02"
  instance_type = var.typeofinstance[count.index]
  tags = {
    Name = "Web-Server"
  }
}