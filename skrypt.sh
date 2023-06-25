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
elif [ $1 == "--help" ];
then
echo "--date  <wyświetla datel>"
echo "--logs <tworzy 100plików tekstowych>"
echo "--logs30 <tworzy 30plików tekstowych>"
echo "--help <wyświetla liste argumentów>"
else
	echo "podaj argument"
fi
