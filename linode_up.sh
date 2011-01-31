#!/usr/bin/env bash
`cd root`
`apt-get update -y`
`apt-get upgrade --show-upgraded -y`
`apt-get install -y mysql-server htop install build-essential autoconf`
`mkdir fonts`
`wget ftp://ftp.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7-p174.tar.gz`
`tar -zxvf ruby-1.8.7-p174.tar.gz`
`cd ruby-1.8.7-p174`
`./configure;make;make test`
`make install`
`ruby -v`
`cd ..`
`wget http://production.cf.rubygems.org/rubygems/rubygems-1.4.1.tgz;tar -zxvf rubygems-1.4.1.tgz;cd rubygems-1.4.1`
`ruby setup.rb`
