#!/bin/bash

# Remover diretórios, grupos e usuários anteriores
echo "Removendo diretórios, grupos e usuários anteriores..."
rm -rf /publico /adm /ven /sec
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC
userdel carlos
userdel maria
userdel joao
userdel debora
userdel sebastiana
userdel roberto
userdel josefina
userdel amanda
userdel rogerio

# Criar diretórios
echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Criar grupos
echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criar usuários
echo "Criando usuários..."
useradd -m -g GRP_ADM carlos
useradd -m -g GRP_VEN maria
useradd -m -g GRP_VEN joao
useradd -m -g GRP_VEN debora
useradd -m -g GRP_VEN sebastiana
useradd -m -g GRP_SEC roberto
useradd -m -g GRP_SEC josefina
useradd -m -g GRP_SEC amanda
useradd -m -g GRP_SEC rogerio

# Definir permissões
echo "Definindo permissões..."
chown -R root:root /publico
chmod -R 777 /publico

chown -R :GRP_ADM /adm
chmod -R 770 /adm

chown -R :GRP_VEN /ven
chmod -R 770 /ven

chown -R :GRP_SEC /sec
chmod -R 770 /sec

# Informações
echo "Configuração concluída."

