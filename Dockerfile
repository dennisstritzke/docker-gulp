FROM alpine:3.3

LABEL maintainer="Dennis Stritzke <dennis@stritzke.me>"

RUN apk update && \
  apk add nodejs && \
  npm install --global gulp-cli@2.0.1

ENTRYPOINT ["/usr/bin/gulp"]
CMD ["--version"]