#!/usr/bin/bash
if ! command -v ipcalc > /dev/null; then
    echo "ipcalc not found. Exiting"
    exit 1
fi