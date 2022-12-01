#!/bin/bash

for i in {0..10}
do
    python3 maravilloso_y_magnifico_generador_de_vectores.py > generado.txt && $1 < generado.txt >> salida.txt
done

cat salida.txt | grep Time
