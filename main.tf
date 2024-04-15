provider "azurerm" {
  skip_provider_registration = "true"
  features {}
}

resource "azurerm_virtual_network" "ttlvnet" {
  name                = "example-vnet"
  resource_group_name = "Abhinav-Saxena-RG"
  location            = "CentralIndia"
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "ttlsubnet" {
  name                 = "aks-subnet"
  resource_group_name  = "Abhinav-Saxena-RG"
  virtual_network_name = "example-vnet"
  address_prefixes     = ["10.0.0.0/24"]
}

resource "azurerm_kubernetes_cluster" "akscluster" {
  name                = "TTL-Cluster"
  location            = "CentralIndia"
  resource_group_name = "Abhinav-Saxena-RG"
  dns_prefix          = "ttlcluster"

  default_node_pool {
    name                 = "default"
    node_count           = 1
    vm_size              = "Standard_D4ds_v5"
    enable_auto_scaling  = true
    min_count            = 1
    max_count            = 1
    vnet_subnet_id       = azurerm_subnet.ttlsubnet.id
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
    dns_service_ip = "10.1.0.10"
    service_cidr   = "10.1.0.0/16"
  }
}
