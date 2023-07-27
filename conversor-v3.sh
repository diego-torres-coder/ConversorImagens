#!/bin/bash

# Navega para o diretório especificado
cd ~/CursoShellScripting/LojaVirtual/CapasLivros

# Percorre todos os argumentos passados pelo usuário
for arq in $@
do
	# Converte o arquivo de JPG para PNG
	convert $arq.jpg $arq.png
done
