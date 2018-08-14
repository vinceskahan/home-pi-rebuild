Role Name
=========

firstboot = set variables causing normally-noop roles to execute on a clean system

Role Variables
--------------

firstboot: True/False

Notes
-----

This executes only on the Raspberry Pi since it calls roles which are pi-specific,
via enabling facts as 'True' that are by default 'False' in order to speed up normal
runs.


Howto
-----

To run just this role, add "--tags firstboot" to your ansible-playbook command line
and also pass "--extra_vars firstboot=True" so it executes

