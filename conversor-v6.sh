#!/bin/bash

converter_para_png() {
    # Captura o primeiro argumento passado para a função
    local caminho_imagem=$1

    # Obtém o nome do arquivo
    nome_arquivo=$(ls $caminho_imagem | awk -F . '{ print $1 }')

    # Usa o ImageMagick para converter de JPG para PNG
    convert $nome_arquivo.jpg $nome_arquivo.png
}


varrer_diretorio() {
    # Navega para o diretório passado como argumento para a função (primeiro argumento)
    cd $1

    # Percorre os arquivos e diretórios do diretório atual
    for arquivo in *
    do
        # Obtém o caminho completo do arquivo desta iteração
        local caminho_arquivo=$(find ~/CursoShellScripting/LojaVirtual/Capas -name $arquivo)

        # Verifica se o caminho do arquivo desta iteração é de um diretório
        if [ -d $caminho_arquivo ]
        then
            # Chama recursivamente esta função
            varrer_diretorio $caminho_arquivo
        else
            # Chama a função que faz a conversão da imagem de JPG para PNG
            converter_para_png $caminho_arquivo
        fi
    done
}


# Chama a função `varrer_diretorio()` passando o diretório pai como argumento
varrer_diretorio /home/diego/CursoShellScripting/LojaVirtual/Capas

# Verifica se o status de saída do último comando é igual a 0
# Isso significa que não houve problemas durante o processo de conversão das imagens
if [ $? -eq 0 ]
then
    echo "Conversões realizadas com sucesso."
else
    echo "Houve um problema durante a conversão das imagens."
fi
