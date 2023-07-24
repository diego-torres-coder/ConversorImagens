#!/bin/bash

obter_imagens_png() {

	# Navega para o diretório que contém as imagens das capas dos livros
	cd ~/CursoShellScripting/LojaVirtual/imagens-livros

	# Verifica se o diretório png não existe
	if [ ! -d png ]
	then
		# Cria o diretório png
		mkdir png
	fi

	# Percorre os arquivos com extensão `jpg` do diretório atual
	for imagem in *.jpg
	do
		# Extrai o nome do arquivo e o armazena em uma variável local
		local nome_imagem=$(ls $imagem | awk -F . '{ print $1 }')

		# Usa o ImageMagick para converter a imagem de `jpg` para `png`
		convert $nome_imagem.jpg png/$nome_imagem.png  
	done

}

# Chama a função para converter as imagens
obter_imagens_png 2>erros_conversao.txt

if [ $? -eq 0 ]
then
	echo "Conversões realizadas com sucesso."
else
	echo "Houve uma falha no processo de conversão."
fi
