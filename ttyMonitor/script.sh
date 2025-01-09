#!/usr/bin/sh

# Usage : ./ttyMonitor.sh FREQ

for i in $(seq 0 9); do
	 echo "$(cat /dev/ttyUSB$i $1 > outUSB$i.log;)" > /dev/null &
done

echo "Press any key to stop logging"
read X

# kill spawned threads
killall cat
