provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_dynamodb_table" "vin-bookinventory" {
    name = "vin-bookinventory"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "ISBN"
    range_key = "Genre"

    attribute {
      name = "ISBN"
      type = "S"
    }

    attribute {
      name = "Genre"
      type = "S"
    }

    tags = {
        Name = "BookInventoryTable"
        Environment = "Dev"
    }
}

