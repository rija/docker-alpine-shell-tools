FROM alpine:3.7

RUN apk add --no-cache curl jq bash gettext

CMD ["/bin/sh"]
