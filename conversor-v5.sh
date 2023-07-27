#!/bin/bash

converter_imagens() {
	# Navega para o diretório especificado
	cd ~/CursoShellScripting/LojaVirtual/CapasLivros

	# Verifica se o diretório png não existe
	if [ ! -d png ]
	then
		# Cria o diretório
		mkdir png
	fi

	for arq in *.jpg
	do
		# Obtém o nome do arquivo sem sua extensão
		local nome_arq=$(basename -s .jpg $arq)

		# Converte de JPG para PNG
		convert $nome_arq.jpg png/$nome_arq.png
	done
}

# Chama a função, redirecionando mensagens de erro no arquivo especificado
converter_imagens 2>erros_conversao.txt

# Verifica se o status de saída do último é igual a 0
if [ $? -eq 0 ]
then
	echo "Conversões realizadas com sucesso."
else
	echo "Ocorreu um erro durante o processo de conversão."
fi
