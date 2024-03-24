#!/bin/bash

#Przykład1 - kropka

echo -e "kot\nplot\npot\npit\npat" | awk "/p.t/"

echo

#Przykład2 - daszek - początek linii

echo -e "Test\nTenis\nTeraz\nTenor" | awk "/^Ten/"

echo

#Przykład3 - dolar - koniec linii

echo -e "kot\nplot\npot\npit\npat" | awk "/ot$/"

echo

#Przykład4 - nawias kwadratory - [pl] - dopasowanie

echo -e "kot\nlot\npot\npit\npat" | awk "/[pl]ot/"

echo

#Przykład5 - negacja - wyświetlenie wszystkiego poza tym w nawiasie kwadratowym

echo -e "kot\nlot\npot\npit\pat" | awk "/[^pl]ot/"

echo

#Przykład6 - | to lub to - alternatywa

echo -e "kot\nlot\npot\npit\npat" | awk "/pot|lot/"

echo

#Przykład7 - 0 lub 1 wystąpienie litery poprzedzającej

echo -e "sto\nstos" | awk "/stos?/"

echo

#Przykład8 - 0 lub więcej wystąpień litery poprzedzającej
echo -e "sto\nstop\nstopp" | awk "/stop*/"

echo

#Przykład 9 - 1 lub więcej razy musi coś wystąpić
echo -e "112\n242\n123\n331\n456\n222" | awk "/2+/"

echo

#Przykład 10 - grupowanie
echo -e "Nowy traktor\nNowy rower\nNowy samochod\nNowy kombajn" | awk "/Nowy (traktor|kombajn)/"



