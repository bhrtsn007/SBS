#!/bin/bash

core_memory () {
        echo "<br>" 
        ping -c1 -W 1 10.115.43.20   >/dev/null
        if [ $? -eq 0 ]; then
           echo '<pre>'
	   sshpass -p '9)MntJFsj(H7' ssh -o StrictHostKeyChecking=no -t gor@10.115.43.20 "free -h"
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
echo '<title>Core memory Info</title>'
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
          '<tr><td>core_ip</TD><TD><input type="text" name="core_ip" size=12></td></tr>'\
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
 # echo "$QUERY_STRING<br>"
 # echo "<br>"
 # if [ -z "$QUERY_STRING" ]; then
  #      exit 0
#  else
   # No looping this time, just extract the data you are looking for with sed:
     
   #  AA=`echo "$QUERY_STRING" | sed -n 's/^.*core_ip=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
   #  BB=`echo "$QUERY_STRING" | sed -n 's/^.*User=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
	 
#	 echo "core_ip: " $AA
  # echo "User: $BB"
     echo '<br>'
     

   core_memory
     
     
  fi
echo '</body>'
echo '</html>'

exit 0
