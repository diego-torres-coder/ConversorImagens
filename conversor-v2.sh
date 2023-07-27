#!/bin/bash

# Armazena o caminho do diretório que contém as capas dos livros
CAMINHO_CAPAS_LIVROS=~/CursoShellScripting/LojaVirtual/CapasLivros

# Converte o primeiro arquivo passado como argumento para o formato png
convert $CAMINHO_CAPAS_LIVROS/$1.jpg $CAMINHO_CAPAS_LIVROS/$1.png

# Converte o segundo arquivo
convert $CAMINHO_CAPAS_LIVROS/$2.jpg $CAMINHO_CAPAS_LIVROS/$2.png
