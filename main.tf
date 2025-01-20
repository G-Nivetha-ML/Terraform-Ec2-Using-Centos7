provider "aws" {
    region= "us-east-1"
}
resource "aws_instance" "example"{
    ami = "ami-002070d43b0a4f171"
    instance_type= "t2.micro"
    subnet_id= "subnet_0c462b97aefb6257f"
    key_name= "centoskey"
}
output "instance_id"{
    value= aws_instance.example.id
}
output "instance_public_ip"{
    value= aws_instance.example.public_ip
}