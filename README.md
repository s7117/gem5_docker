# gem5_docker 
***v1.0 (READY)***
This Dockerfile creates an image that is setup to use the gem5 simulator.

### You MUST build the gem5 executables inside of the docker container!
---

## Setup:
1. Install Docker.
1. Start Docker.
1. Create a directory to put the Dockerfile in.
1. Run ```docker build -t gem5_ubuntu .```
1. Run ```docker run -t -i gem5_ubuntu```

Bash should automatically start from here and you should see the gem5 repo located at /gem5.

To exit the container you can simply run the "exit" command. 

---

## Building gem5:
Once you get into bash via the Setup you can build the ISA executables using scons. Note that this compilation will take quite a long time to complete sometimes 10-15 minutes or more.

Rename the executables to specify them by their ISA. (i.e. gem5_X86.opt)

Legend: (See the gem5 documentation for details and all parameters -> [gem5 Docs](http://gem5.org/Documentation))  
- string ISA_name_in_gem5: X86, RISCV, ARM, etc.  
- string version: opt, perf, etc.  
- int num_of_cpus: integer number of CPUs/threads to use in compiling.  

1. ```cd /usr/local/3rdparty/gem5```
1. ```scons build/<ISA_name_in_gem5>/gem5.<version> -j<num_of_cpus>```
1. ```cd build/<ISA_name_in_gem5>```
1. ```mv gem5.opt gem5_<ISA_name_in_gem5>.opt```

---

## Using docker:

### Restarting a container:
1. Use ```docker container ls -a``` to get the id or name of the gem5 container.
1. Use ```docker restart <container_id>``` to restart your container.
1. Use ```docker exec -it <container_id> bash``` to access bash again.

### Deleting your containers:
1. Use ```docker container rm <container_id>``` to remove one container.
1. User ```docker container prune``` to remove all containers.

### Copy files from containers to host:
1. Use ```docker cp <container_id>:<path_in_docker_container> <dest_path>```
