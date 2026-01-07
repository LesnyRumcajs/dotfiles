function cargo_update_all
  # Updates all Cargo-managed Rust binaries installed via `cargo install`
  cargo install (cargo install --list | grep -E '^[a-z0-9_-]+ v[0-9.]+:$' | cut -f1 -d' ')
end
