#!/bin/bash

# sprawdzanie, czy flaga --help została użyta
if [ "$1" == "--help" ]; then
    echo "Dostępne flagi to:"
    echo "--date: wyświetla dzisiejszą datę"
    echo "--logs [liczba]: tworzy określoną liczbę plików log; domyślnie tworzy 30 plików"
    exit 0
fi

# sprawdzanie, czy flaga --date została użyta
if [ "$1" == "--date" ]; then
    echo "Dzisiejsza data to: $(date)"
fi

# sprawdzanie, czy flaga --logs została użyta
if [ "$1" == "--logs" ]; then
    # ustawienie domyślnej liczby plików na 30, jeśli nie podano argumentu
    num_files=${2:-30}

    for i in $(seq 1 $num_files)
    do
        touch log$i.txt
        echo "Nazwa pliku: log$i.txt" > log$i.txt
        echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
        echo "Data utworzenia: $(date)" >> log$i.txt
    done
fi
