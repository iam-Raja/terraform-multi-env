variable "instance_type" {
    type = map 
    # default ={
    #     db= "t2.micro"
    #     backend="t2.small"
    #     frontend="t2.micro"
    # }
}
variable "environment" {
  
}
variable "tags" {
    type = map
    default= {
    created="Raja"
    Env="Testing"
    terraform = true
    }
  
}

variable "domain_name" {
    type=string
    default="rajapeta.cloud"
  
}

###  R53  #######

variable "zone_id" {
    default ="Z07779852ESP6TKS0688R"
  
}
