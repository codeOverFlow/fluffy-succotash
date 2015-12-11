#!/bin/bash

mkdir $1 $1/data $1/token $1/clean $1/lower $1/cooc $1/giza-vcb $1/giza-snt $1/final $1/lm $1/model $1/results $1/quality
cp moses.ini $1/moses.ini
cp moses_opt.ini $1/moses_opt.ini
