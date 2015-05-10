#! /bin/sh
startcmd='/opt/wso2emm-1.1.0/bin/wso2server.sh start > /dev/null &'
restartcmd='/opt/wso2emm-1.1.0/bin/wso2server.sh restart > /dev/null &'
stopcmd='/opt/wso2emm-1.1.0/bin/wso2server.sh stop > /dev/null &'
 
case "$1" in
start)
   echo "Starting WSO2 Enterprsie Mobility Manager ..."
   su -c "${startcmd}" user1
;;
restart)
   echo "Re-starting WSO2 Enterprsie Mobility Manager ..."
   su -c "${restartcmd}" user1
;;
stop)
   echo "Stopping WSO2 Enterprsie Mobility Manager ..."
   su -c "${stopcmd}" user1
;;
*)
   echo "Usage: $0 {start|stop|restart}"
exit 1
esac
