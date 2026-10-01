param(
    [Parameter(Mandatory=$true, HelpMessage="Ingresa el número de puerto a verificar")]
    [int]$Puerto
)

Write-Host "Verificando el puerto $Puerto en localhost..." -ForegroundColor Cyan

# Test-NetConnection verifica la conectividad TCP internamente
$conexion = Test-NetConnection -ComputerName "localhost" -Port $Puerto -WarningAction SilentlyContinue

if ($conexion.TcpTestSucceeded) {
    Write-Host "El puerto $Puerto está ABIERTO." -ForegroundColor Green
} else {
    Write-Host "El puerto $Puerto está CERRADO." -ForegroundColor Red
}
