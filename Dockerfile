FROM egeeio/steamcmd

USER root
COPY update.sh /usr/bin/updater
COPY run.sh /usr/bin/run

RUN chmod +x /usr/bin/run
RUN chmod +x /usr/bin/updater

ARG uid
RUN usermod -u ${uid} gsc
USER gsc

RUN mkdir /home/gsc/starbound
RUN mkdir /home/gsc/starbound/storage
COPY starbound_server.config /home/gsc/starbound/storage/starbound_server.config
WORKDIR /home/gsc/starbound

ENV update=/update

#This part is nasty
ARG S_USERNAME
ARG S_PASSWORD
ARG S_GUARD
RUN /usr/bin/updater ${S_USERNAME} ${S_PASSWORD} ${S_GUARD}

CMD ["run"]
