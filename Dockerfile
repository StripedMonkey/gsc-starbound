FROM egeeio/steamcmd

COPY run.sh /usr/bin/run
COPY update.sh /usr/bin/update
RUN chmod +x /usr/bin/run
RUN chmod +x /usr/bin/update
ARG uid
RUN usermod -u ${uid} gsc
ENV update=/update
USER gsc
RUN update
CMD ["run"]