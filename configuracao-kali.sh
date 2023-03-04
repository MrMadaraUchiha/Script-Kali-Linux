#!/bin/bash

Script para configuração inicial do Kali Linux para testes de segurança
set -e # Abortar o script caso algum comando falhe

Atualizar repositórios
sudo apt update -y

Instalar ferramentas básicas de segurança
sudo apt install -y nmap nikto burp

Instalar pacotes para ataque de senha
sudo apt install -y john hydra

Instalar pacotes para exploração de vulnerabilidades
sudo apt install -y metasploit-framework exploitdb

Instalar pacotes para análise de tráfego de rede
sudo apt install -y tcpdump wireshark tshark

Instalar pacotes para análise de malware
sudo apt install -y clamav volatility

Configurar usuário root para acesso remoto
sudo sed -i 's/.PermitRootLogin./PermitRootLogin yes/' /etc/ssh/sshd_config
sudo systemctl restart sshd.service

Configurar firewall
sudo ufw enable
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https

Finalização da instalação
echo "Configuração inicial concluída com sucesso!"
