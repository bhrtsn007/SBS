#!/bin/bash
commit_id () {
    echo "Get commit id"
    sudo /usr/lib/cgi-bin/charger/bhar.sh
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
echo '<title>Get COMMIT ID for all chargers</title>'
echo '</head>'
echo '<body style="background-color:#B8B8B8">'

echo '<img src="https://scmtech.in/assets/images/grey.png" style="position:fixed; TOP:5px; LEFT:850px; WIDTH:400px; HEIGHT:80px;"></img>'
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"

commit_id
     
echo '</body>'
echo '</html>'

exit 0