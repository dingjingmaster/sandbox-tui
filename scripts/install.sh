#!/bin/bash

mkdir -p ~/.cargo

cat > ~/.cargo/config.toml <<EOF
[source.crates-io]
replace-with = "rsproxy"

[source.rsproxy]
registry = "https://rsproxy.cn/crates.io-index"

[net]
git-fetch-with-cli = true
EOF

curl --proto '=https' -tlsv1.2 -sSf https://sh.rustup.rs | sh

source ~/.cargo/env

rustup default stable
