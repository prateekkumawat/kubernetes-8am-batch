module "stage_vpc" {
  source = "./modules/vpc"

  env = "stage"
  project = "kubernetes-8am-batch"
  aws_region = "ap-south-1"
  vpc_cidr = "10.10.0.0/16"
    subnet_details = {
        "subnet1" = {
        cidr = "10.10.1.0/24"
        az   = "ap-south-1a"
        },
        "subnet2" = {
        cidr = "10.10.2.0/24"
        az   = "ap-south-1b"
        },      
        "subnet3" = {
        cidr = "10.10.3.0/24"
        az   = "ap-south-1a"
        },
       "subnet4" = {
        cidr = "10.10.4.0/24"
        az   = "ap-south-1b"
        }   
    }
}    

module "stage-sec-grp1" {
  source = "./modules/security-group"

  env = "stage"
  project = "kubernetes-8am-batch"
  aws_region = "ap-south-1"
  vpc_id = module.stage_vpc.vpc_id  
  ingress_rules = {
    "http" = {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    },

    "ssh" = {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
    }

    "https" = {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
    }
  }    

   egress_rules = {
    
        "all" = {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"] 
        }
    
    }

}

module "stage-rds-sec-grp1" {
  source = "./modules/security-group"

  env = "stage"
  project = "kubernetes-8am-batch"
  aws_region = "ap-south-1"
  vpc_id = module.stage_vpc.vpc_id  
  ingress_rules = {
    "mysql" = {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    },
  }    

   egress_rules = {
    
        "all" = {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"] 
        }
    
    }

}

module "stage-rds-instance" {
  source = "./modules/rds"

  env = "stage"
  project = "kubernetes-8am-batch"
  aws_region = "ap-south-1"
  subnet_ids = [module.stage_vpc.subnet1_id, module.stage_vpc.subnet2_id]
  allocated_storage = 20
  engiename = "mysql"
  engine_version = "8.0"
  instance_class = "db.t3.micro"
  username = "admin"
  password = "Admin12345"
  db_security_group_id = module.stage-rds-sec-grp1.aws_security_group_id
}

module "pp_vpc" {
  source = "./modules/vpc"

  env = "pp"
  project = "kubernetes-8am-batch"
  aws_region = "ap-south-1"
  vpc_cidr = "10.20.0.0/16"
    subnet_details = {
        "subnet1" = {
        cidr = "10.20.1.0/24"
        az   = "ap-south-1a"
        },
        "subnet2" = {
        cidr = "10.20.2.0/24"
        az   = "ap-south-1b"
        },      
        "subnet3" = {
        cidr = "10.20.3.0/24"
        az   = "ap-south-1a"
        },
       "subnet4" = {
        cidr = "10.20.4.0/24"
        az   = "ap-south-1b"
        }   
    }
} 

module "pp-sec-grp1" {
  source = "./modules/security-group"

  env = "pp"
  project = "kubernetes-8am-batch"
  aws_region = "ap-south-1"
  vpc_id = module.pp_vpc.vpc_id  
  ingress_rules = {
    "http" = {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    },

    "ssh" = {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
    }

    "https" = {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
    }
  }    

   egress_rules = {
    
        "all" = {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"] 
        }
    
    }
        
}
