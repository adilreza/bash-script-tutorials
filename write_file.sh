#!/bin/bash

for i in 1 2 3
do
 echo $i | tee -a writterfile.txt

done
