FROM alpine:3.3

LABEL maintainer="Dennis Stritzke <dennis@stritzke.me>"

RUN apk update && \
  apk add nodejs && \
  npm install --global gulp-cli

ENTRYPOINT ["/usr/bin/gulp"]
CMD ["--version"]