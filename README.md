# PowerShell Azure Function Download File

This PowerShell Azure Function will download a file every time it's requested. The file will be downloaded to the path `D:\home\data\SitePackages\CatPicture.jpg` in an Azure Function App.

In this sample, the HTTP Trigger function will download a picture of a cat from wikipedia.

The following function `run.ps1` is responsible to download the image:

``` PowerShell
using namespace System.Net

# Input bindings are passed in via param block.
param($Request, $TriggerMetadata)

$url = "https://en.wikipedia.org/wiki/File:Cat_poster_1.jpg"
$output = "D:\home\data\SitePackages\CatPicture.jpg"
Invoke-WebRequest -Uri $url -OutFile $output
```
## Create and Deploy a PowerShell Azure Function using the cli

To publish the PowerShell function to Azure Function App, run the following command:

``` PowerShell
func azure functionapp publish <Your Function App Name>
```

The following Microsoft's documentation has a great step by step teaching how to create a PowerShell function that responds to HTTP requests:

https://docs.microsoft.com/en-us/azure/azure-functions/create-first-function-cli-powershell?tabs=azure-cli%2Cbrowser 

## How to download files with PowerShell

The blog below explains 3 ways to download files using Powershell and also explains the pros and cons of each solution:

https://blog.jourdant.me/post/3-ways-to-download-files-with-powershell
