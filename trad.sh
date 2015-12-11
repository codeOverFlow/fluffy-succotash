#!/bin/bash

paths=/media/Enseignant/hazem-a/traduction_automatique

perl ${paths}/mosesdecoder/scripts/training/train-model.perl -root-dir $1 -external-bin-dir ${paths}/external -corpus $1/lower/train.lowercased -f $2 -e $3 -alignment grow-fiag-final-and -reordering msd-bidirectional-fe -lm 0:3:$1/lm/train.lm >& $1/lm/training.out &
