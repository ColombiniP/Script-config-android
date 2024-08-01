#!/bin/bash
#
# instalção php e apache linux
#
# Referencia site: php.com.br/instalacao-php-linux
#
# atualização
sudo apt update && sudo apt upgrade -y

echo -e "Atualizações concluidas!\n\n"

sudo apt-get update

sudo apt-get install apache2 php libapache2-mod-php -y

sudo apt-get install php-soap php-xml php-curl php-opcache php-gd php-sqlite3 php-mbstring php-pgsql php-mysql php8.3-mysql

# habilitando os modulos do apache
#
a2dismod mpm_event
a2dismod mpm_worker
a2enmod mpm_prefork
a2enmod rewrite
a2enmod php8.*

#################################################################################
#	CONFIGURANDO O PHP.INI NO APACHE E NO PROD VIDE SITE DA REFERENCIA
#
#
################################################################################
