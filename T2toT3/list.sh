#!/bin/sh                                                                                                                                
for basedir in /store/user/arastogi/SingleElectron/SingleElectronRun2016Ev1_Nano25Oct2019_RHN_20200117_080050/200117_070140
do
    (xrd se01.indiacms.res.in dirlistrec /cms/$basedir) > list4.txt
    awk '{print $5 > "list3.txt" }' \list4.txt
    awk '{print substr($1, 6); }' \list3.txt > list2.txt
    cat list2.txt |grep root > list1.txt
done;

