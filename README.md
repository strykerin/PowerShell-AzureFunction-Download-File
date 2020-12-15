# PowerShell-AzureFunction-Download-File

This PowerShell Azure Function will download a file every time it's requested. The file will be downloaded to the path `D:\home\data\SitePackages\CatPicture.jpg` in an Azure Function App.

In this sample, the HTTP Trigger function will download a picture of a cat from wikipedia.

The following function `run.ps1` is responsible to download the image:

``` PowerShell
using namespace System.Net

# Input bindings are passed in via param block.
param($Request, $TriggerMetadata)

# https://blog.jourdant.me/post/3-ways-to-download-files-with-powershell
$url = "https://en.wikipedia.org/wiki/File:Cat_poster_1.jpg"
$output = "D:\home\data\SitePackages\CatPicture.jpg"
Invoke-WebRequest -Uri $url -OutFile $output
```
