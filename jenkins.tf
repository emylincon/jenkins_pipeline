
resource "aws_key_pair" "emeka_key" {
  key_name   = "emeka-key-one"
  public_key = file("~/.ssh/id_rsa.pub")
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "jenkins" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.medium"
  #subnet_id              = var.subnet
  user_data              = file("ubuntu_jenkins.sh")
  key_name               = aws_key_pair.emeka_key.key_name
  vpc_security_group_ids = [aws_security_group.allow_jenkins.id]

  tags = {
    Name = "TestJenkins"
  }
}



