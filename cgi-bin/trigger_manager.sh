#!/bin/bash

echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<meta name="viewport" content="width=device-width, initial-scale=1.0">'
echo '<title>Trigger manager</title>'
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

echo '<div class="vertical-menu"><img src="/images/grey.png" style="position:relative; TOP:5px; LEFT:850px; WIDTH:400px; HEIGHT:80px;"></img>'

echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"

echo '<div class="vertical-menu"></div><a href="/cgi-bin/trigger/core_memory.sh" class="active"><b>Get Core Memory Information</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/trigger/interface_memory.sh" class="active"><b>Get Interface Memory Information</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/trigger/platform_memory.sh" class="active"><b>Get Platform Memory Information</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/trigger/restart_manager_dash.sh" class="active"><b>Restart Manager Dashboard</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/trigger/core_cache.sh" class="active"><b>Clear Core Cache </b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/trigger/interface_cache.sh" class="active"><b>Clear Interface Cache</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/trigger/platform_cache.sh" class="active"><b>Clear Platform Cache</b></a>'

echo '</body>'
echo '</html>'

exit 0
