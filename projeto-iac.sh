#!/bin/bash

echo "DIRETÓRIOS:"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "GRUPOS DE USUÁRIOS:"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "USUÁRIOS:"
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 1529051994) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt 1529051994) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt 1529051994) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt 1529051994) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt 1529051994) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt 1529051994) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt 1529051994) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt 1529051994) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt 1529051994) -G GRP_SEC

echo "PERMISSÕES:"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "OPERAÇÃO FINALIZADA."
