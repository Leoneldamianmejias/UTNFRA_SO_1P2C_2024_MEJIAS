#!/bin/bash

# Crear el directorio principal
echo "Creando repositorios..."

sudo mkdir -p ~/Estructura_Asimetrica/{correo,clientes}

sudo mkdir -p Estructura_Asimetrica/correo/{cartas_1,cartas_10,cartas_100}

sudo mkdir -p Estructura_Asimetrica/clientes/{cartas_1,cartas_10,cartas_100}
#Crear dentro de los directorios cientes/ y correo/ carpetas anidadas de cartas de 10 a 99
sudo mkdir -p Estructura_Asimetrica/correo/{cartas_{11..19},cartas_2}
sudo mkdir -p Estructura_Asimetrica/clientes/{cartas_{11..19},cartas_2}
sudo mkdir -p Estructura_Asimetrica/correo/{cartas_{20..29},cartas_3}
sudo mkdir -p Estructura_Asimetrica/clientes/{cartas_{20..29},cartas_3}
sudo mkdir -p Estructura_Asimetrica/correo/{cartas_{30..39},cartas_4}
sudo mkdir -p Estructura_Asimetrica/clientes/{cartas_{30..39},cartas_4}
sudo mkdir -p Estructura_Asimetrica/correo/{cartas_{40..49},cartas_5}
sudo mkdir -p Estructura_Asimetrica/clientes/{cartas_{40..49},cartas_5}
sudo mkdir -p Estructura_Asimetrica/correo/{cartas_{50..59},cartas_6}
sudo mkdir -p Estructura_Asimetrica/clientes/{cartas_{50..59},cartas_6}
sudo mkdir -p Estructura_Asimetrica/correo/{cartas_{60..69},cartas_7}
sudo mkdir -p Estructura_Asimetrica/clientes/{cartas_{60..69},cartas_7}
sudo mkdir -p Estructura_Asimetrica/correo/{cartas_{70..79},cartas_8}
sudo mkdir -p Estructura_Asimetrica/clientes/{cartas_{70..79},cartas_8}
sudo mkdir -p Estructura_Asimetrica/correo/{cartas_{80..89},cartas_9}
sudo mkdir -p Estructura_Asimetrica/clientes/{cartas_{80..89},cartas_9}
sudo mkdir -p Estructura_Asimetrica/correo/cartas_{90..99}
sudo mkdir -p Estructura_Asimetrica/clientes/cartas_{90..99}
#Luego de crear todas las carpetas de cartas, se crean las de carteros del 1 al 10 dentro del directorio correo/
sudo mkdir -p Estructura_Asimetrica/correo/{carteros_1,carteros_10}
sudo mkdir -p Estructura_Asimetrica/correo/{carteros_1,carteros_10}
sudo mkdir -p Estructura_Asimetrica/correo/carteros_{1..9}

echo "Ejecuntando..."
echo "Espere un momento.."

sleep 2

echo "Resultado:"
#Por ultimo ejecutamos el comando para validar el funcionamiento.
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
