FROM alpine:3.6
RUN apk --update add --no-cache dcron postgresql

RUN mkdir -p /dump_database
RUN touch ~/.pgpass
RUN chmod 0600 ~/.pgpass
RUN echo "postgres:5432:myProject:my-project-postgres:rXHW6ULMruNHhEyffhJ8gvRat4F4i2Ly" >> ~/.pgpass

COPY cron /opt/cron/
COPY crontab /etc/crontabs/root
COPY entrypoint.sh /
COPY backup.sh /
COPY restore.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["cron"]