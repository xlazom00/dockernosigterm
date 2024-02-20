try {
    while ($true) {
		Write-Host "I AM ALIVE";
	  Start-Sleep -Seconds 2; 
	}
}
finally {
    Write-Host "Entry point SHUTDOWN START";
    Start-Sleep -Seconds 2;
	Write-Host "Entry point SHUTDOWN START 2";
    Start-Sleep -Seconds 2;
	Write-Host "Entry point SHUTDOWN START 3";
    Start-Sleep -Seconds 2;
	Write-Host "Entry point SHUTDOWN START 4";
    Start-Sleep -Seconds 10;
}