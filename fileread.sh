#!/bin/bash
input="/Users/adilreza/Desktop/mylab/bashlearning/mytxt.txt"
while IFS= read -r line
do
  echo "$line"
done < "$input"

