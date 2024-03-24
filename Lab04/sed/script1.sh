#!/bin/bash

<<KOMENTARZ

Parametry sed:
-n - na wyjściu będą wypisywane jedynie linie, na których wykonano komendę p (print) lub s (podstawienie) z parametrem p
-e - stosujemy, gdy przetwarzamy wiele poleceń lub skryptów
-f - dzięki temu argumentowi wczytujemy komendy z pliku
-v - wyświetlenie informacji o programie
-t - wyłączenie wyjścia z istotnych komend powłoki, które są wykonywane
-q - likwiduje ostrzeżenia w rezultatach podstawienia
-i - edycja w miejscu, zapisuje zmiany w oryginalnym pliku
-b - zapisanie kopii zapasowej oryginalnego pliku

Składnia sed:
sed "s/stary/nowy/" plik -szuka linia po linii, zastępuje tylko pierwsze wystąpienie

KOMENTARZ

#Przykład1 - usuwanie linii
sed -e "1d" -e "2d" -e "7d" ksiazki2.txt

echo

#Przykład2 - zastąpienie wyrazu pierwszego przez wyraz drugi (pierwsze wystąpienie)
sed "s/Proces/Wyrok/" ksiazki2.txt

echo

#Przykład3 - zastąpienie wyraz1 przez wyraz2 (każde wystąpienie)

sed "s/Proces/Wyrok/g" ksiazki2.txt

echo

#Przykład4 - zastąpienie wielu wyrazów - metoda 1
sed "s/Proces/Wyrok/" ksiazki2.txt > ksiazki2m.txt && sed "s/Mały/Duży/" ksiazki2m.txt

echo

#Przykład5 - zastąpienie wielu wyrazów - metoda 2
sed "s/Proces/Wyrok/;s/Mały/Duży/" ksiazki2.txt

echo


