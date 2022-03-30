# terraform-azure-virtual-network

# Sample value of variables for "terraform.tfvars" or other "variables.tfvars"

```
resource_group_name = "infrastructure-rg-australia-test"
location            = "Australia East"

tags = {
  environment = "TEST"
  product     = "Infrastructure"
}

vnet_name     = "baominhcmg-vnet-aue-test"
address_space = ["10.120.0.0/16", "192.168.0.0/16"]

subnet_names    = ["subnet1", "subnet2", "subnet3", "subnet4"]
subnet_prefixes = ["10.120.10.0/24", "10.120.20.0/24", "10.120.30.0/24", "192.168.1.0/24"]

```

# ##########################################################################################

# How to call the module

```
module "baominhcmg_virtual_network" {
  #source              = "./Modules/terraform-azure-virtual-network"
  source              = "git::https://github.com/philipdvo/terraform-azure-virtual-network.git

  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnet_names        = var.subnet_names
  subnet_prefixes     = var.subnet_prefixes


  subnet_enforce_private_link_endpoint_network_policies = {
    "subnet1" : true
  }

  subnet_service_endpoints = {
    "subnet1" : ["Microsoft.Sql", "Microsoft.Storage"]
  }

  tags = var.tags

}

```