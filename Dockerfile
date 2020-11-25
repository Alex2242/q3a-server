FROM debian:buster-slim

RUN useradd -m -g users -s /bin/bash -d /home/quake3 quake3

RUN apt update && apt install ioquake3-server

EXPOSE 27960/tcp
EXPOSE 27960/udp

USER quake3

WORKDIR /home/quake3

CMD /usr/lib/ioquake3/ioq3ded +exec server.cfg +exec levels.cfg +exec bots.cfg
