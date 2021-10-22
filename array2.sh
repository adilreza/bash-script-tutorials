#!/bin/bash

myarray=(1 2 3 4)
myarray[4]=5
myarray+=6

for value in "${myarray[*]}"; do echo "$value"; done
