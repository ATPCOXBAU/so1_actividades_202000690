# Servicio de `systemd` que imprime un saludo y la fecha

Este servicio de `systemd` ejecuta un script en bash que imprime un saludo y la fecha infinitamente, con una pausa de un segundo entre cada impresión.

## Instalación

1. Copie el script `saludo.sh` a `/usr/local/bin/`
2. Guarda el archivo y otorga permisos de ejecución:
    ``` bash
    chmod +x saludo.sh
3. Crea un nuevo archivo llamado saludo.service en el directorio /etc/systemd/system/ y pega el  contenido del archivo saludo.service

4. Recarga la configuración de systemd para que reconozca la nueva unidad:
    ``` bash
    sudo systemctl daemon-reload

5. Iniciar y habilitar el servicio:
    ``` bash
    sudo systemctl start saludo.service
    sudo systemctl enable saludo.service
6. Verifica el estado del servicio:
    ``` bash
    sudo systemctl status saludo.service

