FROM debian:wheezy
RUN apt-get update && apt-get upgrade -y && \
 apt-get install -y --force-yes \
  git-core \
  python python-setuptools python-dev libpq-dev && \
 apt-get autoremove -y && \
 apt-get clean
RUN easy_install pip && \
  pip install virtualenv \
    django && \
  pip install python-openid \
    python-debian \
    South \
    poster \
    simplejson && \
  pip install -Iv \
    https://github.com/celery/celery/archive/v2.2.7.tar.gz && \
  pip install django-openid-auth && \
  pip install -Iv \
    https://github.com/celery/django-celery/archive/v2.2.7.tar.gz && \
#    django-pickfield \
  pip install django-debug-toolbar
RUN git clone git://github.com/blankon/python-irgsh.git /opt/python-irgsh
RUN git clone git://github.com/blankon/irgsh-web.git /opt/irgsh-web
RUN git clone git://github.com/blankon/irgsh-node.git /opt/irgsh-node
RUN git clone git://github.com/blankon/irgsh-repo.git /opt/irgsh-repo
RUN cd /opt/irgsh-web && \
  ln -s /opt/python-irgsh/irgsh && \
  ln -s /opt/irgsh-node/irgsh_node && \
  ln -s /opt/irgsh-repo/irgsh_repo && \
  python bootstrap.py && \
  ./bin/buildout
CMD ["/bin/bash"]
