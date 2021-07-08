#!/bin/bash

echo "Faz o download do bootstrap a partir do GitHub"
wget -O /tmp/master.zip https://github.com/ProfessionalWiki/Bootstrap/archive/master.zip 

echo "Extrai o arquivo do Bootstrap"
unzip /tmp/master.zip

echo "Move a pasta do Bootstrap para a pasta da MediaWiki"
/tmp/Boostrap-master /var/www/html/extensions/Bootstrap

echo "Instala o PHP-cURL e o Unzip"
apt update && apt install php-curl unzip zip -y

echo "Download do instalador do Composer" 
wget -O /var/www/html/composer-setup.php http://getcomposer.org/installer

echo "Instala o Composer usando o instalador #esta sendo instalado o Composer 2"
php /var/www/html/composer-setup.php

echo "Remove o instalador do Composer"
rm /var/www/html/composer-setup.php

echo "Atualiza o Composer 2"
php composer.phar update -n
