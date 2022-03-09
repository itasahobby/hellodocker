# Hellodocker

Simple docker image with a single layer, accomplished by using [`scratch`](https://hub.docker.com/_/scratch) base image which basically allows us to build an image from zero. From the docs:

> As of Docker 1.5.0 (specifically, `docker/docker#8827`), `FROM scratch` is a no-op in the `Dockerfile`, and will not create an extra layer in your image (so a previously 2-layer image will be a 1-layer image instead).

There are two available examples:
* [Compiling binary locally](local_compile/README.md)
* [Using multi-stage build](multi_stage/README.md)

Also you can check the available [seccomp profile](seccomp/README.md) generated with [oci-seccomp-bpf-hook](https://github.com/containers/oci-seccomp-bpf-hook)