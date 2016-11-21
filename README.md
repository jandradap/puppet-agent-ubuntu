# puppet-agent-ubuntu

```shell
docker run --link puppet:puppet puppet/puppet-agent-ubuntu help
```


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

### Info:

https://github.com/puppetlabs/puppet-in-docker/tree/master/puppet-agent-ubuntu
