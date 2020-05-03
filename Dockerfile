FROM rclone/rclone
FROM restic/restic
COPY --from=0 /usr/local/bin/rclone /usr/local/bin/rclone

WORKDIR /data

ENV XDG_CONFIG_HOME=/config
ENV XDG_CACHE_HOME=/cache
