#!/bin/bash
sudo rm  /home/start.sh
sudo cp /ITG_performance/start.sh /home/
sudo chmod 744  /home/start.sh
cd /
rm -rf /ITG_performance
wget https://bitbucket.org/pjtr/jmeter-websocket-samplers/downloads/JMeterWebSocketSamplers-1.2.8.jar
mv JMeterWebSocketSamplers-1.2.8.jar /mnt/jmeter/apache-jmeter-5.4.1/lib

echo " input  git clone ? >>>   1=  Polls    2=  Websockets"
read input
if [ "$input" = "1" ] ; then
        echo " 1 =  Poll test has been started"
        sudo git clone https://github.com/lesukk/ITG_performance
        sleep 10
       sudo /mnt/jmeter/apache-jmeter-5.4.1/bin/jmeter.sh -n -t /ITG_performance/scenario.jmx  -l /mnt/scenario.jtl
else
        echo " 2 =  WebSocket test has been started"
        sudo git clone https://github.com/lesukk/ITG_performance
        sleep 10
        sudo /mnt/jmeter/apache-jmeter-5.4.1/bin/jmeter.sh -n -t /ITG_performance/ITG_WebSockets.jmx  -l /mnt/scenario.jtl
        
fi
#git clone -b websockets https://github.com/justUniverse13/Performance
#sleep 15 
#/mnt/jmeter/apache-jmeter-5.3/bin/jmeter.sh -n -t /Performance/scenario.jmx  -l /mnt/scenario.jtl
