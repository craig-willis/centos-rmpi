# Centos 7.6.1810 with MPI

This repository defines a Docker image with the following:

* Centos 7.6.1810
* openmpi 1.10.7
* R-3.6.0

This is intended to support re-execution of verification packages
that require Rmpi.

To start a container mapping the current directory on the host to the 
`/workspace' directory in the container, use the following command.

```
docker run -it -v `pwd`:/workspace craigwillis/centos-rpmi bash
```

This will give you an interactive `bash` shell for the user `verifier`.

From within the running container, you should be able to install R
packages, run scripts, etc.  Note that the `workspace` directory is the 
only mapped directory and all files should be written there or they
will be lost when exiting.

To rebuild the image after making changes to the `Dockerfile`
```
docker build -t craigwillis/centos-rpmi .
```
