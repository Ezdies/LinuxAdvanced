#!/usr/bin/awk -f

#ARGC - ilość parametrów
#BEGIN { print "Parametry = " ARGC }

#ARGV - wartość parametrów
BEGIN { 
    for ( i = 0; i < ARGC; ++i ){
        printf "ARGV[%d] = %s\n", i, ARGV[i]
    }
}

#CONVFMT - format liczbt

BEGIN { print "Format liczby = " CONVFMT }

#ENVIRON - tablica zmiennych środowiskowych
BEGIN { print ENVIRON["USER"] }

#FILENAME - nazwa pliku (parametr) - tylko blok END
END { print FILENAME }

#NF - ilość kolumn 
BEGIN {}
NF > 6

#NR - ilość kolumn w aktualnym rekordzie (wierszu)
BEGIN {}
NR > 6


