#!/bin/bash

echo "#######################################"
echo "         List of java active           "
echo "#######################################"
jps
echo "#######################################"
echo "Please enter PID you want to monitor : "
read PID

jstack $PID > jstack_temp.txt
ALLTHREAD=`cat jstack_temp.txt | grep -i STATE | wc -l`
BLOCKED=`cat jstack_temp.txt | grep -i BLOCKED | wc -l`
echo "Total threads is $ALLTHREAD"
echo "Total blocked is $BLOCKED"
rm jstack_temp.txt
