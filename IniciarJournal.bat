@echo off
cd /d C:\Users\pazde\iq-danielpaz-server

:: Verificar si el servidor ya esta corriendo en puerto 3000
netstat -ano | findstr ":3000" | findstr "LISTENING" >nul 2>&1
if %errorlevel% == 0 (
    echo Servidor ya corriendo - abriendo navegador...
    start "" "http://localhost:3000"
    exit /b
)

:: Iniciar servidor en segundo plano (ventana minimizada)
echo Iniciando servidor IQ Journal...
start "IQ Journal Server" /min cmd /c "npm start"

:: Esperar 3 segundos para que el servidor arranque
timeout /t 3 /nobreak >nul

:: Abrir navegador
start "" "http://localhost:3000"
