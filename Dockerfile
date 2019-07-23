# Dockerfile

FROM alpine

RUN apk add --no-cache bash curl

ENV VERSION 0.2.2

RUN curl -sL https://github.com/helm/chart-releaser/releases/download/v${VERSION}/chart-releaser_${VERSION}_Linux_x86_64.tar.gz | tar xz && \
    mv chart-releaser /usr/local/bin/chart-releaser

ENTRYPOINT ["bash"]
