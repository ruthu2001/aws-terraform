resource "aws_instance" "my_ec2" {
  ami           = "ami-0a14f53a6fe4dfcd1" 
  instance_type = "t3.micro"
 
  tags = {
    Name = "MyTerraformEC2"
  }
}


