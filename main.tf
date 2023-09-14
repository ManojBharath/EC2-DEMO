resource "aws_instance" "demoec2" {
 count = 3
  ami           = "ami-0a04068a95e6a1cde"
  instance_type = var.typeofinstance[count.index]

  tags = {

    Name = "Web-Server - [count.index]"
  }

}

