Matlab LXD Container
====================

To use this, you need to create a .env file with the following content:

```
MATLAB_MAC_ADDRESS=00:16:3e:xx:xx:xx
MATLAB_SHARE_PATH=path/on/host/to/be/mounted/in/guest
```

`MATLAB_SHARE_PATH` will be mounted to `~/shared` inside the container.
`MATLAB_MAC_ADDRESS` will be the MAC address for `eth0` of the container. The
MAC address is used for licensing purposes for MATLAB, so keep this constant.

Note that `00:16:3e` is the default namespace for LXD (and Xen?). You might be
able to use other MAC address as well. I have no idea what happens if it
collides with someone else's registration.

After creating the lxd container via lxdock, extract MATLAB to `./matlab` here
and it will be mounted to /mnt/matlab inside the container. Then simply install
MATLAB as usual. Install MATLAB to /opt/MATLAB/R2018b so the automatic PATH
modifications work. If installed to another directory, you have to change
`matlab.sh` and run lxdock provision again.

Moving the container
--------------------

TBD...
