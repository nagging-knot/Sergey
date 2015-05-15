$path = "C:\Users\Well\Documents\1144.txt"  
    # Читаем файл
Write-Verbose -Message 'Читаем файл $Path'
$Content = Get-Content $Path

# Запускаем Excel
Write-Verbose -Message 'Запускаем Excel...'
$Excel = New-Object -ComObject Excel.Application
# Если указан параметр Verbose
if ($PSBoundParameters.Verbose)
{
    # Выводим подробные сообщения
    $VerbosePreference = "Continue"
    
    # Делаем excel видимым
    $Excel.Visible = $true
}
# Добавляем рабочую книгу
$WorkBook = $Excel.Workbooks.Add()

# Цепляемся к первому листу
$WorkSheet = $WorkBook.Worksheets.Item(1)
# Цикл по строкам
foreach ($Line in $Content)
{
    # Переменные для обозначения ячеек в Excel-файле
    # Строка
    $Row++
    # Первый столбец
    $Column = 1
    
    # Строка разбитая на блоки
    $Result = $Line -split $Separator
    
    # Каждый блок из строки записываем в xls-файл
    foreach ($Item in $Result)
    {
        $WorkSheet.Cells.Item($Row, $Column) = $Item

        # Переходим в следующий столбец
        $Column++
    }
}
$UsedRange = $WorkSheet.UsedRange
$UsedRange.EntireColumn.AutoFit() | Out-Null
# Путь к исходному файлу
$FolderPath = (Get-ChildItem $Path).DirectoryName

# Имя исходного файла без расширения
$BaseName = (Get-ChildItem $Path).BaseName

# Путь к готовому xls-файлу
$xlsPath = Join-Path $FolderPath "$BaseName.xls"

# Сохраняем и выходим
$WorkBook.SaveAs($xlsPath)
$Excel.Quit()
