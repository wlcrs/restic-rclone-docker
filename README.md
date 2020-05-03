# Restic with rclone support Docker image

## Run

`rclone` expects the rclone.conf configuration file at `/config/rclone/rclone.conf` 

`restic` caches repository metadata in `/cache`

`restic` will by default use the Docker container hostname when backupping. It is advisable to override this with the -H flag

Example command:

   docker run \
          -v "/opt/restic/my-rclone.conf:/config/rclone/rclone.conf:ro" \
          -v "/opt/restic/cache:/cache:rw" \
          -v "/mnt/mydata:/mydata:ro" \
          --env-file "restic_environment.txt" \
          wlcrs/restic-rclone:latest \
          \
          -r rclone:my-rclone-repo:my-tag \
          --verbose backup \
          -H nas \
          /mydata
       
