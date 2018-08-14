Role Name
=========

firstboot = set variables causing normally-noop roles to execute on a clean system

Role Variables
--------------

firstboot: True/False

Howto
-----

To run just this role, add "--tags firstboot" to your ansible-playbook command line
and also pass "--extra_vars firstboot=True" so it executes

