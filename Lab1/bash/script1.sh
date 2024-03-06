#!/usr/bin/bash

# Komentarz

#Deklaracja zmiennych
a="Pierwsza zmienna"
echo $a

echo

#apostrofy

echo 'Tekst: $a'
echo "Tekst: $a"
echo "Tekst: \$a"

echo `ls -a`

echo

#wersja alternatywna
$( ls -a )

echo

#Rodzaje zmiennych
#Zmienne lokalne

b="Zmienna lokalna" #jak nie ma spacji, to zmienna jest tworzona, jak są, to jest to przypisywanie
katalog=`pwd`
echo "Jestes w katalogu: $katalog"

katalog=$( pwd )
echo "Jesteś w katalogu: $katalog"

echo

#Zmienne specjalne
echo "$0" #nazwa ścieżki skryptu
#jak jest w apostrofach, to zostanie zinterpretowane jako tekst
echo "$@" #zwraca parametry (argumenty)
echo "Parametry skryptu $@"

echo

echo "$?" #przechwytuje wynik wykonania poprzedniego polecenia
echo "$$" #pid powłoki w której uruchomił się dany skrypt

#Zmienne środowiskowe

#bash - uruchomienie podpowłoki
#exit - wyjście z podpowłoki
#export <nazwa zmiennej> - ustawienie zmiennej jako globalnej - widocznej między powłokami
#export -n <nazwa zmiennej> - usuwamy atrybut zmiennej globalnej

#wyświetlenie zmiennych globalnych
#echo $( export -p )

#wyświetlanie zmiennych środowiskowych
#echo `env`

echo

#zmienne tablicowe
tablica=(10 2 3 4 5)
echo ${tablica[0]} #pierwszy element
echo ${tablica[*]} #wszystko wyświetlone po enterze
echo ${tablica[@]} #wszystko wyświetlone w jednej linii

echo ${#tablica[0]} #ilosc znaków pierwszego elementu

#dodawanie elementów do tablicy
tablica[5]=6
echo ${tablica[*]}

#tworzenie tablicy jedynie poprzez dodawanie nowych elementów
tab[0]="Tak"
tab[1]="Nie"

echo ${tab[@]}

echo

#usuwanie elementów tablicy
unset tablica[3]

echo ${tablica[@]}

#usuwanie całej tablicy
unset tablica[*]
echo ${tablica[@]}