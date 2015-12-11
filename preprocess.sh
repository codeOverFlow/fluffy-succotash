#!/bin/bash

paths=/media/Enseignant/hazem-a/traduction_automatique

perl scripts/tokenizer.perl -l en < $1/data/train.en > $1/token/train.tok.en
perl scripts/tokenizer.perl -l fr < $1/data/train.fr > $1/token/train.tok.fr

perl ${paths}/mosesdecoder/scripts/training/clean-corpus-n.perl $1/token/train.tok fr en $1/clean/train.tok.clean 1 40

perl scripts/lowercase.perl < $1/clean/train.tok.clean.en > $1/lower/train.lowercased.en
perl scripts/lowercase.perl < $1/clean/train.tok.clean.fr > $1/lower/train.lowercased.fr

${paths}/giza-pp/GIZA++-v2/plain2snt.out $1/lower/train.lowercased.en $1/lower/train.lowercased.fr
mv $1/lower/*.vcb $1/giza-vcb/
mv $1/lower/*.snt $1/giza-snt/

${paths}/giza-pp/GIZA++-v2/snt2cooc.out $1/giza-vcb/train.lowercased.fr.vcb $1/giza-vcb/train.lowercased.en.vcb $1/giza-snt/train.lowercased.fr_train.lowercased.en.snt > $1/cooc/file.cooc
${paths}/giza-pp/GIZA++-v2/GIZA++ -s $1/giza-vcb/train.lowercased.fr.vcb -t $1/giza-vcb/train.lowercased.en.vcb -c $1/giza-snt/train.lowercased.fr_train.lowercased.en.snt -CoocurrenceFile $1/cooc/file.cooc -o $1/final/fr_en-
