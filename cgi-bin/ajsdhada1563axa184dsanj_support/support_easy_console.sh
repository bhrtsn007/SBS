#!/bin/bash

echo "Content-type: text/html"
#echo "Content-type: image/gif"

echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Easy Console</title>'
#echo '</head>'
#echo '<body>'
echo '<style>'

echo  'a:link, a:visited {'\
      '-webkit-appearance: button;'\
      '-moz-appearance: button;'\
      'appearance: button;'\
      'background-color: #FF6633;'\
      'color: white;'\
      'text-align: center;'\
      'text-decoration: none;'\
      'display: inline-block;'\
      '}'

echo  'a:hover, a:active {'\
      '  background-color: grey;'\
      '}'

echo '</style>'
echo '</head>'
echo '<body style="background-color:#B8B8B8">'

#echo '<h1 style="color:white">TOOL</h1>'
echo '<img src="https://scmtech.in/assets/images/grey.png" style="position:fixed; TOP:5px; LEFT:850px; WIDTH:400px; HEIGHT:80px;"></img>'
#echo '<p style="color:white">Here you can do whatever you want:</p>'

echo '<a href="butler.sh" target="_blank" title="Butler Related Command"><img src="http://greyorange.miscapp.in/html/img/products/product_butler@2x.png" style="position:fixed; TOP:150px; LEFT:95px; WIDTH:190px; HEIGHT:120px;"></img></a>'
echo '<div  style="position: fixed; top:270px; left:90px; width:200px; height:25px;"><a href="butler.sh"  target="_blank">Butler Related Command</a>'

echo '<div style="position: fixed; top:560px; left:90px; width:200px;"><a href="MSU_command.sh"  target="_blank " style="padding-left: 2px;padding-right: 22px;">MSU Related Command</a>'
echo '<a href="MSU_command.sh" target="_blank" title="MSU Related Command"><img src="https://4.imimg.com/data4/II/II/GLADMIN-/wp-content-themes-gor-asset-img-butler-comp2-250x250.png" style="position:fixed; TOP:328px; LEFT:103px; WIDTH:170px; HEIGHT:220px;"></img></a>'

echo '<div style="position: fixed; top:270px; left:510px; width:200px; height:25px"><a href="Task_manager.sh"  target="_blank">Task Manager Related Command </a>'
echo '<a href="Task_manager.sh" target="_blank" title="Task Manager Related Command"><img src="http://www.onlinecmag.com/wp-content/uploads/2014/12/fully-improving-the-windows-task-manager.png" style="position:fixed; TOP:125px; LEFT:525px; WIDTH:160px; HEIGHT:140px;"></img></a>'

echo '<div style="position: fixed; top:560px; left:950px;"><a href="PPS.sh"  target="_blank" style="padding-top: 10px;padding-bottom: 10px;padding-left: 13px;padding-right: 12px;">PPS Related Command</a>'
echo '<a href="PPS.sh" target="_blank" title="PPS Related Command"><img src="https://www.greyorange.com/storage/images/XkQagq40jOhLSY6tlYIQgx9mZGDTBA7wboXtAvCZ.png" style="position:fixed; TOP:325px; LEFT:910px; WIDTH:290px; HEIGHT:220px;"></img></a>'

echo '<div style="position: fixed; top:270px; left:950px;"><a href="order.sh"  target="_blank" style="padding-top: 10px;padding-bottom: 10px;padding-left: 5px;padding-right: 5px;">Order Related Command</a>'
echo '<a href="order.sh" target="_blank" title="Order Related Related Command"><img src="http://cdn.onlinewebfonts.com/svg/img_146822.png" style="position:fixed; TOP:150px; LEFT:962px; WIDTH:160px; HEIGHT:115px;"></img></a>'

echo '<div style="position: fixed; top:560px; left:510px; width:200px"><a href="charger.sh"  target="_blank">Charger Related Command</a>'
echo '<a href="charger.sh" target="_blank" title="Charger Related Command"><img src="https://www.greyorange.com/storage/images/EZ1xexzxWYx0gfKkHx9xnBzXPXo7kV9QvjKsSoWN.png" style="position:fixed; TOP:325px; LEFT:460px; WIDTH:290px; HEIGHT:220px;"></img></a>'
echo '</body>'
echo '</html>'

exit 0

