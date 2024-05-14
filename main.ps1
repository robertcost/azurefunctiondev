param (
	[parameter(Mandatory = $true)]
	[string]$user
)

    connect-mggraph
    #Enable user
    $userad = Get-MgUser -Filter "Mail eq '$user'"
    Get-MgUser -Filter "Mail eq '$user'"
    Write-Host $userad.Mail -ForegroundColor Green
    #Set-AzureADUser -ObjectId $user -AccountEnabled $false
    Write-host "ACCOUNT ENABLED?"
    Write-host $userad.AccountEnabled
    write-host " "
    write-host " "
    
