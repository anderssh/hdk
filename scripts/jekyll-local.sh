#!/usr/bin/env bash
set -euo pipefail

# Work around missing C++ headers in some macOS Command Line Tools setups.
export CPATH="${CPATH:-/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1}"
export HOME="${HOME:-$PWD}"

bundle install
bundle exec jekyll serve
