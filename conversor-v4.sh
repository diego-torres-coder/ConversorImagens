#!/bin/bash

# Navega para o diretório especificado
cd ~/CursoShellScripting/LojaVirtual/CapasLivros

# Percorre os arquivos com extensão .JPG do diretório atual
for arq in *.jpg
do
	# Extrai o nome do arquivo sem a extensão
	nome_arq=$(basename -s .jpg $arq)

	# Realiza a conversão de JPG para PNG
	convert $nome_arq.jpg $nome_arq.png
done
