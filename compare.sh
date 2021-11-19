#!/bin/bash

principal="/home/vinicius/Documentos/UFPA/lab-so/Restaurante-Gaia"
backup="/home/vinicius/Documentos/UFPA/lab-so/secret/Restaurante-Gaia"

change=`diff -r $principal $backup`

if [ $? = 0 ]; then 
	echo "Diretórios iguais, nada a fazer"
else
	echo "Mudanças encontradas: "
	echo $change
	rm -rf $principal
	cp -r $backup /home/vinicius/Documentos/UFPA/lab-so/
fi
