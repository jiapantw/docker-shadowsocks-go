FROM busybox

ARG SHADOWSOCKS_GO_VERSION=1.2.1
ARG SHADOWSOCKS_GO_REPO=https://github.com/shadowsocks/shadowsocks-go

ADD $SHADOWSOCKS_GO_REPO/releases/download/$SHADOWSOCKS_GO_VERSION/shadowsocks-server.tar.gz /tmp/

RUN tar zxvf /tmp/shadowsocks-server.tar.gz && rm -rf /tmp

ENTRYPOINT ["/shadowsocks-server"]
CMD ["--help"]