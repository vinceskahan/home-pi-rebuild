Role Name
=========

localization - set the system localization based on ansible variables

Role Variables
--------------

This assumes 'host_vars' variables for localization that is indicated
in the inventory.


Example:
```
   for an inventory of:
          [raspi]
          pi3jr
          pi3
          r

   this role would expect a host_vars/pi3 file containing:
       LOCALE: "en_US.UTF-8"
       XKBLAYOUT: ""
```

Howto
-----

To run just this role, add "--tags localization" to your ansible-playbook command line

