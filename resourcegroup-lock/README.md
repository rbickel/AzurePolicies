# Ensure a CannotDelete lock is create for Resource Groups within the scope

Ensure a CannotDelete lock is create for Resource Groups within the scope

## Try on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Frbickel%2FAzurePolicies%2Fmaster%2Fresourcegroup-lock%2Fensure-rg-lock.policy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "ensure-rg-lock" -DisplayName "Ensure a CannotDelete lock" -description "Ensure a CannotDelete lock is create for Resource Groups within the scope" -Policy 'https://raw.githubusercontent.com/rbickel/AzurePolicies/master/resourcegroup-lock/ensure-rg-lock.rules.json' -Parameter 'https://raw.githubusercontent.com/rbickel/AzurePolicies/master/resourcegroup-lock/ensure-rg-lock.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope>  -PolicyDefinition $definition
$assignment 
````



## Try with CLI

````cli

az policy definition create --name 'https-traffic-only' --display-name 'Ensure https traffic only for storage account' --description 'Ensure https traffic only for storage account' --rules 'https://raw.githubusercontent.com/Azure/azure-policy/master/samples/Storage/https-traffic-only/azurepolicy.rules.json' --params 'https://raw.githubusercontent.com/Azure/azure-policy/master/samples/Storage/https-traffic-only/azurepolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "https-traffic-only" 

````
