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

## Building gem5:
Once you get into bash via the Setup you can build the ISA executables using scons. Note that this compilation will take quite a long time to complete sometimes 10-15 minutes.

Legend: (See the gem5 documentation for details and all parameters -> [gem5 Docs](http://gem5.org/Documentation))  
- string ISA_name_in_gem5: X86, RISCV, ARM, etc.  
- string version: opt, perf, etc.  
- int num_of_cpus: integer number of CPUs/threads to use in compiling.  

1. ```cd ~/gem5```
1. ```scons build/<ISA_name_in_gem5>/gem5.<version> -j<num_of_cpus>```

## Using docker:

### Restarting a container:
1. Use ```docker container ls -a``` to get the id or name of the gem5 container.
1. Use ```docker restart <container_id>``` to restart your container.
1. Use ```docker exec -it <container_id> bash``` to access bash again.

### Deleting your containers:
1. Use ```docker container rm <container_id>``` to remove one container.
1. User ```docker container prune``` to remove all containers.
