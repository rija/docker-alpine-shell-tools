FROM alpine:3.7

LABEL maintainer="rija+git@cinecinetique.com"
LABEL description="Common shell tools for Alpine Linux in Docker Container (bash, curl, jq, envsubst)"

RUN apk add --no-cache curl jq bash gettext
CMD ["/bin/sh"]
