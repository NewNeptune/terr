provider "aws" {
  profile    = "default"
  region     = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-074251216af698218"
  instance_type = "t2.nano"

}
