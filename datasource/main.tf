resource "aws_instance" "ec2-server" {
  ami           = data.aws_instance.remote-ec2.ami
  instance_type = data.aws_instance.remote-ec2.instance_type
  key_name      = data.aws_instance.remote-ec2.key_name
  tags          = data.aws_instance.remote-ec2.tags
}