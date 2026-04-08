#!/bin/bash
echo "== System Update =="

sudo apt update && sudo apt upgrade -y || exit 1
