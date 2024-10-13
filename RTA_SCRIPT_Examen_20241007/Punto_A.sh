#!/bin/bash

#Creamos el scrip para hacer las estructuras simétricas.
usuario=$(whoami)
sudo mkdir -p /home/${usuario}/Examenes-UTN/{{Alumno_1,Alumno_2,Alumno_3}/parcial_{1..3},Profesores}
# Mensaje para indicar donde de creo el repositorio.
echo "Estructura de directorios creada en /home/${usuario}/Examenes-UTN/"
