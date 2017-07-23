[![dockeri.co](http://dockeri.co/image/bandsintown/geoip)](https://hub.docker.com/r/bandsintown/geoip/)

[![Build status](https://badge.buildkite.com/f78e045c0b561ba33f80f3c996ccfe89b49ade24b832f92bfd.svg)](https://buildkite.com/bandsintown/docker-geoip)
[![GitHub issues](https://img.shields.io/github/issues/bandsintown/docker-geoip.svg "GitHub issues")](https://github.com/bandsintown/docker-geoip)
[![GitHub stars](https://img.shields.io/github/stars/bandsintown/docker-geoip.svg "GitHub stars")](https://github.com/bandsintown/docker-geoip)
[![Docker layers](https://images.microbadger.com/badges/image/bandsintown/geoip.svg)](http://microbadger.com/images/bandsintown/geoip)
	
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