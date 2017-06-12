[![Build status](https://badge.buildkite.com/0dc51f0f59038e0e947c2be0edbc04c379081027b14fcb964e.svg)](https://buildkite.com/bandsintown/docker-geoip)

# Maxmind GeoIP 

## Usage

### Run the image

```
docker run -d bandsintown/geoip
```

The directory `/usr/share/GeoIP` containing the Maxmind GeoIP database is mounted by default as a volume.

### Variables

The following environment variables might be passed to configure [Maxmind GeoIP update](http://dev.maxmind.com/geoip/geoipupdate/):

- `GEOIP_USER_ID`: The Maxmind User Id. Defaults to `999999` (free)
- `GEOIP_LICENCE_KEY`: The Maxmind Licence Key. Defaults to `000000000000` (free) 
- `GEOIP_PRODUCT_IDS`: The Maxmind product ids. Defaults to `506 533 GeoLite2-City GeoLite2-Country`
- `GEOIP_MAXMIND_HOST`: The server to use. Defaults to `updates.maxmind.com`.
- `GEOIP_PROTOCOL`: The desired protocol either `https` (default) or `http`.
- `GEOIP_SKIP_HOSTNAME_VERIFICATION`: skip host name verification on HTTPS connections. Defaults to `0`.
- `GEOIP_SKIP_PEER_VERIFICATION`: skip peer verification on HTTPS connections. Defaults to `0`.

### Cron

The image is configured to run a cron daemon updating the Maxming GeoIP database [each day at 1AM](rootfs/root/crontabs/root).