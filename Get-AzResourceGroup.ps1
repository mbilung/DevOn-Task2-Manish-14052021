# Authenticate to Azure
Connect-AzAccount

# select subscription
Write-Output "Enter SubscriptionName:"
$SubscriptionName = Read-Host
Select-AzSubscription -SubscriptionName $SubscriptionName

# Get a list of all resource groups
Get-AzResourceGroup | Format-Table

# Get a list of all resources in a resource group
Write-Output "Enter ResourceGroupName:"
$ResourceGroupName = Read-Host
Get-AzResource -ResourceGroupName $ResourceGroupName | Format-Table
