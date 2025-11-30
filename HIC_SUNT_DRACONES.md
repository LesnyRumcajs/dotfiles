# Hic Sunt Dracones

Random things I spent way too much time figuring out so I'd rather not repeat the process.

## Setting up OpenVPN client on a remote client

1. Ensure `systemd` is above 229; if not, use a different approach.
2. `git clone https://github.com/jonathanio/update-systemd-resolved.git && cd update-systemd-resolved.git && make`
4. `zypper install systemd-resolved`
5. `systemctl enable --now systemd-resolved`
6. Download the `.ovpn` config file from, e.g., ProtonVPN.
7. Modify it a bit:
  ```
  # This is NOT the regular VPN login/password; it's the OpenVPN / IKEv2 username. See more in https://protonvpn.com/support/vpn-auth-fail-solution
  auth-user-pass /etc/openvpn/pass.txt

  # This is not what ProtonVPN generates; ensure it's modified accordingly.
  setenv PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
  script-security 2
  up /usr/local/libexec/openvpn/update-systemd-resolved
  up-restart
  down /usr/local/libexec/openvpn/update-systemd-resolved
  down-pre
  
  # Extremely important to add, otherwise you lose connectivity to the remote server (bad).
  # This causes outgoing connections to go over the VPN while inbound connections use the defaults.
  # Source: https://serverfault.com/a/818637
  route-nopull
  route 0.0.0.0 128.0.0.0
  ```
8. Put it in a similar place in that file. Move it to remote's `/etc/openvpn/client.conf`
9. Put the OpenVPN / IKEv2 credentials (newline delimited) in `/etc/openvpn/pass.txt`. `chmod 0600 /etc/openvpn/pass.txt`.
10. `systemctl enable --now openvpn@client`
11. Check VPN assigned IP address via `curl https://ipinfo.io/ip`
