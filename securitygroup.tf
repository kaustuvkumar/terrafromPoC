resource "aws_security_group" "allow-ssh" {
    vpc_id = "${aws_vpc.testvpc.id}"
    Name = "allow-ssh"
    description = "allow ssh access"
    egress {
        from_port = 0
        to_port = 0
        protocol = '-1'
        cidr_blocks = ["0.0.0.0/16"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = 'tcp'
        cidr_blocks = ["0.0.0.0/16"]
    }
    tags {
        Name = "allow-ssh"
    }
}