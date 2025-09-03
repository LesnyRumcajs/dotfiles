function fil_epoch_now --argument-names network
  fil_date_to_epoch $network (date --utc --rfc-3339=seconds)
end
