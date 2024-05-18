Role Name
=========

apt-autoremove: run apt-get autoremove

Role Variables
--------------

run_apt_autoremove: True

Notes
-----

This simply runs `'apt autoremove'` if you set the Role Variable to True.
The default is 'False' since this can really slow down repeated runs


Howto
-----

To run just this role, add `"--tags apt-update"` to your ansible-playbook command line,
being sure to set the Role Variable to True ala:

```
  ansible-playbook -l myhost site.yml -i hosts \
      -t apt-autoremove --extra-vars="run_apt_autoremove=yes"
```
