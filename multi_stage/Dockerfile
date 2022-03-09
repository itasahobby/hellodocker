# syntax=docker/dockerfile:1
FROM ubuntu

RUN apt update &&\
    apt install -y \
    binutils \
    make \
    nasm

COPY app /app

WORKDIR /app

RUN make install

FROM scratch

COPY --from=0 /app/hello /hello

CMD ["/hello"]