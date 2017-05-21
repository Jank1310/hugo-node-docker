FROM node:6

ENV HUGO_VERSION 0.20.7

# Install HUGO
RUN set -x && \
  curl -fSL -o hugo.tar.gz "https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz" && \
  mkdir hugo && \
  tar xzf hugo.tar.gz -C hugo/ && \
  rm -r hugo.tar.gz && \
  mv hugo/hugo /usr/bin/hugo && \
  rm -r hugo/

CMD [ "node" ]
