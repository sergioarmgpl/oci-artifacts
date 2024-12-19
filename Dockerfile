#https://oras.land/docs/installation
FROM alpine
RUN apk add curl
ENV VERSION="1.2.1"
RUN curl -LO "https://github.com/oras-project/oras/releases/download/v${VERSION}/oras_${VERSION}_linux_amd64.tar.gz"
RUN mkdir -p oras-install/
RUN tar -zxf oras_${VERSION}_*.tar.gz -C oras-install/
RUN mv oras-install/oras /usr/local/bin/
RUN rm -rf oras_${VERSION}_*.tar.gz oras-install/
