Role Name
=========

apt-upgrade: run apt-get upgrade

Role Variables
--------------

run_apt_upgrade: True

Notes
-----

This simply runs `'apt-get upgrade'` if you set the Role Variable to True.
The default is 'False' since this can really slow down repeated runs


Howto
-----

To run just this role, add `"--tags apt-update"` to your ansible-playbook command line,
being sure to set the Role Variable to True ala:

```
  ansible-playbook -l myhost site.yml -i hosts \
      -t apt-upgrade --extra-vars="run_apt_upgrade=yes"
```
