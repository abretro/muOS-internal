#!/bin/sh

# DEVICE CONFIG - CPU
DC_CPU_DEFAULT=$(PARSE_INI "$DEVICE_CONFIG" "cpu" "default")
DC_CPU_GOVERNOR=$(PARSE_INI "$DEVICE_CONFIG" "cpu" "governor")
DC_CPU_SCALER=$(PARSE_INI "$DEVICE_CONFIG" "cpu" "scaler")

export DC_CPU_DEFAULT
export DC_CPU_GOVERNOR
export DC_CPU_SCALER
