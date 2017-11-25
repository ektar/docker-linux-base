FROM library/ubuntu:16.04
MAINTAINER eric@ds-do.com

RUN apt-get update && apt install -qy \
    curl \
	graphviz \
    emacs24-nox \
    less \
    iputils-ping \
	mariadb-client \
	nodejs-legacy \
	npm \
	openssh-client \
	openssh-server \
	postgresql-client \
	screen \
	telnet \
	tmux \
	tzdata \
    vim \
	wget \
&& rm -rf /var/lib/apt/lists/*

RUN ln -fs /usr/share/zoneinfo/US/Eastern /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

COPY VERSION /ver-linux-base