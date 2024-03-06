
#Wczytywanie danych z klawiatury

echo "Jaki jest Twój ulubiony kolor?"
read kolor
echo "Twój ulubiony kolor to: $kolor"

echo 

echo "Jaki jest Twój nickname?"
odp="Ezdies"
read
echo "$odp"

echo

echo "Podaj 3 liczby"
read a b c
echo "Liczba w zmiennej a, to: $a"
echo "Liczba w zmiennej b, to: $b"
echo "Liczba w zmiennej c, to: $c"

echo 

# Dopisywanie danych

echo "Podaj liczby od 4 do 10:"
read liczba
echo "Jesteś ${liczba}-ty w kolejce"

echo

# Wybrane parametry read

#1) -p - znak zachęty, bez znaku kończącego w nowej linii (w jednej linii)
read -p "Witaj " imie
echo "$imie"

#2) -a - przypisywanie kolejnych wartości do kolejnych indeksów zmiennej tablicowej

echo "Podaj elementy tablicy: "
read -a tablica
echo "${tablica[*]}"

#3) -e - brak nazwy zmiennej ->  $REPLY
echo "Witaj Bash"
read -e
echo $REPLY

#4) -s - nie wyświetla znaków wpisywanych przez użytkownika

# bez echa przez 30 sekund

read -p "Haslo: " -s -t 30 haslo
echo "$haslo"