$url = 'https://sf.1gb.ru/f/282ea70ffa/'

$object = New-Object NET.WebClient

$LocalPath = "$home\Document\Object_and_types.pdf"

$object.DownloadFile ( $url,$Localpath )

Explorer.exe "/SELECT, $LocalPath" Invoke-Item -Path $LocalPath


