# Adjust the public_key here.
# Must be passed on from
# the outside.
variable "public_key" {
  type = string
}

# Adjust the region here.
# Must be passed on from
# the outside.
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "Name" {
    type = string
    default = "ByTerraform"
}

# The AMI image to boot from,
# currently Ubuntu 14.04 LTS.
# EBS SSD variant.  
variable "amis-ebs-ssd" {
  type = map(string)   # wget -qO- https://cloud-images.ubuntu.com/query/focal/server/released.current.txt | grep -E "amd64" | grep "ebs-ssd" | grep "hvm" | awk '{ print $7 " = " "\"" $8 "\"" }'
  default = {
    us-east-1 = "ami-06c8ff16263f3db59"
    us-east-2 = "ami-045a25a3e38518838"
    }
}

# elastic loadbalancer logging requires policy set to s3 bucket to allow logs stored
# http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-access-logs.html
# variable "principal_ids_elb_logging" {
#   type = map(string)

#   default = {
#     us-east-1      = "127311923021"
#     us-east-2      = "033677994240"
#     us-west-1      = "027434742980"
#     us-west-2      = "79787394619"
#     ca-central-1   = "985666609251"
#     eu-west-1      = "156460612806"
#     eu-central-1   = "054676820928"
#     eu-west-2      = "652711504416"
#     ap-northeast-1 = "582318560864"
#     ap-northeast-2 = "600734575887"
#     ap-southeast-1 = "114774131450"
#     ap-southeast-2 = "783225319266"
#     ap-south-1     = "718504428378"
#     sa-east-1      = "507241528517"
#   }
# }

# #Defining CloudFront IDs
# variable "cfd_id" {
#   type = "list"
#   default = ["E1JV9NIMTKP5XB", "E9NF35NU7YAFC", "E3HAXD5PN1MFDS", "E3KMNTRA741O7R", "EOBOS7XCKHA0P", "E88FIO7KTAHMQ", "EOODQZWLN91TW", "E29QR85NS78LBG", "E29QR85NS78LBG", "E1PGQSNXDUJOM4"]
# }

# variable "s3_buckets" {
#   type    = string
#   default = "NAME-OF-S3-BUCKET"
# }

