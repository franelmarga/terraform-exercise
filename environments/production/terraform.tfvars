
# Global variables

env = "produ"

env_tags = {
  Environment = "production"
}

region = "us-east-2"

# CIDR block for the public subnets

public_subnets = {
  "us-east-2a" = "10.0.1.0/24"
  "us-east-2b" = "10.0.2.0/24"
  "us-east-2c" = "10.0.3.0/24"
}

# CIDR block for the private subnets

private_subnets = {
  "us-east-2a" = "10.0.101.0/24"
  "us-east-2b" = "10.0.102.0/24"
  "us-east-2c" = "10.0.103.0/24"
}

# Availability zones in the region. Always three for maintaining high availability.

availability_zones = [
  "us-east-2a",
  "us-east-2b",
  "us-east-2c"
]

# NAT gateways are expensive, so we can choose to create them or not.

create_nat_gateway = true

