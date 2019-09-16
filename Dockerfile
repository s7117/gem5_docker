FROM ubuntu:16.04

LABEL maintainer="psc@email.sc.edu"

# Update Ubuntu
RUN apt-get update -y
RUN apt-get upgrade -y

# Install packages
RUN apt-get install vim -y

# Install gem5 dependencies
RUN apt-get install apt-utils g++ python python-pip python-dev scons \
    zlib1g-dev m4 mercurial swig libgoogle-perftools-dev libboost-all-dev \
    git -y

# Install a pip dependence
RUN pip install --upgrade pip
RUN pip install six

# Get a copy of gem5
RUN hg clone http://repo.gem5.org/gem5

# Run command line
CMD ["/bin/bash"]
