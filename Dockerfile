FROM alpine:latest

RUN adduser -D -g 'hak5' hak5 \
    && mkdir /app

COPY run.sh /app

RUN apk add ca-certificates wget unzip libc6-compat nfs-utils efs-utils su-exec\
    && wget https://downloads.hak5.org/api/devices/cloudc2/firmwares/latest --no-cache \
    && unzip latest \
    && cp *amd64_linux /app/c2_amd64_linux \
    && rm c2*  \
    && rm sha256sums \
    && chown -R hak5:hak5 /app/ \
    && chmod -R 0700 /app/ \
    && mkdir -p /mnt/efs_data \
    && apk del wget unzip

EXPOSE 8080 2022

ENTRYPOINT ["/bin/sh"]

CMD ["/app/run.sh"]
