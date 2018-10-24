Dockerfiles and scripts to create jitpcb image.

- install Docker on your development machine
- (optional) use Docker preferences to:
  - shrink the vm image to 16 Gb
  - move the vm image to a partition that isn't backed up
  - set preferences to not back up images
- increase Docker memory resources to 6 Gb before trying to build jitpcb
- build jitx-jitpcb image
  - start from the parent directory, the root of the repo jitx-docker
```bash
$ cd .../jitx-docker
$ ls -l
total 8
-rw-r--r--  1 jrl  staff  582 Oct 14 13:37 README.md
drwxr-xr-x  5 jrl  staff  160 Oct 14 13:39 jitx-jitpcb
drwxr-xr-x  6 jrl  staff  192 Oct 14 13:38 jitx-tools
$ docker build -t jitx-jitpcb jitx-jitpcb
Sending build context to Docker daemon  131.9MB
Step 1/11 : FROM jitx-tools:latest
 ...
Successfully built 0fdd719ceec3
Successfully tagged jitx-jitpcb:latest
$ docker tag jitx-jitpcb jitx/jitx-jitpcb
$ docker push jitx/jitx-jitpcb
The push refers to repository [docker.io/jitx/jitx-jitpcb]
ae84649845d1: Pushed 
 ...
latest: digest: sha256:7ad90c06fb0fd2026141b87a3f1db4eaf164eb89e6ede235b98cbdac8df3fb5a size: 3045
```
- run Docker image
```bash
$ docker run -t -i jitx/jitx-jitpcb /bin/bash
jitx@bf67a9b91ec5:~$ pwd
/home/jitx
jitx@bf67a9b91ec5:~$ ls -l
total 28
drwxr-xr-x 1 jitx jitx 4096 Oct 14 16:37 bin
-rwxr-xr-x 1 jitx jitx  132 Oct 13 22:34 build-geode.sh
-rwxr-xr-x 1 jitx jitx  419 Oct 14 00:00 build-jitpcb.sh
-rwxr-xr-x 1 jitx jitx  316 Oct 13 23:36 build-stanza.sh
drwx------ 1 jitx jitx 4096 Oct 14 16:58 jitpcb
drwxr-xr-x 2 jitx jitx 4096 Oct 14 16:52 jitpcb-release
drwxr-xr-x 8 jitx jitx 4096 Oct 13 21:50 stanza
jitx@bf67a9b91ec5:~$ whoami
jitx
jitx@bf67a9b91ec5:~$ exit
exit
$
```
The jitx/jitx-jitpcb image is private. You need to be in the jitx organization to access this image.

