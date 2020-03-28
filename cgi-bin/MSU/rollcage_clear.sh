#!/bin/bash
rollcage () {
    sudo /usr/lib/cgi-bin/MSU/rollcage_update.sh $1
    echo "<br>"
    echo '<pre>'
    while read -r line; do
          echo -e '\n' $line
    done < /tmp/roll.txt
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
echo "Escriba Codigo Barra Rollcage ( Example: sbs_030_01 )"
echo "<br>"
  echo "<form method=GET action=\"${SCRIPT}\">"\
       '<table nowrap>'\
	  '<tr><td>Rollcage</TD><TD><input type="text" name="Rollcage" size=12></td></tr>'\
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
     XX=`echo "$QUERY_STRING" | sed -n 's/^.*Rollcage=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
  
     echo "Codigo Barra Rollcage: " $XX
     echo '<br>'
     rollcage $XX
  fi
echo '</body>'
echo '</html>'

exit 0
