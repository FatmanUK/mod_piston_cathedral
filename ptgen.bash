#!/bin/bash
set -euo pipefail

../ptgen/ptgen -m metadata/song.yml -p patterns/ >./unnamed.mod

