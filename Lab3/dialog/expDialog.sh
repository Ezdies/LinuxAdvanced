#!/bin/bash


#proste okno dialogowe
#dialog --title "Wiadomosc" --msgbox "Witaj w oknie dialogowym" 5 30

#okno z przyciskiem yes/no
#dialog --title "Wiadomosc 2" --yesno "Lubisz okna dialogowe" 6 30

#okno informacyjne
#dialog --title "Wiadomosc 3" --infobox "Prosze czekać..." 10 30; sleep 4

#okno do wprowadzania danych (Na wyjście błędu trafia wszystko co wprowadzamy)
#dialog --title "Wiadomosc 4" --inputbox "Podaj swoje imie" 8 40 2> err$$

#okno dialogowe do wprowadzania tekstu
#dialog --title "Wiadomosc 5" --textbox /etc/profile 22 70

#okno z menu

#dialog --title "Wiadomość 6" --menu "Wybierz kolor" 10 30 3 1 czerwony 2 zielony 3 niebieski

#okno z listą opcji do wielokrotnego wyboru
#dialog --title "Wiadomosc 7" --checklist "Wybierz podzespoly" 10 60 3 \
#   1 "CPU" off \
#   2 "GPU" on \
#   3 "RAM" on

#okno z listą pojedynczego wyboru

# dialog --backtitle "Wybor notebooka" \
#   --radiolist "Wybierz producenta:" 10 40 4 \
#      1 "Asus" off \
#      2 "Acer" off \
#      3 "Dell" on \
#      4 "Lenovo" off

#okno do wprowadzania hasła
#dialog --title "Wprowadzanie hasla" \
#   --passwordbox "Podaj haslo" 8 40 2> haslo.txt

#okno wyboru pliku
#dialog --fselect /home/ezdies/LinuxAdvanced 10 40 2> sciezka.txt

#okno z paskiem postepu
# licznik=0
# while [ $licznik -lt 100 ]
# do 
#     licznik=$[ $licznik + 1]
#     echo $licznik | dialog --gauge "Postep" 8 40
# done 

#okno z ustawianiem godziny

#dialog --clear --timebox "Podaj godzine" 3 8 16 18 59 2> godz.txt

#okno kalendarza
dialog --calendar "Kalendarz" 0 0 13 03 2025 2> data.txt
