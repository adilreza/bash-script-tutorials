#!/bin/bash
input="/Users/adilreza/Desktop/mylab/bashlearning/mytxt.txt"
arr=()
while IFS= read -r line; do
   arr+=("$line")
done <"$input"

for each in "${arr[@]}"
do
  echo "$each"
done


for each in "${arr[@]}"
do
   echo "for --- $each"
  mapcidr -cidr $each -silent | dnsx -silent -resp-only -ptr $each | grep -v -E '^.*\b(.web-hosting.com|.registrar-servers.com)\b.*$' | tee -a writterfile2.txt
  echo "another----------------------------------------------------------" | tee -a writterfile2.txt
done