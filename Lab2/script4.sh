#Przypisanie parametrów wejściowych do zmiennych

l1=$1
l2=$2

# Funkcje
function dodaj(){
    local w=$[ $l1 + $l2 ] #zmienne są domyślnie globalne (local, aby były lokalne)
    echo $w
}

dodaj $l1 $l2 
