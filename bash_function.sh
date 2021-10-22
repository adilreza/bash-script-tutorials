#!/bin/bash

# this one is the greeting test function

function greetings {
   echo "Hello $1"
}

# another way to declare a function
myfunction(){
echo "hello $1 $2, How are you boss"
}

greetings adil

myfunction adil reza

