#!/bin/bash
order_sla () {
    echo "Order SLA: $1"
    sla=$1
    echo "<br>" 
    if [ ! -n $sla ]
    then
        echo "Please enter number greater than 82800 (Not allowed to change order_sla below 82800 second i.e. 23 hours)"
    elif [ "$sla" -lt 82800 ]
    then
        echo "Please enter number greater than 82800 (Not allowed to change order_sla below 82800 second i.e. 23 hours)"
    elif [ "$sla" -ge 82800 ]
    then
        echo "<br>"
        sla_hour=`bc <<< "scale=3; $sla/3600"`
        echo "Changing order sla to $sla_hour hours "
        echo "<br>"
        sudo /opt/butler_server/erts-9.3.3.8/bin/escript /home/gor/rpc_call.escript application set_env "['butler_server','order_sla',$sla]."
        echo "<br>"
        echo "OK Done...."
    else
        echo "Press enter correct number"
    fi
}
echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Change Order SLA</title>'
echo '</head>'
echo '<body style="background-color:#B8B8B8">'

echo '<img src="https://scmtech.in/assets/images/grey.png" style="position:fixed; TOP:5px; LEFT:850px; WIDTH:400px; HEIGHT:80px;"></img>'
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "Type the value for order sla in seconds (Value should be greater than or equal to 82800 second (i.e. 23 hours)"
echo "<br>"
  echo "<form method=GET action=\"${SCRIPT}\">"\
       '<table nowrap>'\
          '<tr><td>ORDER_SLA</TD><TD><input type="number" name="ORDER_SLA" size=12></td></tr>'\
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
	 
	 echo "order_sla: " $XX
     echo '<br>'
     

   order_sla $XX
     
     
  fi
echo '</body>'
echo '</html>'

exit 0
