$a = gci 'E:\Information Base\LIB\MS-DOS' -Recurse
$a | Rename-Item -NewName { $_.name -replace '\.txt','.html' }
