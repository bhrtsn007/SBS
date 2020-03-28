#!/bin/bash
charger_error (){
    bot_ip=`sudo /opt/butler_server/bin/butler_server rpcterms butlerinfo get_by_id $1. | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}'`
    echo "Butler Ip: $bot_ip"
    echo "<br>"
    if [ ! -n "$bot_ip" ]
    then
        echo "Wrong Butler ID"
        echo "<br>"
    else
        ping -c1 -W 1 $bot_ip  >/dev/null
        if [ $? -eq 0 ]; then
            sudo /opt/butler_server/bin/butler_server rpcterms butler_functions send_debug_off $1.
            echo "OK Done...."
            echo "<br>"
        else
           echo "Butler is not ON.....turn on Butler FIRST"
           echo "<br>"
        fi
    fi
    sleep 1
    echo "Sending Init to Charger"
    echo "<br>"
    sudo /opt/butler_server/erts-9.3.3.8/bin/escript /home/gor/rpc_call.escript charger_functions remove_blacklist_chargers "[[$2]]."

}
echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Fix Charger Error</title>'
echo '</head>'
echo '<body style="background-color:#B8B8B8">'
echo '<img src="https://scmtech.in/assets/images/grey.png" style="position:fixed; TOP:5px; LEFT:850px; WIDTH:400px; HEIGHT:80px;"></img>'

echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
  echo "<form method=GET action=\"${SCRIPT}\">"\
       '<table nowrap>'\
          '<tr><td>Butler_ID</TD><TD><input type="number" name="Butler_ID" size=12></td></tr>'\
		  '<tr><td>Charger_ID</TD><TD><input type="number" name="Charger_ID" size=12></td></tr>'\
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
     XX=`echo "$QUERY_STRING" | sed -r 's/([^0-9]*([0-9]*)){1}.*/\2/'`
	   YY=`echo "$QUERY_STRING" | sed -r 's/([^0-9]*([0-9]*)){2}.*/\2/'`
	 
	   echo "Butler_ID: " $XX
     echo '<br>'
	   echo "Charger_ID: " $YY
     echo '<br>'
     charger_error $XX $YY
     
     
  fi
echo '</body>'
echo '</html>'

exit 0
