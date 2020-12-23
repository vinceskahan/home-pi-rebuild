

Role Name
=========

weewx: install the weewx server package

Howto
-----
To run just this role, add "--tags weewx" to your ansible-playbook command line

Notes
-----
This installs files under /etc/weewx/

DANGER WILL ROBINSON - these files might possibly include usernames/passwords for systems this can be configured to bridge to. Do 'not' commit any files with usernames/passwords to a publicly viewable site of course....
