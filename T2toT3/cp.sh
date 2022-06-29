#!bin/sh
i=0
cat list1.txt | while read line
do
    #echo "$line"
    i=$((i+1))
    #echo $i
    fn=$(basename "$line")
    #echo $fn
    if [ ! -f "$fn" ];
    then
	#echo "File already there: "$fn""
    #else
	xrdcp root://se01.indiacms.res.in/$line ./
    fi
done