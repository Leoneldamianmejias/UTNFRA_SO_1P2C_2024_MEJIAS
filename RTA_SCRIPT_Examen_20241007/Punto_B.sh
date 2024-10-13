#!/bin/bash
# Variable usuario
usuario=$(whoami)

# Especificar el disco que vas a particionar
DISCO="/dev/sdc"

# Desmontar las particiones existentes
echo "Desmontando particiones existentes"
sudo umount ${DISCO}* 2>/dev/null

# Borrar sistemas de archivos existentes
echo "Borrando sistemas de archivos en $DISCO"
sudo wipefs -a $DISCO

# Eliminar todas las particiones existentes en el disco
echo "Eliminando todas las particiones existentes en $DISCO"
sudo sfdisk --delete $DISCO

# Crear particiones de igual tamaño
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
5

+909M
n
l
6

+909M
n
l
7

+909M
n
l
8

+909M
n
l
9

+909M
n
l
10

+909M
n
l
11

+909M

w
EOF

echo "Particiones creadas correctamente."

sleep 2  # Un sleep para que el sistema se actualice bien.

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

sleep 2  # Otro sleep por las dudas.

# Alumno 1
sudo mount ${DISCO}1 /home/${usuario}/Examenes-UTN/Alumno_1/parcial_1
sudo mount ${DISCO}2 /home/${usuario}/Examenes-UTN/Alumno_1/parcial_2
sudo mount ${DISCO}3 /home/${usuario}/Examenes-UTN/Alumno_1/parcial_3

# Alumno 2
sudo mount ${DISCO}5 /home/${usuario}/Examenes-UTN/Alumno_2/parcial_1
sudo mount ${DISCO}6 /home/${usuario}/Examenes-UTN/Alumno_2/parcial_2
sudo mount ${DISCO}7 /home/${usuario}/Examenes-UTN/Alumno_2/parcial_3

# Alumno 3
sudo mount ${DISCO}8 /home/${usuario}/Examenes-UTN/Alumno_3/parcial_1
sudo mount ${DISCO}9 /home/${usuario}/Examenes-UTN/Alumno_3/parcial_2
sudo mount ${DISCO}10 /home/${usuario}/Examenes-UTN/Alumno_3/parcial_3

# Profesores
sudo mount ${DISCO}11 /home/${usuario}/Examenes-UTN/Profesores

echo "Particiones montadas correctamente."

