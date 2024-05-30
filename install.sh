#!/bin/sh

# Prefixo e diretórios para instalação
PREFIX="$1"
CONFIG_PATH="$2"

# Cria diretório de configuração no diretório de construção do pacote
mkdir -p "$CONFIG_PATH"

# Copia os arquivos necessários para os diretórios de construção do pacote
cp -u 10moonsDriver/ -r "$CONFIG_PATH"

# Copia os arquivos para diretórios do sistema usando `install`
install -Dm755 10moonsDriver/10moonDriver.desktop "$PREFIX/usr/share/applications/10moonDriver.desktop"
install -Dm644 10moonsDriver/10moons-T503.svg "$PREFIX/usr/share/icons/hicolor/scalable/apps/10moons-T503.svg"

# Instala as dependências Python no diretório de construção do pacote
python -m pip install --target="$PREFIX/usr/lib/python3.10/site-packages" evdev pyusb pyaml

echo " "
echo "Application installed!"
echo "to run it, connect the 10moons-T503 tablet and run the application found in the menu."
echo "thanks!"
echo " "
