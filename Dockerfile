FROM ryht/ubuntu:lucid
RUN apt-get update && apt-get upgrade && \
  apt-get install -y --force-yes \
    gpgv
RUN apt-get install -y --force-yes \
  python
CMD ["/bin/bash"]
