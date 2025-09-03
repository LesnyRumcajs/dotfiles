function fil_epoch_to_date --argument-names network --argument-names epoch
  set base (fil_genesis_timestamp $network)
  date --utc -d @(math $base + $epoch x 30)
end
