#!/bin/bash
#sudo apt-get install jq  INSTALAR JQ PARA UBUBNTU / DEBIAN
read -p "Ingrese el nombre de usuario de GitHub: " GITHUB_USER

# Consultar la URL de GitHub
response=$(curl -s "https://api.github.com/users/$GITHUB_USER")

# Extraer datos del JSON
user=$(echo $response | jq -r '.login')
id=$(echo $response | jq -r '.id')
created_at=$(echo $response | jq -r '.created_at')

# Imprimir el mensaje
echo "Hola $user. User ID: $id. Cuenta fue creada el: $created_at."

# Crear un log file en /tmp/<fecha>/saludos.log
fecha=$(date +%Y-%m-%d)
log_dir="/tmp/$fecha"
log_file="$log_dir/saludos.log"

mkdir -p "$log_dir"
echo "Hola $user. User ID: $id. Cuenta fue creada el: $created_at." >> "$log_file"

# Crear un cronjob para que el script se ejecute cada 5 minutos
(crontab -l ; echo "*/5 * * * * /path/to/your/script.sh") | crontab -