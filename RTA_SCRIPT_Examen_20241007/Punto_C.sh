#!/bin/bash

# Crear grupos
echo "Creando grupos."
sudo groupadd p1c2_2024_gAlumno  #Grupo de alumnos
sudo groupadd p1c2_2024_gProfesores #Grupo de Profesores

clave="vagrant"

echo "Creando Usuarios."
# Crear el usuario Alumno 1
sudo useradd -m -s /bin/bash -c "Usuario p1c2_2024_A1" p1c2_2024_A1

# Crear el usuario Alumno 2
sudo useradd -m -s /bin/bash -c "Usuario p1c2_2024_A2" p1c2_2024_A2

# Crear el usuario Alumno 3
sudo useradd -m -s /bin/bash -c "Usuario p1c2_2024_A3" p1c2_2024_A3

# Crear el usuario profesor
sudo useradd -m -s /bin/bash -c "Usuario p1c2_2024_P1" p1c2_2024_P1

# Añadir usuarios a los grupos y establecer la contraseña
#"Usermod -g" sirve para cambiar el grupo principal de cada usuario.
sudo usermod -g p1c2_2024_gAlumno -p $(openssl passwd -1 $clave) p1c2_2024_A1
sudo usermod -g p1c2_2024_gAlumno -p $(openssl passwd -1 $clave) p1c2_2024_A2
sudo usermod -g p1c2_2024_gAlumno -p $(openssl passwd -1 $clave) p1c2_2024_A3
sudo usermod -g p1c2_2024_gProfesores -p $(openssl passwd -1 $clave) p1c2_2024_P1

# Cambiar el dueño y grupo de la carpeta
sudo chown p1c2_2024_A1:p1c2_2024_gAlumno /Examenes-UTN/alumno_1
# Ajustar los permisos
sudo chmod 760 /Examenes-UTN/alumno_1

# Cambiar el dueño y grupo de la carpeta
sudo chown p1c2_2024_A2:p1c2_2024_gAlumno /Examenes-UTN/alumno_2

# Ajustar los permisos
sudo chmod 760 /Examenes-UTN/alumno_2

# Cambiar el dueño y grupo de la carpeta
sudo chown p1c2_2024_A3:p1c2_2024_gAlumno /Examenes-UTN/alumno_3

sudo chmod 760 /Examenes-UTN/alumno_3

# Creamos variables con la ruta de carpeta de cada usuario.
ALUMNO_1="/Examenes-UTN/alumno_1"
ALUMNO_2="/Examenes-UTN/alumno_2"
ALUMNO_3="/Examenes-UTN/alumno_3"
PROFESORES="/Examenes-UTN/profesores"

# En la carpeta de cada alumno se creada un txt con el nombre "Validar" con la informacion de el usuario 
#Usuario 1
sudo -u p1c2_2024_A1 bash -c "whoami > $ALUMNO_1/validar.txt"
#Usuario 2
sudo -u p1c2_2024_A2 bash -c "whoami > $ALUMNO_2/validar.txt"
#Usuario 3
sudo -u p1c2_2024_A3 bash -c "whoami > $ALUMNO_3/validar.txt"
#Usuario profesor
sudo -u p1c2_2024_P1 bash -c "whoami > $PROFESORES/validar.txt"

                                  
