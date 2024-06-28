#!/bin/sh

# GLOBAL CONFIG - BOOT
: "${GC_BOO_FACTORY_RESET:=0}"
: "${GC_BOO_DEVICE_SETUP:=0}"
: "${GC_BOO_CLOCK_SETUP:=0}"
: "${GC_BOO_FIRMWARE_DONE:=1}"

GC_BOO_FACTORY_RESET=$(PARSE_INI "$GLOBAL_CONFIG" "boot" "factory_reset")
GC_BOO_DEVICE_SETUP=$(PARSE_INI "$GLOBAL_CONFIG" "boot" "device_setup")
GC_BOO_CLOCK_SETUP=$(PARSE_INI "$GLOBAL_CONFIG" "boot" "clock_setup")
GC_BOO_FIRMWARE_DONE=$(PARSE_INI "$GLOBAL_CONFIG" "boot" "firmware_done")

export GC_BOO_FACTORY_RESET
export GC_BOO_DEVICE_SETUP
export GC_BOO_CLOCK_SETUP
export GC_BOO_FIRMWARE_DONE
