---

To do List:

* be able to install weewx and fully configure it in either v5 pip or dpkg mode

* tmpfs on model-B to save SD writes

    tmpfs /mnt/ramdisk tmpfs size=260M                                0 0
    tmpfs /tmp         tmpfs defaults,nosuid,mode=0755,nodev,noatime  0 0
    tmpfs /var/log     tmpfs defaults,nosuid,mode=0755,nodev,noatime  0 0
    tmpfs /var/tmp     tmpfs defaults,nosuid,mode=0755,nodev,noatime  0 0

* 'pi' setup:
     * new mechanism for timelapse
     * symlink /var/www/html/image.jpg => /mnt/ramdisk/motion/lastsnap.jpg

