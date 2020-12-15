using namespace System.Net

# Input bindings are passed in via param block.
param($Request, $TriggerMetadata)

# https://blog.jourdant.me/post/3-ways-to-download-files-with-powershell
$url = "https://en.wikipedia.org/wiki/File:Cat_poster_1.jpg"
$output = "D:\home\data\SitePackages\CatPicture.jpg"
Invoke-WebRequest -Uri $url -OutFile $output