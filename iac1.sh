#!/bin/bash

echo "Criando Diretórios...."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários"
useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd leonardo -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd leandro -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd jose -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd fernando -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Concedendo permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."

