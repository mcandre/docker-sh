# docker-sh - a Docker container that launches a bash session for running multiple commands

# ABOUT

docker-sh is a brief demonstration of how to launch bash sessions connected to Docker containers, for running multiple commands.

If you've used Vagrant, you may be used to `vagrant ssh` for this. Docker uses `docker <run/exec> -it <IMAGE/CONTAINER> bash` for this.

See `Makefile` for more details.

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-sh/

# EXAMPLE

```
$ make run

root@container # touch test
root@container # ls test
test
root@container # exit

$
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Docker Toolbox](https://www.docker.com/toolbox)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install dockertoolbox
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install virtualbox make
```

* [DockerToolbox-1.8.2c.exe](https://github.com/docker/toolbox/releases/download/v1.8.2c/DockerToolbox-1.8.2c.exe)
