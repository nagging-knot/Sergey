<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2014 v4.1.75
	 Created on:   	26.04.2015 21:12
	 Created by:   	WELL
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>
get-childitem "J:\Book's\"* -include *.txt -recurse |
#Скрипт выполняет поиск в папках и подпапках в файле формата текст слово Macrosoft
select-string -pattern "Microsoft" -casesensitive