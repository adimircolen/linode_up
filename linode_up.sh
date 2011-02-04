#!/usr/bin/env bash
echo "Script para subir uma maquina com ruby compilado e banco de dados"
`cd root`
echo "### Update no sistema ###"
echo `apt-get update -y`
echo `apt-get upgrade --show-upgraded -y`
echo "Instalando htop, mysql, pacotes para compilar codigo fonte"
echo`apt-get install -y mysql-server htop build-essential autoconf`
echo "Criar uma parta no home do root para arquivar os fontes"
echo `mkdir fonts`
echo "Download do ruby"
`wget ftp://ftp.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7-p174.tar.gz`
`tar -zxvf ruby-1.8.7-p174.tar.gz;cd ruby-1.8.7-p174`
echo "Conpilando ..."
`./configure;make;make test`
echo "Instalando ..."
`make install`
echo "Foi compilado e instalado o ruby na versão "`ruby -v`
echo "Instalando zlib ..."
`cd ext/zlib;ruby extconf.rb`
`make;make install`
`cd ~/fonts`
echo "Download do rubygems"
`wget http://production.cf.rubygems.org/rubygems/rubygems-1.4.1.tgz;tar -zxvf rubygems-1.4.1.tgz;cd rubygems-1.4.1`
echo "Instalando rubygems ..."
`ruby setup.rb`
