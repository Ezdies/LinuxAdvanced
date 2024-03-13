#!/bin/bash

#sprawdzanie ustawień

echo "limits" | bc

echo 
#podstawa liczb dla wejścia (ibase) i dla wyjścia (obase)

echo "ibase" | bc
echo "obase" | bc
 
echo

 #sprawdzanie dokładności

 echo "scale" | bc
 echo "scale" | bc -l

 echo

 #proste operacje matematyczne
 echo "2+4*5" | bc

 echo


 #pierwiastek
 echo "sqrt(16)" | bc

 echo

 #potęga
 echo "5^2" | bc

 echo

#Liczba eulera

echo "e(1)" | bc -l

echo

#Liczba eulera do 2 miejsca po przecinku (ogranicza wyświetlanie, ale nie zaokrągla)
echo "scale=2;e(1)" | bc -l

echo

#sinus w radianach

echo "s(45)" | bc -l

echo

#konwersja na system dwójkowy
echo "obase=2;24" | bc

echo

#problem 1 (czasem zajmuje dużo czasu)
echo "7^7^7" | bc





