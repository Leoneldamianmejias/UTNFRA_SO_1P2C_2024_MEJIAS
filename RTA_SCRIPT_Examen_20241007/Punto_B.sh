#!/bin/bash

# Especificar el disco que vas a particionar
DISCO="/dev/sdc"

# Desmontar las particiones existentes
echo "Desmontar particiones existentes"
sudo umount ${DISCO}* 2>/dev/null

# Borrar sistemas de archivos existentes
echo "Borrando sistemas de archivos en $DISCO"
sudo wipefs -a $DISCO

# Eliminar todas las particiones existentes en el disco (si es necesario)
echo "Eliminando todas las particiones existentes en $DISCO"
sudo sfdisk --delete $DISCO

# Crear las 11 particiones de igual tamaño
echo "Creando particiones de igual tamaño en $DISCO"
sudo fdisk $DISCO <<EOF
n
p
1

+909M
n
p
2

+909M
n
p
3

+909M
n
e
4


n
l

+909M
n
l

+909M
n
l

+909M
n
l

+909M
n
l

+909M
n
l

+909M
n
l

+909M
n
l

+909M

w
EOF

echo "Particiones creadas correctamente."

# Crear sistemas de archivos en las particiones
echo "Formateando Particiones."
sudo mkfs.ext4 ${DISCO}1
sudo mkfs.ext4 ${DISCO}2
sudo mkfs.ext4 ${DISCO}3
sudo mkfs.ext4 ${DISCO}5
sudo mkfs.ext4 ${DISCO}6
sudo mkfs.ext4 ${DISCO}7
sudo mkfs.ext4 ${DISCO}8
sudo mkfs.ext4 ${DISCO}9
sudo mkfs.ext4 ${DISCO}10
sudo mkfs.ext4 ${DISCO}11

# Crear los puntos de montaje
echo "Montando las particiones en las carpetas correspondientes..."

# Alumno 1
sudo mount ${DISCO}1 ExamenesUTN/Alumno_1/parcial_1
sudo mount ${DISCO}2 ExamenesUTN/Alumno_1/parcial_2
sudo mount ${DISCO}3 ExamenesUTN/Alumno_1/parcial_3

# Alumno 2
sudo mount ${DISCO}5 ExamenesUTN/Alumno_2/parcial_1
sudo mount ${DISCO}6 ExamenesUTN/Alumno_2/parcial_2
sudo mount ${DISCO}7 ExamenesUTN/Alumno_2/parcial_3

# Alumno 3
sudo mount ${DISCO}8 ExamenesUTN/Alumno_3/parcial_1
sudo mount ${DISCO}9 ExamenesUTN/Alumno_3/parcial_2
sudo mount ${DISCO}10 ExamenesUTN/Alumno_3/parcial_3

# Profesores
sudo mount ${DISCO}11 ExamenesUTN/Profesores

echo "Particiones montadas correctamente."

