  required_providers {    
    azurerm = {    
      source = "hashicorp/azurerm"    
    }    
  }    
} 
   
provider "azurerm" {    
  features {}    
}

resource "azurerm_resource_group" "resource_group" {
  name     = "ci-cd-poc"
  location = "central india"
}

resource "azurerm_app_service_plan" "app_service_plan" {
  name                = "centria health care"
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "app_service" {
  name                = "centria care1 "
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id

  
  site_config {
dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }
  
 
   {
   
  

}
