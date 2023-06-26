#!/bin/bash

# ten kod sprawdza czy podano argumenty, jeśli nie podano to tworzy 30 plików

if [ "$1" == "--date" ]; then
    echo "Dzisiejsza data to: $(date)"
fi

if [ "$1" == "--logs" ]; then
    num_files=${2:-30}

    for i in $(seq 1 $num_files)
    do
        touch log$i.txt
        echo "Nazwa pliku: log$i.txt" > log$i.txt
        echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
        echo "Data utworzenia: $(date)" >> log$i.txt
    done
fi
