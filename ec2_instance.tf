provider "aws" {
  region     = "ap-south-1"
  access_key = "YOUR_ACCESS_KEY"
  secret_key = "YOUR_SECRET_KEY"
}
resource "aws_instance" "myInstance" {
  ami                           = "ami-ID"
  instance_type                 = "t2.micro"
  availability_zone             = "ap-south-1b"
  associate_public_ip_address   = true
  security_groups               = ["SECURITY_GROUP_ID"]
  subnet_id                     = "SUBNET_ID"
  key_name                      = "KEY_PAIR_NAME"  
  root_block_device {
        tags = {
            Name                = "myRootBlockStorage"
        }
        volume_size             = "11"
        volume_type             = "gp2"
  }
  tags = {
        Name                    = "MyInstance"
  }
}