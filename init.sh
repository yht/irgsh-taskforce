cd /opt/irgsh-web
ln -s /opt/python-irgsh/irgsh
ln -s /opt/irgsh-node/irgsh_node
ln -s /opt/irgsh-repo/irgsh_repo
python bootstrap.py && \
./bin/buildout
