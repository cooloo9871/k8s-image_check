#!/bin/bash
#set -x

NODENAME=$(kubectl get no -o name | cut -d '/' -f2)
[[ -f image.txt ]] && rm image.txt

for nn in $NODENAME
do
  echo "The images being used on Node:$nn"
  ns=$(kubectl get pods -A -o wide | grep -w "$nn" | tr -s \ - | cut -d ' ' -f1 | sort -n | uniq)
  for c in $ns
  do
    pod=$(kubectl get pods -n "$c" -o wide | grep -w Running | grep -w "$nn" | tr -s \ -| cut -d ' ' -f1)
    for p in $pod
    do
      kubectl -n "$c" get pod "$p" -o jsonpath='{.spec.containers[*].image}' | tr ' ' '\n' >> image.txt
      echo -e "\n" >> image.txt
    done
  done
  cat image.txt | grep -v '^$' | sort -n | uniq
  rm image.txt
  echo
done
