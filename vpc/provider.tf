provider "aws" {
  profile = "carlosform"
  region  = "us-east-1"
}

provider "aws" {
  profile = "carlosform"
  region  = "us-east-1"
  alias   = "us-east-1"
}