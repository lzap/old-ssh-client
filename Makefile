.PHONY: build
build:
	podman build -t old-ssh-client:latest
	podman push localhost/old-ssh-client:latest ghcr.io/lzap/old-ssh-client:latest
