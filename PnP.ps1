<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2014 v4.1.75
	 Created on:   	26.04.2015 19:37
	 Created by:   	WELL
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
A description of the file.
получение информаци об устройствах PnP
#>
Get-WmiObject Win32_NetworkAdapter | Select-Object Caption, Manufacturer,
Installed, MACAdress, servicesname | ConvertTo-Html -Head "<Link rel='Stylesheet' href='c:\styles.css' type ='text/css' />" | Out-File C:\Users\Iva_\networkAdapter.html



#Requires -Version 2

