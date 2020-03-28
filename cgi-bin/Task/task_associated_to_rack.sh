#!/bin/bash
task_associated_to_rack () {
    if [ "$2" -eq "0" ]; then
        echo "Tarea de pick/put asociada a este rack"
        echo "<br>"
        echo '<pre>'
        sudo /opt/butler_server/erts-9.3.3.8/bin/escript /home/gor/rpc_call.escript ppstaskrec search_by "[[{'rack','equal',{'rackrec',<<\"$1\">>,0}},{'status', 'notequal', 'complete'}], 'record']."
        echo '</pre>'
        echo "Tarea de auditoría asociada a este rack"
        echo "<br>"
        echo '<pre>'
        sudo /opt/butler_server/erts-9.3.3.8/bin/escript /home/gor/rpc_call.escript audittaskrec search_by "[[{'rack','equal',{'rackrec',<<\"$1\">>,0}},{'status', 'notequal', 'complete'}], 'record']."
        echo '</pre>'
    elif [ "$2" -eq "1" ]; then
        echo "Tarea de pick/put asociada a este rack"
        echo "<br>"
        echo '<pre>'
        sudo /opt/butler_server/erts-9.3.3.8/bin/escript /home/gor/rpc_call.escript ppstaskrec search_by "[[{'rack','equal',{'rackrec',<<\"$1\">>,1}},{'status', 'notequal', 'complete'}], 'record']."
        echo '</pre>'
        echo "Tarea de auditoría asociada a este rack"
        echo "<br>"
        echo '<pre>'
        sudo /opt/butler_server/erts-9.3.3.8/bin/escript /home/gor/rpc_call.escript audittaskrec search_by "[[{'rack','equal',{'rackrec',<<\"$1\">>,1}},{'status', 'notequal', 'complete'}], 'record']."
        echo '</pre>'
    else
        echo "Cara errónea ingresada"
    fi              
}
echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Tareas asignadas a un rack</title>'
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
          '<tr><td>RACK_ID</TD><TD><input type="number" name="RACK_ID" size=12></td></tr>'\
		  '<tr><td>Face</TD><TD><input type="number" name="Face" size=12></td></tr>'\
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
	
     echo "RACK_ID: " $XX
     echo '<br>'
	   echo "Face: " $YY
     echo '<br>'
     task_associated_to_rack $XX $YY  
  fi
echo '</body>'
echo '</html>'

exit 0
