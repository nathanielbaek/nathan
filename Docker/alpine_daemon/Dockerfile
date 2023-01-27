FROM alpine:latest
RUN apk update && apk add bash
ADD ./my_datemon /my_datemon
CMD ["/bin/bash", "/my_daemon"]
