Dockerfiles and scripts to create jitpcb image.

- install Docker on your development machine
- (optional) use Docker preferences to:
  - shrink the vm image to 16 Gb
  - move the vm image to a partition that isn't backed up
  - set preferences to not back up images
- increase Docker memory resources to 6 Gb before trying to build jitpcb
- pull down and run Docker image
```bash
$ docker run -t -i jitx/jitx-jitpcb /bin/bash
```
The jitx/jitx-jitpcb image is private. You need to be in the jitx organization to access this image.

