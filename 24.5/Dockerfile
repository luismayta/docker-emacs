FROM ubuntu:14.04
MAINTAINER Luis Mayta <https://github.com/luismayta>

COPY emacs24.5.2_24.5.2-1_amd64.deb /tmp/

# Install.
RUN apt-get update \
    && apt-get install -y bash build-essential \

# Set environment variables.
RUN cd /tmp/ && \
    dpkg -i emacs24.5.2_24.5.2-1_amd64.deb

# Define default command.
CMD ["bash"]
