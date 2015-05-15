<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2014 v4.1.75
	 Created on:   	26.04.2015 19:10
	 Created by:   	WELL
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.



#>

$a = New-Object -ComObject Excel.Application
$a.Visible = $true
$b = $a.WorkBooks.Add()
$c = $b.WorkSheets.Item(1)
$c.Cells.Item(1, 1) = "Service Name"
$c.Cells.Item(1, 2) = "Service Status"
$i = 2
Get-Service | ForEach-Object { $c.Cells.item($i, 1) = $_.name 
	$c.cells.item($i, 2) = $_.Status; $i = $i + 1 }
$b.SaveAs("C:\Users\Iva_\Test.xls")
$a.Quit()