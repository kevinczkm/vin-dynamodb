terraform {
  backend "s3" {
    bucket         = "sctp-ce10-tfstate"       # 👈 Replace with your actual bucket name
    key            = "vin-dyanmodb.tfstate"
    region         = "ap-southeast-1"
  }
}
