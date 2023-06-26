#!/bin/bash

# sprawdzanie, czy flaga --help została użyta
if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
    echo "Dostępne flagi to:"
    echo "--help (-h): wyświetla dostępne flagi"
    echo "--date (-d): wyświetla dzisiejszą datę"
    echo "--logs (-l) [liczba]: tworzy określoną liczbę plików log; domyślnie tworzy 30 plików"
    echo "--init (-i): klonuje całe repozytorium do katalogu w którym został uruchomiony oraz ustawia ścieżkę w zmiennej środowiskowej PATH"
    echo "--error (-e) [liczba]: tworzy określoną liczbę plików error; domyślnie tworzy 100 plików"
    exit 0
fi

# sprawdzanie, czy flaga --date została użyta
if [ "$1" == "--date" ] || [ "$1" == "-d" ]; then
    echo "Dzisiejsza data to: $(date)"
fi

# sprawdzanie, czy flaga --logs została użyta
if [ "$1" == "--logs" ] || [ "$1" == "-l" ]; then
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
