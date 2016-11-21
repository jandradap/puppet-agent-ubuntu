# puppet-agent-ubuntu
puppet-agent-ubuntu

The Dockerfile for this image is available in the Puppet-in-Docker repository.

The simplest way of testing the puppet/puppet-agent-ubuntu image is to run it without any arguments.

docker run --link puppet:puppet puppet/puppet-agent-ubuntu
This will connect to a Puppet Server at https://puppet and try to download a catalogue. It will also provide verbose output plus a summary of anything that changed. Note that this is of limited use outside testing, in that this code changes the running container, which then exits.

Any additional arguments are passed straight to Puppet, so you can run any arbitrary Puppet command. For example, getting Help information is as simple as this:

docker run --link puppet:puppet puppet/puppet-agent-ubuntu help
If you want to manage the host using Puppet in the image, you need to mount folders from the host, as well as connect to the host network. For instance, on CoreOS you would do this:

docker run --rm --privileged --hostname agent -v /tmp:/tmp -v /etc:/etc -v /var:/var -v /usr:/usr -v /lib64:/lib64 --link puppet:puppet puppet/puppet-agent-ubuntu
See the examples repository for fully worked examples, including how to run a full Puppet stack using Docker Compose.




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

https://github.com/puppetlabs/puppet-in-docker/tree/master/puppet-agent-ubuntu
