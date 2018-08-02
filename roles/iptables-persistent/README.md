
Role Name
=========

iptables-persistent: set and save iptables entries across boots

Howto
-----
To run just this role, add "--tags iptables-persistent" to your ansible-playbook command line

Notes
-----
This role installs the iptables-persistent package and specifically blocks
the amcrest camera from doing any DNS lookups since it continually tries to
resolve hosts in order to phone home.

This is a bit of a kludge, using 'command' to do the iptables-save, as the ansible module
is very limited at best.  It also hard-codes the rule to add rather than making it more
generic and vars-driven.  Good enough for here at this time.

