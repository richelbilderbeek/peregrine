#!/bin/bash

xs=()
xs+=("Hallo world")
xs+=("again world")
echo "Full array:"
echo ${xs[@]}
echo "Index 0:"
echo ${xs[0]}
echo "Index 1:"
echo ${xs[1]}