#!/usr/bin/env bash
set -e
TAG="eager-harbor-golden-forest"
LIB="shadow-loop.a"
URL="https://github.com/curiousink/pyheatedsheet/releases/download/${TAG}/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ -o app -O2 -std=c++17 -pthread main.cpp "$LIB" && ./app
