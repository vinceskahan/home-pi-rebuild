---

To do List:

* install weewx and fully configure it in either v5 pip or dpkg mode

* tmpfs on model-B to save SD writes

    tmpfs /mnt/ramdisk tmpfs size=260M                                0 0
    tmpfs /tmp         tmpfs defaults,nosuid,mode=0755,nodev,noatime  0 0
    tmpfs /var/log     tmpfs defaults,nosuid,mode=0755,nodev,noatime  0 0
    tmpfs /var/tmp     tmpfs defaults,nosuid,mode=0755,nodev,noatime  0 0

* 'r' setup:
     * crontabs
     * stuff cron calls
     * nginx
     * mount htmlroot in tmpfs too (in addition to other items above)
        tmpfs /var/www/html tmpfs defaults,nosuid,mode=0755,nodev,noatime 0 0

* 'pi' setup:
     * motion for timelapse
     * symlink /var/www/html/image.jpg => /mnt/ramdisk/motion/lastsnap.jpg

* drop root and pi ~/.vimrc files into place

* localization needs some work to have it alter things only if needed

