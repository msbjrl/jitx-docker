FROM jitx-tools:latest

RUN \
  useradd --comment "JitX development" --no-log-init --create-home --uid 2001 --user-group jitx && echo "jitx:jitx" | chpasswd && adduser jitx sudo && echo '%sudo  ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER jitx

ENV HOME /home/jitx

WORKDIR $HOME

COPY --chown=jitx:jitx jitx $HOME

RUN mkdir -p $HOME/bin

ENV PATH="$HOME/bin:$PATH"

RUN ./build-stanza.sh

RUN ./build-geode.sh

RUN ./build-jitpcb.sh

ENTRYPOINT []