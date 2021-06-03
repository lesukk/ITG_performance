#!/bin/bash
sudo rm  /home/start.sh
sudo cp /ITG_performance/start.sh /home/
sudo chmod 744  /home/start.sh
cd /
rm -rf /ITG_performance
wget https://bitbucket.org/pjtr/jmeter-websocket-samplers/downloads/JMeterWebSocketSamplers-1.2.8.jar
mv JMeterWebSocketSamplers-1.2.8.jar /mnt/jmeter/apache-jmeter-5.4.1/lib

echo " input  git clone ? >>>   1=  Polls    2=  Websockets   3=  LoginByToken"
echo "  1)operation 1 =  Poll test has been started"
echo "  2)operation 2 =  WebSocket test has been started"
echo "  3)operation 3 =  LoginByToken test has been started"
echo "  4)operation 4 = 0"
echo "  5)operation 5 = 0"
echo "  6)operation 6 = 0"
echo "  7)operation 7 = 0"
read n
case $n in
 1) echo "1 = Poll test has been started";
        sudo git clone https://github.com/lesukk/ITG_performance ; 
        sleep 10 ;  
        sudo /mnt/jmeter/apache-jmeter-5.4.1/bin/jmeter.sh -n -t /ITG_performance/scenario.jmx  -l /mnt/scenario.jtl  ;
 
 2) echo "2 = WebSocket test has been started"; 
        sudo git clone https://github.com/lesukk/ITG_performance ; sleep 10 ; 
        sudo /mnt/jmeter/apache-jmeter-5.4.1/bin/jmeter.sh -n -t /ITG_performance/ITG_WebSockets.jmx  -l /mnt/scenario.jtl ;
        
 3) echo "3 = LoginByToken test has been started";
        sudo git clone https://github.com/lesukk/ITG_performance ;
        sleep 10;
        sudo /mnt/jmeter/apache-jmeter-5.4.1/bin/jmeter.sh -n -t /ITG_performance/login_by_token.jmx  -l /mnt/scenario.jtl;;
 
 4) echo "You chose Option 4";;
 5) echo "You chose Option 5";;
 6) echo "You chose Option 6";;
 7) echo "You chose Option 7";;
 *) echo "invalid option";;
esac
#git clone -b websockets https://github.com/justUniverse13/Performance
#sleep 15 
#/mnt/jmeter/apache-jmeter-5.3/bin/jmeter.sh -n -t /Performance/scenario.jmx  -l /mnt/scenario.jtl
