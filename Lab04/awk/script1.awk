#!/usr/bin/awk -f

#Składnia awk
#[wzorzec] <program>

#kolumny domyślnie są dzielone po spacji
#$0 - cały wiersz, $1 - 1 grupa/kolumna, $2 - 2 grupa/kolumna itp.


#Przykład1 - wypisanie wszystkich imion kończących się na "asia"

/asia/ { print $0 }


#Przykład2 - wszystkie osoby, które mają na imię Zosia

/^Zosia/ { print "Witaj " $0 }
/^Zosia/ { print "Witaj " $1 }
