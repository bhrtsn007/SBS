#!/bin/bash

echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<meta name="viewport" content="width=device-width, initial-scale=1.0">'
echo '<title>PPS Related Command</title>'
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

echo '<div class="vertical-menu"></div><a href="/cgi-bin/pps/restart_pps.sh" class="active"><b>Reiniciar el PPS Organise</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/pps/active_pps.sh" class="active"><b>Obtener todas las PPS activas</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/pps/ppsinfo_id.sh" class="active"><b>Obtener Info. de PPS por ID</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/pps/ppsinfo_all.sh" class="active"><b>Obtener Info. de Todas las PPS</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/pps/pps_seat_all.sh" class="active"><b>Obtener Info. de todos los Seat</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/pps/pps_seat_id.sh" class="active"><b>Obtener Seat de PPS por ID</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/pps/all_pps_bin.sh" class="active"><b>Obtener todos los Bin de PPS por ID</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/pps/specific_pps_bin.sh" class="active"><b>Obtener Bin específico de PPS</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/pps/all_empty_bin.sh" class="active"><b>Obtener todos los Bin vacíos en el Sistema</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/pps/reset_ppsbin.sh" class="active"><b>Reiniciar Bin de PPS</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/pps/pptl_test.sh" class="active"><b>Prueba de PPTL</b></a>'
#echo '<div class="vertical-menu"></div><a href="/cgi-bin/pps/reset_all_ppsbin.sh" class="active"><b>Reset All PPS Bin On PPS</b></a>'

echo '</body>'
echo '</html>'

exit 0
