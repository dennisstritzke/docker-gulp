FROM alpine:3.7

LABEL maintainer="Dennis Stritzke <dennis@stritzke.me>"

RUN apk update && \
  apk add yarn=1.3.2-r0 && \
  yarn global add gulp-cli@2.0.1

ENTRYPOINT ["/usr/local/bin/gulp"]
CMD ["--version"]
