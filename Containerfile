FROM debian:oldstable

RUN apt-get update && \
    apt-get autoremove -y && \
    apt-get install -y openssh-client && \
    apt-get clean

LABEL org.label-schema.vendor="lzap" \
      org.label-schema.name="Debian openssh-client from oldstable" \
      org.label-schema.description="Debian-based OpenSSH client that has older ciphers" \
      org.opencontainers.image.source https://github.com/lzap/old-ssh-client \
      summary="Debian-based OpenSSH client that has older ciphers"
