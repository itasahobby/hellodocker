# Seccomp

Install hook (CentOS 8):
```
dnf install oci-seccomp-bpf-hook
```

Generate profile:
```
sudo podman run --annotation io.containers.trace-syscall="of:/tmp/hellodocker.json" hellodocker
```

Run container with generated profile:
```
podman run --security-opt seccomp=/tmp/hellodocker.json hellodocker
```