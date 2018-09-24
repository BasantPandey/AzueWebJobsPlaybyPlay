$ProgressPreference = "SilentlyContinue"
$WarningPreference = "SilentlyContinue"
#Import Modudle
Import-Module $PSScriptRoot\SharePointPnPPowerShellOnline\SharePointPnPPowerShellOnline.psd1 -ErrorAction SilentlyContinue

#Read values from the Application Settings WebJobs

$tenantURL = ([environment]::GetEnvironmentVariable("APPSETTING_TenantURL"))
$tenantURL1 = ([environment]::GetEnvironmentVariable("APPSETTING_TenantURL"))
$User = ([environment]::GetEnvironmentVariable("APPSETTING_User"))
$PlainPassword = ([environment]::GetEnvironmentVariable("APPSETTING_PWord"))

#Create the Secure Password
$SecurePassword = $PlainPassword | ConvertTo-SecureString -AsPlainText -Force
Write-Output  $tenantURL
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User,$SecurePassword

#Create the Admin URL incase to connect to the Admin 
$uri = [Uri]$tenantURL
$tenantUrl = $uri.Scheme + "://" + $uri.Host
$tenantAdminUrl = $tenantUrl.Replace(".sharepoint", "-admin.sharepoint")


$SiteCreationUrl = "/teams/sitecreation"
"$tenantURL1$SiteCreationUrl"

Connect-PnPOnline -Url "$tenantURL1$SiteCreationUrl" -Credentials $Credential
$site = Get-PnPSite 
$site.Context.Load($site.RootWeb)
$site.Context.ExecuteQuery()
$Title ='Site Title: ' + $site.RootWeb.Title
Write-Output $Title
Disconnect-PnPOnline
