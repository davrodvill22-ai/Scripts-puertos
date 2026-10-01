Verificación de Estado de Puertos (Linux & Windows)

Este repositorio contiene los scripts desarrollados para la práctica de Seguridad de Redes y Firewall. El objetivo principal es verificar si un puerto específico se encuentra abierto (en estado listening) o cerrado, tanto en un entorno Linux (usando Docker) como en un entorno Windows local.

Archivos del Proyecto

check_port.sh: Script en Bash diseñado para ejecutarse dentro de un contenedor Linux. Utiliza la herramienta ss (Socket Statistics) para inspeccionar los puertos a la escucha.

Check-Port.ps1: Script en PowerShell para sistemas Windows. Hace uso del cmdlet Test-NetConnection para verificar la conectividad de red local hacia el puerto especificado.

Requisitos

Para Linux: Entorno Docker con iproute2 instalado (o cualquier distribución de Linux compatible con el comando ss).

Para Windows: PowerShell 5.1 o superior.

Instrucciones de Uso

1. Entorno Linux (Bash)

Si estás utilizando el laboratorio en Docker, ingresa a tu contenedor y ejecuta el script pasando el puerto como argumento:

# Dar permisos de ejecución (solo la primera vez)
chmod +x check_port.sh

# Ejecutar el script indicando el puerto, por ejemplo, el 8080
./check_port.sh 8080


2. Entorno Windows (PowerShell)

Abre una terminal de PowerShell en la carpeta donde se encuentra el script y ejecútalo con el parámetro -Puerto:

# Ejecutar indicando el puerto a verificar
.\Check-Port.ps1 -Puerto 8080


Nota: Si recibes un error de políticas de ejecución en Windows, puedes solucionarlo temporalmente abriendo PowerShell como Administrador y ejecutando Set-ExecutionPolicy RemoteSigned.
