@test "package 'geoipupdate' should be present" {
  run which geoipupdate
  [ $status -eq 0 ]
}

@test "package 'sigil' should be present" {
  run which sigil
  [ $status -eq 0 ]
}