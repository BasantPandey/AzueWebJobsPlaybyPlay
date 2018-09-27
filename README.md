# Play by Play Series on Azure Web Jobs

Play by Play Series contains the list of videos that help you to learn the WebJobs from the scratch that includes Azure Web jobs, SharePoint and PowerShell.  

- GitHub library code: https://github.com/BasantPandey/AzureWebJobsPlaybyPlay
- Want to learn the site creation process using Azure Web Jobs, please check out my you tube series: https://www.youtube.com/playlist?list=PLRt3t4Jmzutl4pNYiaOFf1DMVVHGycDOm

## Introduction with Web Jobs?

- Provide the ability to run the background task.

 ## Web Jobs Types
 - Continues
    - Start immediately, when job created. 
Run On All the Instance (Load balancing). 
    - You also restrict to run in the single instance
    - Support remote debugging 
- Triggered 
    - Start only when triggered manually or on schedule.
    - Runs on single instance
    - Doesn’t support the remove debugging 

## Supported file types
- .cmd, .bat , .exe , .ps1 (poweshell, .sh (Bash), .Php(Php), .py (Python), .js( Node.js) and .jar(Java)

## Develop Web jobs (Examples) 

- https://docs.microsoft.com/en-us/azure/app-service/websites-dotnet-deploy-webjobs
- https://docs.microsoft.com/en-us/azure/app-service/webjobs-sdk-get-started
- https://docs.microsoft.com/en-us/azure/app-service/webjobs-sdk-how-to


[![(1/7) WebJobs: Play by Play Series on Azure WebJobs](https://i.ytimg.com/vi_webp/3W8Fm0Fak4c/sddefault.webp)](https://www.youtube.com/embed/3W8Fm0Fak4c "(1/7) WebJobs: Play by Play Series on Azure WebJobs")

[![(2/7)WebJobs: Introduction](https://i.ytimg.com/vi_webp/Z0qwKOiAVJ4/sddefault.webp)](https://www.youtube.com/embed/Z0qwKOiAVJ4 "(2/7)WebJobs: Introduction")

[![(3/7) WebJobs : Azure Portal Overview](https://i.ytimg.com/vi_webp/Gc0wpESvXQU/sddefault.webp)](https://www.youtube.com/embed/Gc0wpESvXQU "(3/7) WebJobs : Azure Portal Overview")

## Setup Environment
- Microsoft Azure Premium license or Visual Studio subscription(https://azure.microsoft.com/en-in/free/search/?&OCID=AID719810_SEM_hi1rUtwt&gclid=CjwKCAjwrNjcBRA3EiwAIIOvq0AM9dOeRVC7EX1TMH3lm1Jo4DKgHX898j7JRELgy4SABds4kTmn2hoCBUYQAvD_BwE&dclid=CN_cqMewsN0CFRAYjgodXHIArQ )
- Visual Studio Code https://code.visualstudio.com/ 
- Add PowerShell Extension https://marketplace.visualstudio.com/items?itemName=ms-vscode.PowerShell 
- For SharePoint Integration, install (https://github.com/SharePoint/pnp-powershell/releases )


[![(4/7) WebJobs: Setup Environment](https://i.ytimg.com/vi_webp/L4vZ85aXVd0/sddefault.webp)](https://www.youtube.com/embed/L4vZ85aXVd0 "(4/7) WebJobs: Setup Environment")

### Configure Web Jobs

- Add Web Jobs
- Setup type of Jobs
    - Continues
    - Manual 
    - Triggered 
        - CRON (https://docs.oracle.com/cd/E12058_01/doc/doc.1014/e12030/cron_expressions.htm)

[![(5/7) WebJobs: Configure Azure WebJobs](https://i.ytimg.com/vi_webp/qAxO1Xe_HCw/sddefault.webp)](https://www.youtube.com/embed/qAxO1Xe_HCw "(5/7) WebJobs: Configure Azure WebJobs")

### Demo : Write First Test Program

Read Web Application Setting values from inside the Azure WebJobs.  

- How to use the PNP SharePoint PowerShell Dlls  
- Download the dependency in local using Save-Module command.
- Include the reference in project
    - Read the site Info from PNP SharePoint PowerShell Dllls.

[![(6/7) WebJobs: Write First Test Program (Introduction)](https://i.ytimg.com/vi_webp/YMqVRvlHGJo/sddefault.webp)](https://www.youtube.com/embed/YMqVRvlHGJo "(6/7) WebJobs: Write First Test Program (Introduction)")

 [![(6/7) WebJobs: Write First Test Program (Create Site Collection)](https://i.ytimg.com/vi_webp/IRD7aEIWpAE/sddefault.webp)](https://www.youtube.com/embed/IRD7aEIWpAE "(6/7) WebJobs: Write First Test Program (Create Site Collection)")

[![(6/7) WebJobs: Write First Test Program (Install PowerShell Module)](https://i.ytimg.com/vi_webp/-3MkAJ-Tevc/sddefault.webp)](https://www.youtube.com/embed/-3MkAJ-Tevc "(6/7) WebJobs: Write First Test Program (Install PowerShell Module)")

[![(6/7) WebJobs: Write First Test Program (Final)](https://i.ytimg.com/vi_webp/ogpeSMQAtIQ/sddefault.webp)](https://www.youtube.com/embed/ogpeSMQAtIQ "(6/7) WebJobs: Write First Test Program (Final)")

## Integration with SharePoint Online using PNP PowerShell Modules
- Connect to the Site Via App Authentication
- Register a SharePoint app
    - _layouts/15/AppRegNew.aspx
- Add permissions to the registered app
    - http://tenent-admin.sharepoint.com/_layouts/15/AppInv.aspx

- Permission XML
```xml
<AppPermissionRequests AllowAppOnlyPolicy="true">
<AppPermissionRequest Scope="http://sharepoint/content/tenant" Right="FullControl" />
<AppPermissionRequest Scope="http://sharepoint/social/tenant" Right="Read" />
<AppPermissionRequest Scope="http://sharepoint/taxonomy " Right="Read" />
</AppPermissionRequests>
```


[![(7/7) WebJobs:  Register SharePoint App](https://i.ytimg.com/vi_webp/boa84OOdu08/sddefault.webp)](https://i.ytimg.com/vi_webp/boa84OOdu08 "(7/7) WebJobs:  Register SharePoint App")

[![(7/7) WebJobs:  Connect to the SharePoint and deploy as an Azure WebJobs](https://i.ytimg.com/vi_webp/id7HUNfSQm8/sddefault.webp)](https://www.youtube.com/embed/id7HUNfSQm8 "(7/7) WebJobs:  Connect to the SharePoint and deploy as an Azure WebJobs")

[![(7/7) WebJobs: Connect SharePoint Using Username and password and deploy as WebJobs](https://i.ytimg.com/vi_webp/zHDWWqld-FM/sddefault.webp)](https://www.youtube.com/embed/zHDWWqld-FM "(7/7) WebJobs: Connect SharePoint Using Username and password and deploy as WebJobs")

[![(7/7) WebJobs:  Connect to the SharePoint and deploy as an Azure WebJobs](https://i.ytimg.com/vi_webp/ITT-f_jfRB0/sddefault.webp)](https://www.youtube.com/embed/ITT-f_jfRB0 "(7/7) WebJobs: SharepointPnPPowershellOnline Module Integration with WebJobs (Introduction)")
