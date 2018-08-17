Role Name
=========

netmon - monitor and attempt to fix a bouncy network


Notes
-----

This should be run on model-B and pi-zero/zerow pi that are wifi-enabled in order
to try to self-heal the wifi when it drops occasionally due to 2.4 GHz interference
in the neighborhood.  It has not proven necessary on pi3 units here.


Role Variables
--------------

enable_netmon: False   (set to True to enable)


Howto
-----
To run just this role, add "--tags netmon" to your ansible-playbook command line

