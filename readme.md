Install packages:

```
#rhel7
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install -y ansible git wget lsof mlocate

#rhel8
dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
rpm -ql epel-release
dnf --enablerepo="epel" install -y ansible git wget lsof mlocate
dnf install -y ansible git wget lsof mlocate
```

Install requirements:

```
cp .ansible.cfg /root/.ansible.cfg
ansible --version
ansible-galaxy collection install ansible.posix
ansible-galaxy install -r requirements.yml
```

Execute playbook

```
ansible-playbook -i inventory.ini install_webserver.yml
```
