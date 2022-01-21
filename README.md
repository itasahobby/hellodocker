# Hellodocker

Simple docker image with a single layer, accomplished by using [`scratch`](https://hub.docker.com/_/scratch) base image which basically allows us to build an image from zero. From the docs:

> As of Docker 1.5.0 (specifically, `docker/docker#8827`), `FROM scratch` is a no-op in the `Dockerfile`, and will not create an extra layer in your image (so a previously 2-layer image will be a 1-layer image instead).

To build the image:

```
make install
```

Run a container:
```
docker run --rm -it dockerhello
```

We can also use `docker inspect` to check the details of the image generated, here is the file system layout:
```
...
        "RootFS": {
            "Type": "layers",
            "Layers": [
                "sha256:610372ec540a8f09d136f5db7df02e3f4222b556f0c7183602282b684db2cc44"
            ]
        },
...
```