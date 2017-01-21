# puppet-agent-ubuntu
[![](https://images.microbadger.com/badges/version/jorgeandrada/puppet-agent-ubuntu.svg)](https://microbadger.com/images/jorgeandrada/puppet-agent-ubuntu "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/jorgeandrada/puppet-agent-ubuntu.svg)](https://microbadger.com/images/jorgeandrada/puppet-agent-ubuntu "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/commit/jorgeandrada/puppet-agent-ubuntu.svg)](https://microbadger.com/images/jorgeandrada/puppet-agent-ubuntu "Get your own commit badge on microbadger.com") [![](https://images.microbadger.com/badges/license/jorgeandrada/puppet-agent-ubuntu.svg)](https://microbadger.com/images/jorgeandrada/puppet-agent-ubuntu "Get your own license badge on microbadger.com")

Imagen de Ubuntu con Puppet Agent para realización de pruebas.
La imagen realiza apt-get update antes de ejecutar puppet agent.

### Ejemplo de ejecucion:

```shell
docker run --rm -h "test01" \
--add-host="puppetServer.dom puppet:IP_puppetServer" \
jorgeandrada/puppet-agent-ubuntu &
```

### Ejemplo de ejecucion con proxy:

```shell
docker run --rm -h "test01" \
--add-host="puppetServer.dom puppet:IP_puppetServer" \
-e "http_proxy=http://myproxy.example:8888" \
-e "https_proxy=https://myproxy.example:8888" \
jorgeandrada/puppet-agent-ubuntu &
```

### Información:

[https://github.com/puppetlabs/puppet-in-docker/tree/master/puppet-agent-ubuntu](https://github.com/puppetlabs/puppet-in-docker/tree/master/puppet-agent-ubuntu)
