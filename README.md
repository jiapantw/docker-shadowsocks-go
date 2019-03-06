# docker-shadowsocks-go

Docker image for shadowsocks based on busybox image, just over 6MB in size.

## Usage

- you can modify ~/.bashrc or ~/.bash_profile

```sh
alias ssserver="docker run -i --rm jiapantw/shadowsocks-go"

ssserver -p 8388 -k password -m aes-256-cfb
```

- or you also can directly to use:

```sh
docker run -it --rm \
-p 8388:8388 \
-p 8388:8388/udp \
jiapantw/shadowsocks-go -p 8388 -k password -m aes-256-cfb
```
