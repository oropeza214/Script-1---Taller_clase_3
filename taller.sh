#! /bin/bash

# Crear las carpetas necesarias
mkdir -p Taller_clase_3/Archivos 
mkdir -p Taller_clase_3/Mover_Imagen1_aqui

# Ir a la carpeta Archivos
cd ./Taller_clase_3/Archivos

# Crear Texto_planos y archivos dentro de Texto_planos
mkdir -p Texto_planos
cd Texto_planos
touch Texto_plano1.txt
touch Texto_plano2.txt
cd ..
cd ..

# Crear la carpeta PDF
mkdir -p PDF

# Descargar un archivo PDF (reemplaza URL_PDF con la URL deseada)
url="https://www.file.io/66V3/download/WwgYMlArqp4f"
curl -o PDF/Archivo.pdf "$url"

# Mover la imagen
cd ./Archivos
url="https://i.pinimg.com/1200x/e0/07/71/e007710db2d9a77f269655c17d0005b0.jpg"
curl -o Imagen1.jpg "$url"
mv Imagen1.jpg ../Mover_Imagen1_aqui

# Generar la estructura de directorios en un archivo de texto
tree ../ > estructura.txt
