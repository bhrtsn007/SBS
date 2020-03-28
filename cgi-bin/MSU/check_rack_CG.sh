#!/bin/bash
MSU_CG () {
    echo "Rack Cente of Gravity Info"
    echo "<br>"
    echo '<pre>'
    sudo /opt/butler_server/erts-9.3.3.8/bin/escript /home/gor/rpc_call.escript butler_test_functions calculate_center_of_mass_deviation_of_msu "[<<\"$1\">>]."
    sudo /opt/butler_server/erts-9.3.3.8/bin/escript /home/gor/rpc_call.escript butler_test_functions is_center_of_mass_of_msu_deviated "[<<\"$1\">>]."
    echo '</pre>'
}
echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Get Rack CG</title>'
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
          '<tr><td>Rack_ID</TD><TD><input type="number" name="Rack_ID" size=12></td></tr>'\
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
  
     echo "Rack_ID: " $XX
     echo '<br>'
     MSU_CG $XX 
     
  fi
echo '</body>'
echo '</html>'

exit 0


