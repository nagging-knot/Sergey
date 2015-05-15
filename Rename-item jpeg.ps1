$i = 1
#Переменная i указывает с какого числа будет производится переименование
Get-ChildItem -Path "J:\MP3\Кино" -Filter *.mp3 |
ForEach-Object {
    $extension = $_.Extension
    $newName = 'Кино{0:d1}{1}' -f  $i, $extension
#Splin (Имя файла) d1 цифр после Имени файла Example - Music1
    $i++
    Rename-Item -Path $_.FullName -NewName $newName 
}