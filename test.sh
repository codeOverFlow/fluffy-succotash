#!/bin/bash

paths=/media/Enseignant/hazem-a/traduction_automatique

rm -fr $1/out/

${paths}/mosesdecoder/scripts/training/filter-model-given-input.pl out $1/model/moses.ini $1/lower/train.lowercased.$2

${paths}/mosesdecoder/bin/moses -f $1/out/moses.ini < $1/lower/train.lowercased.$2 > $1/lm/res.$3
