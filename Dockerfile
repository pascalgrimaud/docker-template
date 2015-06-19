FROM pascalgrimaud/ubuntu
MAINTAINER Pascal Grimaud <pascalgrimaud@gmail.com>

# update
RUN apt-get -y update

# install python-software-properties (so you can do add-apt-repository)
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-software-properties software-properties-common

# install utilities
RUN apt-get -y install vim curl wget unzip

# installation


# configuration


# clean
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# expose ports
EXPOSE 8080

# volumes
VOLUME ["/directory_1", "/directory_2"]

# add help
ADD help help.txt /
RUN chmod 755 /help

# script to start the container
ADD template_run.sh /template_run.sh
RUN chmod 755 /*.sh
CMD ["/template_run.sh"]
