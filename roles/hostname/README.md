Role Name
=========

hostname - set the system hostname based on an ansible variable

Role Variables
--------------

This assumes a 'host_vars' variable for the hostname that is indicated
in the inventory.


Example:
   for an inventory of:
          [raspi]
          pi3jr
          pi3
          r

   this role would expect a host_vars/pi3 file containing:
       ---
       hostname: pi3


It is possible to have the host_vars file contain a different hostname
than the name used in the ansible inventory for a particular host.  This is
because you might need a ~/.ssh/config entry for host xyz that resolves to
a remote ssh hostname of an ip address or even a different hostname as known
by your local ansible host.   The host_vars file should contain the hostname
you want the 'remote' host to set itself to be.

Howto
-----

To run just this role, add "--tags hostname" to your ansible-playbook command line


