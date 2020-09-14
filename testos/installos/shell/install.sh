#!/bin/bash
#author:niuxl
#data:2020-09-10

system=`grep "system" /opt/testos/testos/test2.txt | awk -F: '{print $NF}'`
banben=`grep "banben" /opt/testos/testos/test2.txt | awk -F: '{print $NF}'`
lang=`grep "lang" /opt/testos/testos/test2.txt | awk -F: '{print $NF}'`
fangan=`grep "fangan" /opt/testos/testos/test2.txt | awk -F: '{print $NF}'`
boot=`grep "boot" /opt/testos/testos/test2.txt | awk -F: '{print $NF}'`
swap=`grep "swap" /opt/testos/testos/test2.txt | awk -F: '{print $NF}'`
root=`grep "root" /opt/testos/testos/test2.txt | awk -F: '{print $NF}'`
qita=`grep "qita" /opt/testos/testos/test2.txt | awk -F: '{print $NF}'`
package=`grep "package" /opt/testos/testos/test2.txt | awk -F: '{print $NF}'`

rm -rf /var/tftp/initrd.img
rm -rf /var/tftp/vmlinuz

cp /var/ftp/pub/$system$banben/images/pxeboot/initrd.img /var/tftp/
cp /var/ftp/pub/$system$banben/images/pxeboot/vmlinuz /var/tftp/

rm -rf /var/ftp/ks.cfg
cbanben=`echo $banben | awk -F. '{print $1}'`
if [ $cbanben == 7 ];then
   cp /opt/bak/ks/ks7.cfg /var/ftp/ks.cfg
   chmod +r /var/ftp/ks.cfg
   sed -i "s/10.3\/pub/10.3\/pub\/$system$banben/" /var/ftp/ks.cfg
fi
if [ $fangan == "zidingyif" ];then
