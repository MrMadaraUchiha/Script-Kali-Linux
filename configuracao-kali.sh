#!/bin/bash

# Script para configuração inicial do Kali Linux para testes de segurança

# Atualizar repositórios
apt update

# Instalar ferramentas básicas de segurança
apt install -y nmap nikto burp

# Instalar pacotes para ataque de senha
apt install -y john hydra

# Instalar pacotes para exploração de vulnerabilidades
apt install -y metasploit-framework exploitdb

# Instalar pacotes para análise de tráfego de rede
apt install -y tcpdump wireshark tshark

# Instalar pacotes para análise de malware
apt install -y clamav volatility

# Configurar usuário root para acesso remoto
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
systemctl restart sshd

# Configurar firewall
ufw enable
ufw allow ssh
ufw allow http
ufw allow https

# Finalização da instalação
echo "Configuração inicial concluída com sucesso!"