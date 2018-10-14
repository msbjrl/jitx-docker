Dockerfiles and scripts to create tools image (tools required to build jitx components).

- install Docker on your development machine
- (optional) use Docker preferences to:
  - shrink the vm image to 16 Gb
  - move the vm image to a partition that isn't backed up
  - set preferences to not back up images
- pull down and run Docker image
  $ docker run -t -i jitx/jitx-tools /bin/bash
