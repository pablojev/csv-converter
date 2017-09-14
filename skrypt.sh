n=0
while read curline; do
	szuk=`echo $curline | awk 'BEGIN { FS = ";" } { print $3 }'`
	pass=`cat 2.csv | grep "^$szuk"`
	echo $pass
done < $1