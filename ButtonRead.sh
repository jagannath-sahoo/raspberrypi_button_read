gpio -g mode 2 out
gpio -g write 2 1
gpio -g mode 2 in

while true
do
	readState=`gpio -g read 2`
	if [ $readState -eq 0 ]
	then
		`xdg-open https://www.collaborizm.com/`
		break
	fi
done