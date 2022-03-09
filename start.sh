#!/bin/bash
sudo rm  /home/start.sh
sudo cp /ITG_performance/start.sh /home/
sudo chmod 744  /home/start.sh
cd /
rm -rf /ITG_performance
wget https://bitbucket.org/pjtr/jmeter-websocket-samplers/downloads/JMeterWebSocketSamplers-1.2.8.jar
mv JMeterWebSocketSamplers-1.2.8.jar /mnt/jmeter/apache-jmeter-5.4.3/lib

echo " input  git clone ? >>>   1=  Polls    2=  Websockets   3=  LoginByToken"
echo "  1)operation 1 =  Polls"
echo "  2)operation 2 =  WebSockets"
echo "  3)operation 3 =  PollAnswer"
echo "  4)operation 4 =  Trivia"
echo "  5)operation 5 =  Rating"
echo "  6)operation 6 =  GetInfo"
echo "  7)operation 7 =  DifferentPolls"
echo "  8)operation 8 =  JoinRoom"
read n
case $n in
 1) echo "1 = Poll test has been started";
        sudo git clone https://github.com/lesukk/ITG_performance;
        sleep 10 ;
        sudo /mnt/jmeter/apache-jmeter-5.4.3/bin/jmeter.sh -n -t /ITG_performance/Poll_answer.jmx  -l /mnt/scenario.jtl ;;
 
 2) echo "2 = WebSocket test has been started";
        sudo git clone https://github.com/lesukk/ITG_performance;
        sleep 10 ;
        sudo /mnt/jmeter/apache-jmeter-5.4.1/bin/jmeter.sh -n -t /ITG_performance/ITG_WebSockets.jmx  -l /mnt/scenario.jtl ;;
        
 3) echo "3 = PollAnswer test has been started";
        sudo git clone https://github.com/lesukk/ITG_performance;
        sleep 10;
        sudo /mnt/jmeter/apache-jmeter-5.4.3/bin/jmeter.sh -n -t /ITG_performance/Poll_answer.jmx  -l /mnt/scenario.jtl ;;
 
 4) echo "4 = Trivia test has been started";
        sudo git clone https://github.com/lesukk/ITG_performance;
        sleep 10 ;
        sudo /mnt/jmeter/apache-jmeter-5.4.1/bin/jmeter.sh -n -t /ITG_performance/Trivia_answer.jmx  -l /mnt/scenario.jtl ;;
        
 5) echo "5 = Rating test has been started";
        sudo git clone https://github.com/lesukk/ITG_performance;
        sleep 10 ;
        sudo /mnt/jmeter/apache-jmeter-5.4.1/bin/jmeter.sh -n -t /ITG_performance/Rating_answer.jmx  -l /mnt/scenario.jtl ;;
        
 6) echo "6 = GetInfo test has been started";
        sudo git clone https://github.com/lesukk/ITG_performance;
        sleep 10 ;
        sudo /mnt/jmeter/apache-jmeter-5.4.1/bin/jmeter.sh -n -t /ITG_performance/GetInfo.jmx  -l /mnt/scenario.jtl ;;
        
 7) echo "7 = Different polls test has been started";
        sudo git clone https://github.com/lesukk/ITG_performance;
        sleep 10 ;
        sudo /mnt/jmeter/apache-jmeter-5.4.1/bin/jmeter.sh -n -t /ITG_performance/Different_polls.jmx  -l /mnt/scenario.jtl ;;
        
 8) echo "8 = Join Room test has been started";
        sudo git clone https://github.com/lesukk/ITG_performance;
        sleep 10 ;
        sudo /mnt/jmeter/apache-jmeter-5.4.1/bin/jmeter.sh -n -t /ITG_performance/JoinRoom.jmx  -l /mnt/scenario.jtl ;;
        
 *) echo "invalid option";
esac
#git clone -b websockets https://github.com/justUniverse13/Performance
#sleep 15 
#/mnt/jmeter/apache-jmeter-5.3/bin/jmeter.sh -n -t /Performance/scenario.jmx  -l /mnt/scenario.jtl
