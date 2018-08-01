

Role Name
=========

mosquitto: install the mosquitto server package

Howto
-----
To run just this role, add "--tags mosquitto" to your ansible-playbook command line

Notes
-----
This installs a number of .conf files under /etc/mosquitto/conf.d 

DANGER WILL ROBINSON - these files might possibly include usernames/passwords for systems this can be configured to bridge to. Do 'not' commit any files with usernames/passwords to a publicly viewable site of course....
