#!/bin/bash
get_order_sla () {
    echo "<br>"
    sla=`sudo /opt/butler_server/erts-9.3.3.8/bin/escript /home/gor/rpc_call.escript application get_env "['butler_server','order_sla']." | sed -r 's/([^0-9]*([0-9]*)){1}.*/\2/'`
    echo "Current value of order sla is $sla (in seconds)"
    echo "<br>"
    sla_hour=`bc <<< "scale=3; $sla/3600"`
    echo "Current value of order sla is $sla_hour (in hours)"
    echo "<br>"
}
echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Get Order sla</title>'
echo '</head>'
echo '<body style="background-color:#B8B8B8">'

echo '<img src="https://scmtech.in/assets/images/grey.png" style="position:fixed; TOP:5px; LEFT:850px; WIDTH:400px; HEIGHT:80px;"></img>'
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
get_order_sla
echo '</body>'
echo '</html>'

exit 0