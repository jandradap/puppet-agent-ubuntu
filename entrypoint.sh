#!/bin/bash

#docker run --rm -h "test01" --add-host="puppetServer.dom puppet:IP_puppetServer" puppet/puppet-agent-ubuntu &


/opt/puppetlabs/bin/puppet-agent --verbose --onetime --no-daemonize --summarize
exit 0
