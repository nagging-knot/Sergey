$i = 1
# Почему первая переменная $i
$MOC = gci "J:\" -recurse 
#Назначаем путь 
ForEach-Object ($dir in $dirs){
# Получаем объекты 
$file.count | % {
# $file остается неизвестной
$extension = $_.Extension
  
  $newName = '{0:d1}{1}' -f  $i, $extension
  
  $i++
    
    "$file $_ $newName => $dir" | add-content log.txt 
}}
# $newName задает счет файлов
# Скрипт выводит номерованный список файлов