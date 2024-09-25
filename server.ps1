param (
    [string]$Command
)

function Start-Server {
    $phpPath = "C:\php\php.exe"  # Replace with the actual path to php.exe
    $phpProcess = Start-Process -FilePath $phpPath -ArgumentList "-S localhost:8000 -t $(Get-Location)" -PassThru
    $phpProcess.Id | Out-File "php-server.pid"
    Write-Host "PHP server started with PID $($phpProcess.Id)"
}

function Stop-Server {
    if (Test-Path "php-server.pid") {
        $phpPid = Get-Content "php-server.pid"
        Stop-Process -Id $phpPid
        Remove-Item "php-server.pid"
        Write-Host "PHP server stopped"
    } else {
        Write-Host "PHP server is not running"
    }
}

function Check-Status {
    if (Test-Path "php-server.pid") {
        $phpPid = Get-Content "php-server.pid"
        Write-Host "PHP server is currently running"
        Write-Host "PID of such is $phpPid"
    } else {
        Write-Host "No PHP server is currently running"
    }
}

function Restart-Server {
    Stop-Server
    Start-Server
}

switch ($Command) {
    "start" { Start-Server }
    "status" { Check-Status }
    "stop" { Stop-Server }
    "restart" { Restart-Server }
    default { Write-Host "Usage: .\server.ps1 {start|stop|restart|status}" }
}
