﻿$subscriptionId = "6ff9e090-f045-45ba-adec-183d64c01b9b"
$uri = "https://management.azure.com/subscriptions/$subscriptionId/providers/Microsoft.PolicyInsights/policyStates/latest/triggerEvaluation?api-version=2018-07-01-preview"
$azContext = Get-AzContext
$azProfile = [Microsoft.Azure.Commands.Common.Authentication.Abstractions.AzureRmProfileProvider]::Instance.Profile
$profileClient = New-Object -TypeName Microsoft.Azure.Commands.ResourceManager.Common.RMProfileClient -ArgumentList ($azProfile)
$token = $profileClient.AcquireAccessToken($azContext.Tenant.Id)
$authHeader = @{
    'Content-Type'='application/json'
    'Authorization'='Bearer ' + $token.AccessToken
}
Invoke-RestMethod -Method Post -Uri $uri -UseBasicParsing -Headers $authHeader
