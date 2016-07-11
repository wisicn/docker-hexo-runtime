FROM gliderlabs/alpine:3.4
MAINTAINER wisicn@gmail.com

# install depends packages
RUN \
apk --update add nodejs bash git openssh-client && \
rm -rf /var/cache/apk/*

# install hexo
ENV HEXO_VERSION 3.2.2
RUN npm install -g hexo@${HEXO_VERSION}

# creat workplace
RUN mkdir -p /hexo
VOLUME /hexo
WORKDIR /hexo 

EXPOSE 4000

CMD ["/bin/bash"]
