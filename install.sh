#!/bin/sh

# Verifica se o script está sendo executado como root
[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

# Instalação do kdesu
yay -S kdesu --noconfirm

# Cria o diretório .10moonsDriver no diretório do usuário
mkdir -p /home/$USER/.10moonsDriver

# Copia os arquivos do driver para o diretório .10moonsDriver
cp -r -u 10moonsDriver/ /home/$USER/.10moonsDriver

# Copia o arquivo .desktop e o ícone para os diretórios adequados
cp /home/$USER/.10moonsDriver/10moonsDriver/10moonDriver.desktop /usr/share/applications/
cp /home/$USER/.10moonsDriver/10moonsDriver/10moons-T503.svg /usr/share/icons/hicolor/scalable/apps/10moons-T503.svg

# Instalação de dependências Python
sudo python -m pip install evdev pyusb pyaml

# Mensagens de conclusão
echo " "
echo "Application installed!"
echo "to run it, connect the 10moons-T503 tablet and run the application found in the menu."
echo "thanks!"
echo " "
