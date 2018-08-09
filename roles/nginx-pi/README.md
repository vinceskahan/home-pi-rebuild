Role Name
=========

nginx-pi: set up nginx on raspi 'pi' specifically

Role Variables
--------------

none

Howto
-----
To run just this role, add "--tags nginx-pi" to your ansible-playbook command line

Notes
-----

This symlinks a file written by 'motion' into the web docroot so other hosts on the LAN
can grab it easily.  Typically this would be the weewx system only.

