#!/bin/sh

# Render the template
cat /usr/etc/GeoIP.conf.tmpl | sigil -p > /usr/etc/GeoIP.conf

geoipupdate -v