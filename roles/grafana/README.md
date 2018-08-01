
Role Name
=========

grafana: install and configure grafana


Role Variables
--------------

grafana_arch = what architecture .deb file to download

Howto
-----
To run just this role, add "--tags grafana" to your ansible-playbook command line

Notes
-----

This role creates an influxdb datasource assuming hostnames of 'grafana' and 'influxdb' listening on the default ports.  It also hard-codes a beta version of grafana to install (for now) as the Raspbian repos have an ancient non-functional version in it at this writing.

