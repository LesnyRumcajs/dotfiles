function fil_genesis_timestamp --argument-names network
  if test "$network" = "mainnet"
    echo 1598306400
  else if test "$network" = "calibnet"
    echo 1667326380
  else
    echo "Unsupported network: $network"
    return 1
  end
end
