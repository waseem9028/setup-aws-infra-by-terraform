variable "av_zone_1" {
  type = map(string)

  default = {
    us-east-1      = "us-east-1a"
    us-west-1      = "us-west-1b"
    us-west-2      = "us-west-2a"
  }
}

variable "av_zone_2" {
  type = map(string)

  default = {
    ap-northeast-1 = "ap-northeast-1c"
    ap-northeast-2 = "ap-northeast-2c"
    ap-south-1     = "ap-south-1b"
    ap-southeast-1 = "ap-southeast-1b"
    ap-southeast-2 = "ap-southeast-2b"
    eu-central-1   = "eu-central-1b"
    eu-west-1      = "eu-west-1b"
    sa-east-1      = "sa-east-1b"
    us-east-1      = "us-east-1c"
    us-west-1      = "us-west-1c"
    us-west-2      = "us-west-2b"
  }
}