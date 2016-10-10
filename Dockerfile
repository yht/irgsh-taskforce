FROM ryht/ubuntu:lucid
ADD sources.list /etc/apt/
RUN apt-get update && apt-get upgrade && \
  apt-get install -y --force-yes \
    gpgv git-core
RUN apt-get install -y --force-yes \
  python python-setuptools python-dev libpq-dev
RUN easy_install pip && \
  pip install virtualenv
CMD ["/bin/bash"]
