

This suite of ansible playbooks lets me do a full rebuild of
my home Raspberry Pi (plural) as well as the Seagate Dockstar
running Debian which serves as my current weewx host.

It's good enough to do a one-command provisioning of the various
raspberry pi, which is the current intent.


Howto
-----

    ansible-playbook -i hosts site.yml 

    * add "-l [hostname|groupname]" to limit to one host or group
    * add "-t ntp" to run just the ntp role (for example)

Multiple `-l` and `-t` blocks are supported by ansible-playbook at this writing.

Some roles are set to run no-op by default, but you can enable them
individually by adding `--extra-vars` to the ansible-playbook command

    --extravars="optionX=True optionY=True" 


Firstboot only
---------------

```
ansible-playbook -k site.yml -i hosts -l <hostname> \
     --extra-vars="firstboot=True'

   (and answer with the remote_user password when prompted)
```

DANGER WILL ROBINSON
--------------------

 - a number of these roles have `defaults/main.yml` settings for
    default usernames and associated passwords.

    THESE ARE EXAMPLES ONLY.  DO NOT USE THEM ON YOUR REAL SYSTEMS...

 - you can supersede any defaults by passing `--extra-vars` parameters
    to use your own variable settings.


<tl;dr>
-------

The various roles here have hard-coded or default targets matching
where I have services running on my network.  They also assume certain
DNS resolution magic (ie, an alias 'mqtt' for the mqtt server) which
is done by the pi-hole software running on the LAN.  In general, I tried
to alias services to the host acting as that server.

The ansible hosts file matches my ssh setup's `~/.ssh/config` file, which
sometimes differs from the actual hostname we want to set for that
remote computer.   An example `~/.ssh/config` snippet is below:


    # these are all raspbian pi
    Host system1 system2 system3 system4
      IdentityFile ~/.ssh/id_rsa_nopass
      user pi
   
    # this system uses a different name for ssh access 
    # than it does for DNS resolving its address
    Host systemXYZ-ansible
      hostname systemXYZ
      user ansible
     IdentityFile ~/.ssh/id_rsa_nopass

Obviously, the account used requires sudo access so 'become' works,
which is true by default on a pi.  I manually set up `sudoers.d` on
other systems so this works there since those systems never change.


Ansible modules used
--------------------

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


