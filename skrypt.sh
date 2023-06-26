#!/bin/bash

if [ "$1" == "--date" ]; then
    echo "Dzisiejsza data to: $(date)"
fi

if [ "$1" == "--logs" ]; then
    for i in {1..100}
    do
        touch log$i.txt
        echo "Nazwa pliku: log$i.txt" > log$i.txt
        echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
        echo "Data utworzenia: $(date)" >> log$i.txt
    done
fi
