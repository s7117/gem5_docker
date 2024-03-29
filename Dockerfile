FROM ubuntu:16.04

LABEL maintainer="psc@email.sc.edu"

# Home Directory
WORKDIR /root

# Update Ubuntu
RUN apt-get update -y
RUN apt-get upgrade -y

# Install packages
RUN apt-get install vim htop -y

# Install gem5 dependencies
RUN apt-get install apt-utils g++ python python-pip python-dev scons \
    zlib1g-dev m4 mercurial swig libgoogle-perftools-dev libboost-all-dev \
    git -y

# Install a pip dependence
RUN pip install --upgrade pip
RUN pip install six

# Create Linux Lab like file structure
RUN mkdir /usr/local/3rdparty

# Get a copy of gem5
RUN hg clone http://repo.gem5.org/gem5 /usr/local/3rdparty/gem5

# Run command line
CMD ["/bin/bash"]
