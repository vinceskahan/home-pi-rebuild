Role Name
=========

apt-cache: update the apt cache if needed

Role Variables
--------------

apt_cache_valid_time = seconds to let it age before updating
                       (default = 86400 seconds = 1 day)

Howto
-----
To run just this role, add "--tags apt-cache" to your ansible-playbook command line

To force an update, add extra-vars setting the apt_cache_valid_time very low
  ala "--extra_vars apt_cache_valid_time=60" to set it to one minute

