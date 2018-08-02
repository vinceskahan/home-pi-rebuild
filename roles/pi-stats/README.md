
Role Name
=========

pi-stats - install a script and crontab entry to send stats to influxdb


Role Variables
--------------

pi_stats_dbname:   database name to create on the influx host
influxdb_hostname: influx hostname to create it on

Tags
----
pi-stats

Howto
----
To run just this role, add "--tags pi-stats" to your ansible-playbook command line

