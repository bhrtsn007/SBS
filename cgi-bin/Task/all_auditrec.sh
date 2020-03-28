#!/bin/bash
all_auditrec () {
    echo "All Audit rec not completed in the system"
    echo "<br>"
    if [ "$1" -eq "1" ]; then
      echo '<pre>'
       sudo /opt/butler_server/erts-9.3.3.8/bin/escript /home/gor/rpc_call.escript auditrec search_by "[[{'status', 'notequal', 'audit_completed'},{'status', 'notequal', 'audit_resolved'},{'status', 'notequal', 'audit_cancelled'},{'status', 'notequal', 'audit_aborted'},{'status', 'notequal', 'audit_reaudited'},{'status', 'notequal', 'audit_complete'}], ['audit_id','status','updated_time']]."
       echo '</pre>'
    elif [ "$1" -eq "2" ]; then
      echo '<pre>'
        sudo /opt/butler_server/erts-9.3.3.8/bin/escript /home/gor/rpc_call.escript auditrec search_by "[[{'status', 'notequal', 'audit_completed'},{'status', 'notequal', 'audit_resolved'},{'status', 'notequal', 'audit_cancelled'},{'status', 'notequal', 'audit_aborted'},{'status', 'notequal', 'audit_reaudited'},{'status', 'notequal', 'audit_complete'}], 'record']."
        echo '</pre>'
    else
        echo "Wrong key pressed"
    fi    
}
echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Tareas de auditoría en estado Rack Picked</title>'
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
		  '<tr><td>Type 1 for key and 2 for record</TD><TD><input type="number" name="Type 1 for key and 2 for record" size=12></td></tr>'\
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
     XX=`echo "$QUERY_STRING" | sed -n 's/^.*record=\([^ ]*\).*$/\1/p'`
	
	   echo "Type 1 for key and 2 for record: " $XX
     echo '<br>'
     all_auditrec $XX
  fi
echo '</body>'
echo '</html>'

exit 0
