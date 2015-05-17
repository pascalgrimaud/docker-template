[![logo](https://raw.githubusercontent.com/pascalgrimaud/docker-template/master/template_logo.png)]
(https://www.docker.com/)

```
[![Circle CI](https://circleci.com/gh/pascalgrimaud/docker-template.svg?style=svg)]
(https://circleci.com/gh/pascalgrimaud/docker-template)
```

# Information

The base docker image :

  * [pascalgrimaud/ubuntu](https://registry.hub.docker.com/u/pascalgrimaud/ubuntu/)

The GitHub project :

  * [pascalgrimaud/docker-template](https://github.com/pascalgrimaud/docker-template/)


# Installation

You can clone this project and build with docker command :

```
git clone https://github.com/pascalgrimaud/docker-template.git
cd docker-template
docker build -t pascalgrimaud/<container>:<version> .
```

You can build directly from the [GitHub project](https://github.com/pascalgrimaud/docker-template/) :

```
docker build -t pascalgrimaud/<container>:<version> github.com/pascalgrimaud/docker-template.git
```


# Usage

Quick start with binding to port <port> and random password :

```
docker run -d -p <port>:<port> pascalgrimaud/<container>:<version>
```

To get the password :

```
docker logs <id>
```

Start and set a specific password for postgres user :

```
docker run -d -p <port>:<port> -e CONTAINER_PASS="pass" pascalgrimaud/<container>:<version>
```


# Usage with volumes
