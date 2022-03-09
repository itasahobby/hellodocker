# Hellodocker: Local compile

Build the image:

```
make install
```

Run a container:
```
docker run --rm -it hellodocker
```

We can also use `docker inspect` to check the details of the image generated, here is the layer layout:
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
