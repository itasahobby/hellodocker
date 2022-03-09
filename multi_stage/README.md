# Hellodocker: multi-stage

Build the image:

```
docker build -t hellodocker .
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
                "sha256:9f3657bc862e117a82e48970f6f5ef8529c66aa429f4e322a4d91f4dd755ee89"
            ]
        },
...
```
