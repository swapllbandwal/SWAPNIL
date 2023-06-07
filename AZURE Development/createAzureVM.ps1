Login-AzAccount

$username = "swap"
$winCredntials 
Get-AzSubscription

Set-AzContext -SubscriptionName  "Azure subscription 1"

New-AzResourceGroup -Name "ps-rg" -Location  "East US 2"

$vmUserName = "swap"
$vmUserPassword = "P@ssw0rd@123" | ConvertTo-SecureString -AsPlainText -Force
$vmCredentials  = New-Object System.Management.Automation.PSCredential ($vmUserName,$vmUserPassword)

New-AzVM -ResourceGroupName ps-rg -Name "ps-vm" -VirtualNetworkName "ps-vm-vnet" -SubnetName "ps-vm-subnet" -PublicIpAddressName "ps-vm-pip" -OpenPorts 80,3389 -Credential $vmCredentials 
 