#!/bin/bash

paths=/media/Enseignant/hazem-a/traduction_automatique
path2=/media/Enseignant/amir-hazem/tp2

rm -fr $1/filtered_model
perl $paths/mosesdecoder/scripts/training/filter-model-given-input.pl $1/filtered_model $1/$2 $1/$3
