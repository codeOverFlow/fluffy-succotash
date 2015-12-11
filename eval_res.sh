#!/bin/bash

paths=/media/Enseignant/hazem-a/traduction_automatique
path2=/media/Enseignant/amir-hazem/tp2

perl $path2/multi-bleu.perl $2 < $1/results/res.en
