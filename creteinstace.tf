provider "aws" {

	access_key = "AKIARLXKCGBPBUS7L7EM"
	secret_key = "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"
	region	= "ap-south-1"
}


resource "aws_instance" "Riva_first_instance"{

count	= 2 
ami	= "ami-0c1a7f89451184c8b"
instance_type	= "t2.micro"

tags	= {

	Name = "Riva-${count.index}"
	}

}
