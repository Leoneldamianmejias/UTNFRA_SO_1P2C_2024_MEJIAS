#!/bin/bash

# Obtener el nombre del usuario actual
usuario=$(whoami)

# Crear el directorio principal en el home del usuario
echo "Creando repositorios en /home/${usuario}/Estructura_Asimetrica..."

# Crear dentro de los directorios clientes/ y correo/ carpetas anidadas de cartas del 1 al 100
sudo mkdir -p /home/${usuario}/Estructura_Asimetrica/correo/cartas_{1..100}
sudo mkdir -p /home/${usuario}/Estructura_Asimetrica/cliente/cartas_{1..100}

# Luego de crear todas las carpetas de cartas, se crean las de carteros del 1 al 10 dentro del directorio correo/
sudo mkdir -p /home/${usuario}/Estructura_Asimetrica/correo/carteros_{1..10}

echo "Ejecutando..."
echo "Espere un momento.."

sleep 2

echo "Resultado:"
# Por último, ejecutamos el comando para validar el funcionamiento.
tree /home/${usuario}/Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4

# Ajustar permisos del directorio principal y sus subdirectorios
sudo chown -R "${usuario}:${usuario}" /home/${usuario}/Estructura_Asimetrica
chmod -R 755 /home/${usuario}/Estructura_Asimetrica

