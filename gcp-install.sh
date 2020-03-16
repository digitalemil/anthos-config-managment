#!/bin/bash
echo -n "PASSWORD: "; stty -echo; read PASSWORD; stty echo; echo
export PASSWORD

sed 's/%PASSWORD%/'"$PASSWORD"'/g' gcp-thesimplegym.yaml >thegym/namspaces/thegym/thesimplegym.yaml

PASSWORD= # get rid of passwd
export PASSWORD


