#!/bin/bash

#docker run --rm -h "test01" --add-host="puppetServer.dom puppet:IP_puppetServer" puppet/puppet-agent-ubuntu &
#conserva la caché a al hora de pasar puppet
apt-get update

/opt/puppetlabs/bin/puppet-agent --verbose --onetime --no-daemonize --summarize
exit 0
