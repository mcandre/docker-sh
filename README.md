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
* [Node.js](https://nodejs.org/en/) (for dockerlint)
