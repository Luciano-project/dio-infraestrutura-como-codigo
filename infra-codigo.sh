#!/bin/bash
echo "Criando diretório de usuários..."
mkdir /adm
mkdir /ven
mkdir /sec
mkdir /publico
echo "Criando grupo de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Criando usuários em seus respectivos grupos..."
echo "Criando usuários administradores..."
useradd carlos -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd maria -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd joao -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM
echo "Criando usuários de vendas..."
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
echo "Criando usuários de secretariado..."
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
echo "Especificando permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
echo "Fim..."


