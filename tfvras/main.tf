resource "aws_instance" "expense" {  
  for_each = var.instance_type
  ami                     = data.aws_ami.ami_info.id
  instance_type           = each.value
  vpc_security_group_ids = ["sg-03ec942beb955be40"]
  tags = merge (
    var.tags ,
    {
        Name=each.key
        Module=each.key
        environment=var.environment
    }
  )
} 