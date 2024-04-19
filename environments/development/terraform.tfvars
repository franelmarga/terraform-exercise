env = "dev"

env_tags = {
  Environment = "development"
}

region = "us-west-2"

public_subnets = {
  "us-west-2a" = "10.0.1.0/24"
  "us-west-2b" = "10.0.2.0/24"
  "us-west-2c" = "10.0.3.0/24"
}

private_subnets = {
  "us-west-2a" = "10.0.101.0/24"
  "us-west-2b" = "10.0.102.0/24"
  "us-west-2c" = "10.0.103.0/24"
}

availability_zones = [
  "us-west-2a",
  "us-west-2b",
  "us-west-2c"
]

create_nat_gateway = true

