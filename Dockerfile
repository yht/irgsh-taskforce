FROM ryht/ubuntu:lucid
RUN apt-get update && apt-get upgrade && \
  apt-get install -y \
    python
CMD ["/bin/bash"]
