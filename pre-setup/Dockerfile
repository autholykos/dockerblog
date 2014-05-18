FROM ubuntu
MAINTAINER Emanuele Francioni, emanuele@beestar.eu

# make sure the package repository is up to date
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise-updates main restricted" | sudo tee -a /etc/apt/sources.list.d/precise-updates.list
RUN apt-get update

# Install git
RUN apt-get install -qy git

# Install nginx
RUN apt-get install -y nginx

# Install Python, pip, etc
RUN apt-get install -y python-dev build-essential python-pip

# Install pelican
RUN pip install pelican
