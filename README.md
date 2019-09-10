# gem5_docker
This Docker file creates an image that is setup to use the gem5 simulator.

## Setup:
1. Install Docker.
1. Start Docker.
1. Create a directory to put the Dockerfile in.
1. Run ```docker build -t gem5_ubuntu .```
1. Run ```docker run -t -i gem5_ubuntu```

Bash should automatically start from here and you should see the gem5 repo located at /gem5.

To exit the container you can simply run the "exit" command. 

## Using docker:

### Restarting a container:
1. Use ```docker container ls -a``` to get the id or name of the gem5 container.
1. Use ```docker restart <container_id>``` to restart your container.
1. Use ```docker exec -it <container_id> bash``` to access bash again.

### Deleting your containers:
1. Use ```docker container rm <container_id>``` to remove one container.
1. User ```docker container prune``` to remove all containers.
