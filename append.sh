echo "enter the file name:\c"
read fname
if [ -f $fname ]
then 
	if [ -w $fname ]
	then 
	echo "type the matter to append. to quit press ctrl+d"
	cat >> $fname
	else 
	echo "you dont have permission to write"
fi
fi
