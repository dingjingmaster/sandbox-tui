#!/bin/bash

mkdir -p ~/.cargo

cat > ~/.cargo/config.toml <<EOF
[source.crates-io]
replace-with = "tuna"

[source.tuna]
registry = "https://mirrors.tuna.tsinghua.edu.cn/git/crates.io-index.git"

[net]
git-fetch-with-cli = true
EOF

curl --proto '=https' -tlsv1.2 -sSf https://sh.rustup.rs | sh

source ~/.cargo/env

rustup default stable
