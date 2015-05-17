FROM pascalgrimaud/ubuntu
MAINTAINER Pascal Grimaud <pascalgrimaud@gmail.com>

# update
RUN apt-get -y update

# installation


# configuration


# clean
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# expose ports
EXPOSE 8080

# volumes
VOLUME ["/directory_1", "/directory_2"]

# script to start the container
ADD template_run.sh /template_run.sh
RUN chmod 755 /*.sh
CMD ["/template_run.sh"]
