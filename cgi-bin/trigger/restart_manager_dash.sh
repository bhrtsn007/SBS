#!/bin/bash
restart_manager_dashboard () {
        echo "<br>" 
        ping -c1 -W 1 $1   >/dev/null
        if [ $? -eq 0 ]; then
           echo '<pre>'
	   sshpass -p '9)MntJFsj(H7' ssh -o StrictHostKeyChecking=no -t $2@$1 "echo '9)MntJFsj(H7'| sudo -S supervisorctl restart manager_dashboard"
           echo '</pre>'
           echo "<br>"
        else
           echo "Server is not reachable"
        fi  
}
echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Restart Manager Dashboard</title>'
echo '</head>'
echo '<body style="background-color:#B8B8B8">'

echo '<img src="/images/grey.png" style="position:fixed; TOP:5px; LEFT:850px; WIDTH:400px; HEIGHT:80px;"></img>'
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
  echo "<form method=GET action=\"${SCRIPT}\">"\
       '<table nowrap>'\
          '<tr><td>Interface_IP</TD><TD><input type="text" name="Interface_IP" size=12></td></tr>'\
          '<tr><td>User</TD><TD><input type="text" name="User" size=12></td></tr>'\
		  '</tr></table>'

  echo '<br><input type="submit" value="SUBMIT">'\
       '<input type="reset" value="Reset"></form>'

  # Make sure we have been invoked properly.

  if [ "$REQUEST_METHOD" != "GET" ]; then
        echo "<hr>Script Error:"\
             "<br>Usage error, cannot complete request, REQUEST_METHOD!=GET."\
             "<br>Check your FORM declaration and be sure to use METHOD=\"GET\".<hr>"
        exit 1
  fi

  # If no search arguments, exit gracefully now.
  echo "$QUERY_STRING<br>"
  echo "<br>"
  if [ -z "$QUERY_STRING" ]; then
        exit 0
  else
   # No looping this time, just extract the data you are looking for with sed:
     
     AA=`echo "$QUERY_STRING" | sed -n 's/^.*Interface_IP=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
     BB=`echo "$QUERY_STRING" | sed -n 's/^.*User=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
	 
	 echo "Interface_IP: " $AA
   echo "User: $BB"
     echo '<br>'
     

   restart_manager_dashboard $AA $BB
     
     
  fi
echo '</body>'
echo '</html>'

exit 0
