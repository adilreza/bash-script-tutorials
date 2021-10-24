#!/bin/bash
input="/Users/adilreza/Desktop/mylab/bashlearning/my_ip.txt"
# while IFS= read -r line
myarray=(68.65.123.97/20 162.0.224.0/20 5.56.73.146/20 5.180.185.125/20)
counter=1

# while IFS= read -r line
# do
#   myarray[counter]=$line
#   counter=$((counter+1))
# done < "$input"

# echo ${myarray[*]}

for value in "${!myarray[@]}"
do
  echo ${myarray[$value]}
  tempval=${myarray[$value]}
  mapcidr -cidr $tempval -silent | dnsx -silent -resp-only -ptr $tempval | grep -v -E '^.*\b(.web-hosting.com|.registrar-servers.com)\b.*$' | tee -a writterfile.txt
  echo "another----------------------------------------------------------" | tee -a writterfile.txt
done
