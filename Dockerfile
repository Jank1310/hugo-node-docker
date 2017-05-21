FROM node:6

ENV HUGO_VERSION 0.14

# Install HUGO
RUN set -x && \
  curl -o hugo.tar.gz https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  tar xzf hugo.tar.gz && \
  rm -r hugo.tar.gz && \
  mv hugo/hugo /usr/bin/hugo && \
  rm -r hugo.tar.gz

CMD [ "node" ]
