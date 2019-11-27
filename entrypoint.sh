#!/bin/sh
ls "/github/home"
ls "/github/workspace"
ls
while IFS= read -r line
do
    latexmk -pdf -interaction=nonstopmode ${line}/main.tex
done < .fileToCompile
