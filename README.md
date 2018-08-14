
The hosts file here uses both group_vars and host_vars parameters.....
   (see the readme file in each subdirectory for details)

Examples:

    ansible-playbook -i hosts site.yml 

    add "-l [hostname|groupname]" to limit to one host or group
    add "--tags ntp" to run just the ntp role (for example)


Notes:
 - a number of these roles have defaults/main.yml content for 
    usernames and associated passwords.  THESE ARE EXAMPLES ONLY.
    DO NOT USE THEM ON YOUR REAL SYSTEMS...


At last audit, this uses the following ansible modules:

  * apt
  * copy
  * cron
  * get_url
  * hostname
  * hosts
  * influxdb
  * influxdb_database
  * influxdb_user
  * iptables
  * service
  * setup
  * shell
  * template

Firstboot only:

 - ansible-playbook -k site.yml -i hosts -l <hostname> \
     --extra-vars="firstboot=True'

   (and answer with the remote_user password when prompted)

