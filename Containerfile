FROM debian:oldstable

RUN apt-get update && \
    apt-get autoremove -y && \
    apt-get install -y openssh-client && \
    apt-get clean

LABEL org.label-schema.vendor="lzap" \
      org.label-schema.name="Debian openssh-client from oldstable" \
      org.label-schema.description="Debian-based OpenSSH client that has older ciphers" \
      summary="Debian-based OpenSSH client that has older ciphers"
