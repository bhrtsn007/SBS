#!/bin/bash

echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<meta name="viewport" content="width=device-width, initial-scale=1.0">'
echo '<title>Butler Related Command</title>'
echo '<style>'
	  
echo '.vertical-menu a {'\
  'background-color: #FF9933;'\
  'border: 1px orange; '\
  'color: white; '\
  'padding: 10px 24px;'\
  'cursor: pointer;'\
  'width: 100%;'\
  'text-align: center;'\
  'overflow:hidden;'\
  'position:relative;'\
  'float:left;'\
  'display: block;'\
  '}'
  

echo  'a:hover, a:active {'\
      '  background-color: grey;'\
      '}'
	  
echo '</style>'
echo '</head>'
echo '<body style="background-color:#B8B8B8">'

echo '<div class="vertical-menu"><img src="https://scmtech.in/assets/images/grey.png" style="position:relative; TOP:5px; LEFT:850px; WIDTH:400px; HEIGHT:80px;"></img>'

echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo '<div class="vertical-menu"></div><a href="/cgi-bin/butler/get_butler.sh" class="active"><b>Get Butler info</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/butler/Pause_butler.sh" class="active"><b>Pause a Butler</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/butler/UnPause_butler.sh" class="active"><b>UnPause a Butler</b></a>'

echo  '<div class="vertical-menu"></div><a href="/cgi-bin/butler/Purge_butler.sh" class="active"><b>Purge a Butler</b></a>'

echo  '<div class="vertical-menu"></div><a href="/cgi-bin/butler/loop_test_with_count.sh" class="active"><b>Loop test with count</b></a>'

echo  '<div class="vertical-menu"></div><a href="/cgi-bin/butler/loop_test_without_count.sh" class="active"><b>Unlimited Loop Test</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/butler/stop_loop.sh" class="active"><b>Stop a loop test</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/butler/remrestart.sh" class="active"><b>Remrestart a Butler</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/butler/get_camera.sh" class="active"><b>Get Camera Information</b></a>'

echo '</body>'
echo '</html>'

exit 0

