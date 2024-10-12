#!/bin/bash

#Primero generamos el comando para que filtre el total de la memoria ram y lo coloque en un txt.

grep "MemTotal" /proc/meminfo > /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_MEJIAS/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt
#Luego generamos la segunda linea de comando para filtrar el chassis. 
#Antes colocamos un "ECHO" para que imprima la palabra "Chassis Information" para que sea mas especifico lo que muestra la maquina.

echo "Chassis Information" >> /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_MEJIAS/RTA_ARCHIVOS_Examen_20241007
/Filtro_Basico.txt

sudo dmidecode -t chassis | grep Manufacturer >> /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_MEJIAS/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt

#Tambien lo dirigimos con un doble > para que no borre la linea del total de la memoria sino que se agregue.


