#!/bin/bash

# sprawdzanie, czy flaga --date została użyta
if [ "$1" == "--date" ]; then
    echo "Dzisiejsza data to: $(date)"
fi
