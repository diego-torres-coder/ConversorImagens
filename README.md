# Conversor de Imagens JPG para PNG

Este *script* realiza a conversão de imagens com extensão `.jpg` para `.png` usando uma biblioteca do Linux conhecida como **ImageMagick**. 

## Instalação do ImageMagick

Para instalar esta biblioteca, abra o terminal e digite o seguinte comando:

```bash
sudo apt install imagemagick
```

## Cenário 1

Temos um diretório que contém um conjunto de 29 imagens de capas de livros de programação em formato `.jpg`, as quais desejamos converter para o formato `.png` e armazenar em um diretório intitulado `png`.

Inicialmente, devemos navegar até o diretório que contém as imagens que desejamos converter. Para isso, usamos o seguinte comando:

```bash
cd ~/CursoShellScripting/LojaVirtual/CapasLivros
```

Uma vez dentro deste diretório, precisamos verificar se o diretório `png` existe. Caso ele não exista, devemos criá-lo com o seguinte comando:

```bash
mkdir png
```

Em seguida, devemos percorrer os arquivos do diretório atual para obter os nomes dos arquivos cuja extensão é `.jpg`. Com o nome de um arquivo, podemos usar o **ImageMagick** para efetuar sua conversão, tal como no exemplo a seguir:

```bash
convert postgres.jpg postgres.png
```

Por fim, devemos verificar se houve alguma falha durante o processo. Em caso positivo, devemos exibir uma mensagem de erro para o usuário e atualizar o arquivo de log — erros_conversao.txt — para os administradores do sistema estudarem o erro.

Se não houver falha no processo — status de saída da chamada à função `obter_imagens_png` igual a 0 —, este comando será executado:

```bash
echo "Conversões executadas com sucesso."
```

Porém, se houver alguma falha, este comando será executado:

```bash
echo "Houve uma falha no processo de conversão."
```

## Cenário 2

Neste cenário, as imagens foram agrupadas por categorias como backend, frontend, business, mobile etc. Para cada categoria foi criado um diretório para armazenar as imagens. Para este caso, use o *script* intitulado `conversor-v6.sh`.
