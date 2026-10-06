
FROM clamav/clamav:1.4.6

RUN \
    # Upgrade
    apk upgrade --update --no-cache && \
    # Use Edge for important CVE updates
    apk add --upgrade --no-cache -X https://dl-cdn.alpinelinux.org/alpine/edge/main busybox busybox-binsh ssl_client
