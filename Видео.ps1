$wc = new-object net.webclient
[regex]$regex ="(?<url>http://download.microsoft.com/download/./././[0-f]{8}-[0-f]{4}-[0-f]{4}-[0-f]{4}-[0-f]{12}/(?<file>[^>]*?wmv))"
[xml]$xml =  $wc.DownloadString("http://www.microsoft.com/feeds/TechNet/en-us/How-to-videos/SQL_Server_2008_Microsoft_Certified_Master_(MCM)_Readiness_Videos.xml")
$xml.rss.channel.item | foreach {
    if ($wc.DownloadString($_.link) -match $regex)
    {
        $url = $matches.url
        $file =  "$home\Videos\$($matches.file)"
        if (Test-Path $file)
        {Write-Host "$file is already there mate"}
        else {
            Write-Host "Downloading $file"
            $wc.DownloadFile($url,$file)
        }
    }
}