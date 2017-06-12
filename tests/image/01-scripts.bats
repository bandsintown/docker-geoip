@test "script 'geoipupdate.sh' should be present" {
  run which geoipupdate.sh
  [ $status -eq 0 ]
}