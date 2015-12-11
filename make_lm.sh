#!/bin/bash

paths=/media/Enseignant/hazem-a/traduction_automatique

${paths}/srilm/bin/i686-m64/ngram-count -order 3 -interpolate -kndiscount -unk -text $1/lower/train.lowercased.$3 -lm $1/lm/train.lm
