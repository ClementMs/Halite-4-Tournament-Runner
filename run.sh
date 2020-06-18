#!/bin/bash
file="$(date +%s )"
kaggle-environments evaluate --environment halite --render '{"mode":"json"}' --agents $1 $2 $3 $4 --out $file
echo D_MATCH_FINISHED
echo `awk '/./{line=$0} END{print line}' $file`
rm $file