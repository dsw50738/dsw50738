#!/bin/bash
if [ $1 == "--date" ];
then
date
elif [ $1 == "--logs" ];
then
for ((i=1; i<=100; i++))
do
    filename="log${i}.txt"
    echo "Nazwa pliku: $filename" > "$filename"
    echo "Nazwa skryptu: skrypt.sh" >> "$filename"
    echo "Data: $(date)" >> "$filename"
done
elif [ $1 == "--logs30" ];
then
for ((i=1; i<=30; i++))
do
    filename="log${i}.txt"
    echo "Nazwa pliku: $filename" > "$filename"
    echo "Nazwa skryptu: skrypt.sh" >> "$filename"
    echo "Data: $(date)" >> "$filename"
done
else
	echo "podaj argument"
fi
