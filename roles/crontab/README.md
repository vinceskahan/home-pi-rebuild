Role Name
=========

crontab - miscellaneous crontab entries not tied directly to a particular role

Role Variables
--------------

enable_crontab: True/False - whether to run this role


There are multiple job-specific variables, usually 
whether to enable that entry and when to run it.

See the defaults/main.yml and tasks/main.yml files for the current list


Howto
-----
To run just this role, add "--tags crontab" to your ansible-playbook command line


