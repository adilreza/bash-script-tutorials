#!/bin/bash

function fun1(){
  # result = $1
  echo $1
  return 05
}

function fun2(){
  fun1 50
  local res=$?
  echo $res
}

fun2
