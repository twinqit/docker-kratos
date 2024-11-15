FROM oryd/kratos:v1.3

USER root

RUN apk add --no-cache gettext inotify-tools

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER ory

ENTRYPOINT ["/entrypoint.sh"]
CMD []