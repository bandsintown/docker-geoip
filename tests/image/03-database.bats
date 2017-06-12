@test "geo database should be present" {
  geoipupdate.sh 2>&1 > /dev/null
  count=$(ls /usr/share/GeoIP | wc -l)
  [ $count -ge 1 ]
}