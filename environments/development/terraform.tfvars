
# Global variables

env = "dev"

env_tags = {
  Environment = "development"
}

region = "us-east-1"

vpc_cidr = "10.0.0.0/16"

# CIDR block for the public subnets

public_subnets = {
  "us-east-1a" = "10.0.1.0/24"
  "us-east-1b" = "10.0.2.0/24"
  "us-east-1c" = "10.0.3.0/24"
}

# CIDR block for the private subnets

private_subnets = {
  "us-east-1a" = "10.0.101.0/24"
  "us-east-1b" = "10.0.102.0/24"
  "us-east-1c" = "10.0.103.0/24"
}

# Availability zones in the region. Always three for maintaining high availability.

availability_zones = [
  "us-east-1a",
  "us-east-1b",
  "us-east-1c"
]

# NAT gateways are expensive, so we can choose to create them or not.

create_nat_gateway = true

