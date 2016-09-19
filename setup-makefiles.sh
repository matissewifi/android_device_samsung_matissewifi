#!/bin/sh

set -e

export VENDOR=samsung
export DEVICE=matissewifi
./../../$VENDOR/matisse-common/setup-makefiles.sh $@
