FROM alpine
LABEL maintainer="bassem.zohdy@gmail.com"
RUN apk update --no-cache && apk add --no-cache git curl vim
WORKDIR /opt/gitflow
RUN curl -OL https://raw.github.com/nvie/gitflow/develop/contrib/gitflow-installer.sh && \
chmod +x /opt/gitflow/gitflow-installer.sh && \
sh /opt/gitflow/gitflow-installer.sh
VOLUME /workspace
WORKDIR /workspace
CMD /bin/sh
