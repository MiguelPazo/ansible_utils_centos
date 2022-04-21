#!/bin/bash
currDate=$(date +'%Y%m%d %T')
echo "$currDate -- Starting installation, please wait..."

yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install -y git wget lsof mlocate

currDate=$(date +'%Y%m%d %T')
echo "$currDate -- Base packages installed"

# update certificates
yum install -y ca-certificates
update-ca-trust force-enable

currDate=$(date +'%Y%m%d %T')
echo "$currDate -- Certificates installed"

# install python 3.7
currDate=$(date +'%Y%m%d %T')
echo "$currDate -- Begin install python 3.7"

yum install -y gcc openssl-devel bzip2-devel libffi-devel

cd /opt
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz
tar xfz Python-3.7.3.tgz
cd /opt/Python-3.7.3 && ./configure --enable-optimizations
cd /opt/Python-3.7.3 && make altinstall
/usr/local/bin/pip3.7 install --upgrade pip

currDate=$(date +'%Y%m%d %T')
echo "$currDate -- End install python 3.7"

rm -rf /opt/Python-3.7*

currDate=$(date +'%Y%m%d %T')
echo "$currDate -- Finish installation"

# install ansible
yum install -y git wget lsof mlocate

python3.7 -m pip install ansible
pip3.7 install ansible-base

cp .ansible.cfg /root/.ansible.cfg
ansible-galaxy collection install ansible.posix
ansible-galaxy install -r requirements.yml
