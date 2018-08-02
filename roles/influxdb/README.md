

Role Name
=========

influxdb: install and configure influxdb


Role Variables
--------------

influx_arch: what architecture .deb file to download
influx_version: which version to download

influx_admin_user: username of the influxdb default user
influx_admin_password: password for that user

Howto
-----
To run just this role, add "--tags influxdb" to your ansible-playbook command line

Notes
-----

This role creates an influxdb datasource assuming hostnames of 'influxdb' and 'influxdb' listening on the default ports.  It also hard-codes a specific version of influxdb to install that is known working on Raspbian.

It also installs some required python packages and creates a default database and admin user.  See the tasks file for details.

DANGER WILL ROBINSON - the admin user has a hardcoded username/password.  Do 'not' do this on a real system.  Edit to taste.

