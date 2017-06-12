#!/bin/sh

# Render the template
cat /etc/geoip/GeoIP.conf.tmpl | sigil -p > /etc/geoip/GeoIP.conf

geoipupdate -v