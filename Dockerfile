FROM dumptec/cron:1.0-dev

COPY --chown=0:0 ./docker/schedule /etc/cron.d/
