# Ensure policy is created on Storage container to ensure immutability

Ensure policy is created on Storage container to ensure immutability

## Try on Portal

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Frbickel%2FAzurePolicies%2Fmaster%2Fcontainer-policy%2Fcontainer-policy.policy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "container-policy" -DisplayName "Ensure policy is created on Storage container" -description "Ensure policy is created on Storage container to ensure immutability" -Policy 'https://raw.githubusercontent.com/rbickel/AzurePolicies/master/container-policy/container-policy.rules.json' -Parameter 'https://raw.githubusercontent.com/rbickel/AzurePolicies/master/container-policy/container-policy.parameters.json' -Mode All
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope>  -PolicyDefinition $definition
$assignment 
````


