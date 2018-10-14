Dockerfiles and scripts to create JitX docker images.

- install Docker on your development machine
- (optional) use Docker preferences to:
  - shrink the vm image to 16 Gb
  - move the vm image to a partition that isn't backed up
  - set preferences to not back up images
- pull down and run Docker images
  - for general tools (no jitx code)
    $ docker run -t -i jitx/jitx-tools /bin/bash
  - for tools + stanza + jitpcb code
    $ docker run -t -i jitx/jitx-jitpcb /bin/bash

The jitx/jitx-jitpcb image is private. You need to be in the jitx organization to access this image.
