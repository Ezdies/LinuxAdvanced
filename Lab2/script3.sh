<<KOMENTARZ

Deskryptory

0 - Deskryptor wejściowy
1 - Deskryptor wyjściowy
2 - Deskryptor wyjściowy błędu

KOMENTARZ

# Przykład1 - utworzenie pliku z zawartością
ls > plik.txt

# Przykład2 - utworzenie pliku z zawartością wykorzystując deskryptory
#exec 1> "plik1.txt" #ustawienie, ze deskryptor 1 ma zapisywać do pliku1
#ls >&1 #przekazanie wyniku do dekryptora 1

# Przykład 3 - połączenie 2 plików w całość"
echo "Witaj w Slackware" > plik1.txt
echo "Powtórka z Bash" > plik2.txt
cat plik1.txt plik2.txt > plik12.txt

# Przykład 4 - dopisywanie danych do pliku
echo "Cwiczenia" >> plik12.txt

#Przykład 5 - przekierowanie strumieni

# exec 2>&1 #ustawiamy że deskryptor 2 przekierowuje na pierwszy
# echo "Testujemy" > /dev/null >&2 #dev/null to nic

# Przykład6 - wyświetlenie grepem wszystkich plików o rozszerzeniu .txt
ls -a | grep ".txt"

# Przykład7 - potoki nazwane
mkfifo myPipe
ls -al > myPipe
grep ".txt" < myPipe

