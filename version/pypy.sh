#!/bin/bash -e

# Install pypy
echo "================= Installing pypy ==================="
sudo apt-get install -y pypy

echo "================= Install virtualenv ==================="
# Install virtualenv
sudo wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O /tmp/ez_setup.py
sudo pypy /tmp/ez_setup.py
sudo easy_install pip
pip install virtualenv
virtualenv -p pypy $HOME/venv/pypy

echo "================= Install pip packages ==================="
# Install pip packages
. $HOME/venv/pypy/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate

