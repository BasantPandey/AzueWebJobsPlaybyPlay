function Connect([string]$Url) {    
    if ($Url -eq $Global:lastContextUrl) {
        return
    }
    if ($appId -ne $null -and $appSecret -ne $null) {
        Connect-PnPOnline -Url $Url -AppId $appId -AppSecret $appSecret
    }
    else {
        Connect-PnPOnline -Url $Url
    }
    $Global:lastContextUrl = $Url
}

$ProgressPreference = "SilentlyContinue"
$WarningPreference = "SilentlyContinue"
Import-Module $PSScriptRoot\SharePointPnPPowerShellOnline\SharePointPnPPowerShellOnline.psd1 -ErrorAction SilentlyContinue

$tenantURL = ([environment]::GetEnvironmentVariable("APPSETTING_TenantURL"))
$tenantURL1 = ([environment]::GetEnvironmentVariable("APPSETTING_TenantURL"))
$appId = ([environment]::GetEnvironmentVariable("APPSETTING_AppId"))
$appSecret = ([environment]::GetEnvironmentVariable("APPSETTING_AppSecret"))



$uri = [Uri]$tenantURL
$tenantUrl = $uri.Scheme + "://" + $uri.Host
$tenantAdminUrl = $tenantUrl.Replace(".sharepoint", "-admin.sharepoint")
$SiteCreationURL = "/teams/sitecreation"
Connect -Url "$tenantURL1$SiteCreationURL"
$site = Get-PnPSite 
$site.Context.Load($site.RootWeb)
$site.Context.ExecuteQuery()
$Title ='Site Title: ' + $site.RootWeb.Title
Write-Output $Title
Disconnect-PnPOnline
