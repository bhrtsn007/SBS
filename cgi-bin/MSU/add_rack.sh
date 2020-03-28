#!/bin/bash
rack_spotter () {
    echo "Adding rack by rack spotter for Type $2 with butler $1 and Coordinates {$3,$4}"
    echo '<pre>'
    sudo /opt/butler_server/erts-9.3.3.8/bin/escript /home/gor/rpc_call.escript application set_env "['butler_server',\"default_racktype_id\" , \""$2"\"]."
    #rack_spotter:add_butlers([5607]).
    sudo /opt/butler_server/erts-9.3.3.8/bin/escript /home/gor/rpc_call.escript rack_spotter add_butlers "[[$1]]."
    #rack_spotter:set_remaining_coordinates([{10,53}]).
    sudo /opt/butler_server/erts-9.3.3.8/bin/escript /home/gor/rpc_call.escript rack_spotter set_remaining_coordinates "[[{$3, $4}]]."
    echo '</pre>'
}
echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Update Rack Location</title>'
echo '</head>'
echo '<body style="background-color:#B8B8B8">'

echo '<img src="https://scmtech.in/assets/images/grey.png" style="position:fixed; TOP:5px; LEFT:850px; WIDTH:400px; HEIGHT:80px;"></img>'
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "Type Coordinates on which you want to check( For ex:- If barcode is 032.054 then X-> 54 and Y-> 32"
echo "<br>"
  echo "<form method=GET action=\"${SCRIPT}\">"\
       '<table nowrap>'\
          '<tr><td>butler_ID</TD><TD><input type="number" name="butler_ID" size=12></td></tr>'\
          '<tr><td>X_Coordinate</TD><TD><input type="number" name="X_Coordinate" size=12></td></tr>'\
          '<tr><td>Y_Coordinate</TD><TD><input type="number" name="Y_Coordinate" size=12></td></tr>'\
          '<tr><td>msu_type</TD><TD><input type="text" name="msu_type" size=12></td></tr>'\
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
     ZZ=`echo "$QUERY_STRING" | sed -r 's/([^0-9]*([0-9]*)){2}.*/\2/'`
     AA=`echo "$QUERY_STRING" | sed -r 's/([^0-9]*([0-9]*)){3}.*/\2/'`
     YY=`echo "$QUERY_STRING" | sed -n 's/^.*msu_type=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
     
  
     echo "Butler_ID: " $XX
     echo '<br>'
     echo "msu_type: " $YY
     echo '<br>'
     echo "X_Coordinate: " $ZZ
     echo '<br>'
     echo "Y_Coordinate: " $AA
     echo '<br>'
     rack_spotter $XX $YY $ZZ $AA
  fi
echo '</body>'
echo '</html>'

exit 0
