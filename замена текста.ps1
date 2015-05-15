<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2014 v4.1.75
	 Created on:   	26.04.2015 21:21
	 Created by:   	WELL
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>
"откаты", "закаты", "рассветы" > J:\test.txt
type J:\test.txt
(Get-Content J:\test.txt) | ForEach-Object { $_ -replace "1", "a" } | Set-Content J:\test.txt
# Скрипт создает файл текстового формата и вносит текст в него, 
# выводит на экран содиржимое файла, заменяет первую строчку текста в файле.