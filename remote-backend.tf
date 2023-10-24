  terraform {
   backend "remote" {
    organization = "zthcloud"
    workspaces {
      name = "learn-terraform-azure"
    }
   }
  }

#   cloud {
#     organization = "zthcloud"
#     workspaces {
#       name = "learn-terraform-azure"
#     }
#   }