#!/bin/bash
rollcage () {
    echo "<br>"
    echo "Rollcage information"
    sudo -H -u gor bash -c "/usr/lib/cgi-bin/MSU/rollcage_info_internal.sh $1"
    echo "<br>"
    echo '<pre>'
    while read -r line; do
          echo -e '\n' $line
    done < /tmp/bhar.txt
    echo '</pre>'  
}
echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Get rollcage info</title>'
echo '</head>'
echo '<body style="background-color:#B8B8B8">'

echo '<img src="https://scmtech.in/assets/images/grey.png" style="position:fixed; TOP:5px; LEFT:850px; WIDTH:400px; HEIGHT:80px;"></img>'
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "Put rollcage id in three digit number (Ex- [if rollcage id is 3, put 003] || [if rollcage is 23, type 023 ])"
echo "<br>"
echo "<br>"
  echo "<form method=GET action=\"${SCRIPT}\">"\
       '<table nowrap>'\
          '<tr><td>RollcageNo</TD><TD><input type="number" name="RollcageNo" size=12></td></tr>'\
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
   
    echo "Rollcage: " $XX
    echo '<br>'
     

   rollcage $XX
     
     
  fi
echo '</body>'
echo '</html>'

exit 0
