#!/usr/bin/env bash
echo "Script para subir uma maquina com ruby compilado e banco de dados"
`cd root`
read
echo "### Update no sistema ###"
read
echo `apt-get update -y`
echo `apt-get upgrade --show-upgraded -y`
echo "Instalando htop, mysql, pacotes para compilar codigo fonte"
read
echo`apt-get install -y mysql-server htop build-essential autoconf`
echo "Criar uma parta no home do root para arquivar os fontes"
read
echo `mkdir fonts`
echo "Download do ruby"
read
`wget ftp://ftp.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7-p174.tar.gz`
`tar -zxvf ruby-1.8.7-p174.tar.gz;cd ruby-1.8.7-p174`
echo "Conpilando ..."
read
`./configure;make;make test`
echo "Instalando ..."
read
`make install`
echo "Foi compilado e instalado o ruby na versão "`ruby -v`
echo "Instalando zlib ..."
read
`cd ext/zlib;ruby extconf.rb`
`make;make install`
`cd ~/fonts`
echo "Download do rubygems"
read
`wget http://production.cf.rubygems.org/rubygems/rubygems-1.4.1.tgz;tar -zxvf rubygems-1.4.1.tgz;cd rubygems-1.4.1`
echo "Instalando rubygems ..."
read
`ruby setup.rb`
