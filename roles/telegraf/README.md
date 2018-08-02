
Role Name
=========

telegraf: install and configure telegraf


Role Variables
--------------

telegraf_arch:    what architecture .deb file to download
telegraf_version: which version to download

Howto
-----
To run just this role, add "--tags telegraf" to your ansible-playbook command line

Notes
-----

This role installs a specific version of telegraf to install that is known working on Raspbian, and creates a config file for what to monitor and where to send the data to.  It assumes an output format of 'influxdb' going to the default port on http://influxdb as resolved from the local client.

