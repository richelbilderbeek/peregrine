#!/bin/bash

xs=()
xs+=("Hallo world")
xs+=("again world")
echo "Full array:"
echo ${xs[@]}
echo "Elements concatenated:"
txt=$(printf ",%s" "${xs[@]}")
txt=${txt:1}
echo $txt