#!/bin/bash
#author:niuxl
#data:2020-09-10

system=`grep "system" ../../test2.txt | awk -F: '{print $NF}'` 
banben=`grep "banben" ../../test2.txt | awk -F: '{print $NF}'`
lang=`grep "lang" ../../test2.txt | awk -F: '{print $NF}'`
fangan=`grep "fangan" ../../test2.txt | awk -F: '{print $NF}'`
boot=`grep "boot" ../../test2.txt | awk -F: '{print $NF}'`
echo $pinpai
