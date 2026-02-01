### Set up shared directory between host MacOS and guest Fedora
in `/etc/fstab` (create `VM-share` via VMWare GUI)
```
.host:/VM-share    /mnt/hgfs/share        fuse.vmhgfs-fuse    defaults,allow_other,nofail    0    0
```
