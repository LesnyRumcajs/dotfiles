function fil_date_to_epoch --argument-names network --argument-names date
  set base (fil_genesis_timestamp $network)
  set target (date --utc --date="$date" +%s)
  math --scale=0 "($target - $base) / 30"
end
