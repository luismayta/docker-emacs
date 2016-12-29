FROM ubuntu:14.04
MAINTAINER Luis Mayta <https://github.com/luismayta>

# Install.
ONBUILD RUN apt-get update
ONBUILD RUN apt-get install -y bash build-essential

COPY resources/package/ /tmp

# Set environment variables.
ONBUILD RUN cd /tmp/ && \
    dpkg -i emacs24.5.2_24.5.2-1_amd64.deb

# Define default command.
CMD ["bash"]
