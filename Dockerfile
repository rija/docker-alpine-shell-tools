FROM alpine:3.8

LABEL maintainer="rija+git@cinecinetique.com"
LABEL description="Common shell tools for Alpine Linux in Docker Container (bash, curl, jq, envsubst)"

RUN apk add --no-cache curl jq bash gettext
CMD ["/bin/sh"]

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
	 org.label-schema.name="docker-alpine-shell-tools" \
	 org.label-schema.description="Common shell tools in an Alpine Docker image (bash, curl, jq, envsubst)" \
	 org.label-schema.url="https://github.com/rija/docker-nginx-fpm-caches-wordpress" \
	 org.label-schema.vcs-ref=$VCS_REF \
	 org.label-schema.vcs-url="https://github.com/rija/docker-alpine-shell-tools" \
	 org.label-schema.vendor="Rija Menage" \
	 org.label-schema.version=$VERSION \
org.label-schema.schema-version="1.0"