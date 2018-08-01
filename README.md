
The hosts file here uses both group_vars and host_vars parameters.....
   (see the readme file in each subdirectory for details)

Examples:

    ansible-playbook -i hosts site.yml 
    (run just the ntp role on all hosts)

    add "-l [hostname|groupname]" to limit to one host or group
    add "--tags ntp" to run just the ntp role (for example)
