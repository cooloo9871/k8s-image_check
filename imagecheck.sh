#!/bin/bash
#set -x

NODENAME=$(kubectl get no -o name | cut -d '/' -f2)
[[ -f image.txt ]] && rm image.txt

for nn in $NODENAME
do
  echo Node:$nn
  ns=$(kubectl get pods -A -o wide | grep -w $nn | tr -s \ - | cut -d ' ' -f1)
  for c in $ns
  do
    pod=$(kubectl get pods -n $c -o wide | grep -w $nn | tr -s \ -| cut -d ' ' -f1)
    for n in $pod
    do
      kubectl -n $c get pod $n -o jsonpath='{.spec.containers[*].image}' | tr ' ' '\n' >> image.txt
      echo -e "\n" >> image.txt
    done
  done
  cat image.txt | grep -v '^$' | sort | uniq
  rm image.txt
  echo
done
