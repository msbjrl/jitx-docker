Dockerfiles and scripts to create tools image (tools required to build jitx components).

- install Docker on your development machine
- (optional) use Docker preferences to:
  - shrink the vm image to 16 Gb
  - move the vm image to a partition that isn't backed up
  - set preferences to not back up images
- build jitx-tools image
  - start from the parent directory, the root of the repo jitx-docker
```bash
$ cd .../jitx-docker
$ ls -l
total 8
-rw-r--r--  1 jrl  staff  582 Oct 14 13:37 README.md
drwxr-xr-x  5 jrl  staff  160 Oct 14 13:39 jitx-jitpcb
drwxr-xr-x  6 jrl  staff  192 Oct 14 13:38 jitx-tools
$ docker build -t jitx-tools jitx-tools
Sending build context to Docker daemon   2.56kB
Step 1/5 : FROM ubuntu
latest: Pulling from library/ubuntu
124c757242f8: Already exists 
 ...
Successfully built 157d750103f0
Successfully tagged jitx-tools:latest
$ docker tag jitx-tools jitx/jitx-tools
$ docker push jitx/jitx-tools
The push refers to repository [docker.io/jitx/jitx-tools]
f1cf977eb144: Pushed 
 ...
latest: digest: sha256:09a92cc2cea084be8ab11e95d0e931d5cfad522068acac768cb46e9a6daacd80 size: 1994
```
- run Docker image
```bash
$ cd anywhere
$ docker run -t -i jitx/jitx-tools /bin/bash
root@89bd9839740b:/# pwd
/
root@89bd9839740b:/# ls -l
total 64
drwxr-xr-x   1 root root 4096 Oct 14 16:33 bin
drwxr-xr-x   2 root root 4096 Apr 24  2018 boot
drwxr-xr-x   5 root root  360 Oct 24 03:19 dev
drwxr-xr-x   1 root root 4096 Oct 24 03:19 etc
drwxr-xr-x   2 root root 4096 Apr 24  2018 home
drwxr-xr-x   1 root root 4096 Oct 14 16:34 lib
drwxr-xr-x   2 root root 4096 Aug 21 21:13 lib64
drwxr-xr-x   2 root root 4096 Aug 21 21:12 media
drwxr-xr-x   2 root root 4096 Aug 21 21:12 mnt
drwxr-xr-x   2 root root 4096 Aug 21 21:12 opt
dr-xr-xr-x 184 root root    0 Oct 24 03:19 proc
drwx------   2 root root 4096 Aug 21 21:14 root
drwxr-xr-x   1 root root 4096 Sep  5 22:20 run
drwxr-xr-x   1 root root 4096 Sep  5 22:20 sbin
drwxr-xr-x   2 root root 4096 Aug 21 21:12 srv
dr-xr-xr-x  13 root root    0 Oct 24 03:19 sys
drwxrwxrwt   1 root root 4096 Oct 14 16:36 tmp
drwxr-xr-x   1 root root 4096 Aug 21 21:12 usr
drwxr-xr-x   1 root root 4096 Aug 21 21:14 var
root@89bd9839740b:/# whoami
root
root@89bd9839740b:/# exit
exit
$
```
