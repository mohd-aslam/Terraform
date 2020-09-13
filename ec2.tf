resource "aws_instance" "webserver01" {
  ami                    = "ami-0e65ed16c9bf1abc7"
  instance_type          = "t2.micro"
  key_name               = "terraform"
  subnet_id              = "subnet-0fd0d7bdabc405307"
  vpc_security_group_ids = ["sg-0774b1360cffb5e3f"]
  user_data              = file("install_httpd.sh")
  tags = {
    Name = "webserver01"
  }
}
