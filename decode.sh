#!/bin/bash

paths=/media/Enseignant/hazem-a/traduction_automatique
path2=/media/Enseignant/amir-hazem/tp2

$paths/mosesdecoder/bin/moses -f /comptes/E114886B/Documents/multilingue/$1/filtered_model/$2 < $3 > $1/results/res.en
