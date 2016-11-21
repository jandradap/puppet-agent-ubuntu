#!/bin/bash

#Ejemplo de ejecucion:

#docker run --rm -h "test01" \
#--add-host="puppetServer.dom puppet:IP_puppetServer" \
#-e "http_proxy=http://myproxy.example:8888" \
#-e "https_proxy=https://myproxy.example:8888" \
#puppet/puppet-agent-ubuntu &


#conserva la caché a al hora de pasar puppet
apt-get update

/opt/puppetlabs/bin/puppet agent --verbose --onetime --no-daemonize --summarize
exit 0
