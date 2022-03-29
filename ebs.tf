provider "aws" {
  profile    = "default"
  region     = "us-west-2"
}
resource "aws_ebs_volume" "data-vol" {
 availability_zone = "us-west-2c"
 size = 1
 tags = {
        Name = "data-volume"
 }

}

resource "aws_volume_attachment" "good-morning-vol" {
 device_name = "/dev/sdf"
 volume_id = "${aws_ebs_volume.data-vol.id}"
 instance_id = "i-01f492e4082896375"
}
