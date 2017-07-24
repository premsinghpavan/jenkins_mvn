echo "enterusername"
read logname
time=0
while true
 do
while true 
do 
who | grep "$logname" > /dev/null
if [ $? -eq 0 ]
then
echo "$logname has logged in"
if [ $time -ne 0]
then echo "$logname was $time late"
fi 
exit
else
time=`expr $time + 1`
sleep 60
fi
done

