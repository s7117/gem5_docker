# gem5_docker
This Docker file creates an image that is setup to use the gem5 simulator.

## Setup:
1. Install Docker.
1. Start Docker.
1. Create a directory to put the Dockerfile in.
1. Run ```docker build -t gem5_ubuntu .```
1. Run ```docker run -t -i gem5_ubuntu```

Bash should automatically start from here and you should see the gem5 repo located at /gem5.
