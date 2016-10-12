FROM ryht/ubuntu:lucid-update
RUN apt-get update && apt-get upgrade -y && \
  apt-get install -y --force-yes \
    git-core && \
 apt-get autoremove -y && \
 apt-get clean
RUN apt-get install -y --force-yes \
  python python-setuptools python-dev libpq-dev && \
 apt-get autoremove -y && \
 apt-get clean \
RUN easy_install pip && \
  pip install virtualenv \
    django
CMD ["/bin/bash"]
