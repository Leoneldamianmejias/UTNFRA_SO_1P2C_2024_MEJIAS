#!/bin/bash

# Guardamos en una variable el IP público.
IP=$(curl -s ifconfig.me)

# Guardamos el usuario en una variable.
usuario=$(whoami)

# Guardamos la clave encriptada del usuario osboxes.
clave=$(sudo cat /etc/shadow | grep ${usuario} | awk -F':' '{print $2}')

# Guardamos en una variable el URL del repositorio.
url=$(git remote get-url origin)

# Encadenamos todo en un archivo.
echo "Mi IP publica es: $IP" > /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_MEJIAS/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt
echo "Mi Usuario es: $usuario" >> /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_MEJIAS/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt
echo "El Hash de mi usuario es: $clave" >> /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_MEJIAS/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt
echo "La URL de mi repositorio es: $url" >> /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_MEJIAS/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt

#Lo mostramos con "cat".

cat /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_MEJIAS/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt

