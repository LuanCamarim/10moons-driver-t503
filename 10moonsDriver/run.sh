#!/bin/bash

# Comando que você deseja executar como root
comando_python="python3 /home/luan-camarim/10moons-driver/driver.py"

# Mostrar notificação de início
notify-send "Iniciando" "O script Python está sendo executado..."

# Executar o comando Python como root
pkexec $comando_python &

# Pegar o PID do processo em execução
pid=$!

# Verificar se o processo ainda está em execução
while kill -0 $pid 2>/dev/null; do
    sleep 1
done

# Mostrar notificação de conclusão
notify-send "Concluído" "O script Python terminou a execução."
