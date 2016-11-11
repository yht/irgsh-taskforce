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
    celery \
    poster \
    simplejson && \
  pip install django-openid-auth \
    django-celery \
#    django-pickfield \
    django-debug-toolbar
CMD ["/bin/bash"]
