FROM ryht/ubuntu:lucid
RUN apt-get update && apt-get upgrade && \
  apt-get install --force-yes \
    gpgv
RUN apt-get install --force-yes \
  python
CMD ["/bin/bash"]
