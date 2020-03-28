#!/bin/bash

echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<meta name="viewport" content="width=device-width, initial-scale=1.0">'
echo '<title>Charger Related Command</title>'
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

echo '<div class="vertical-menu"></div><a href="/cgi-bin/charger/get_charger.sh" class="active"><b>Obtener información del Cargador</b></a>'

#echo '<div class="vertical-menu"></div><a href="/cgi-bin/charger/reset_chargers.sh" class="active"><b>Reiniciar todos los Cargadores</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/charger/change_mode.sh" class="active"><b>Cambiar modo del Cargador</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/charger/charger_all.sh" class="active"><b>Obtener información de todos los Cargadores</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/charger/chargertaskrec.sh" class="active"><b>Obtener todas las Tareas de Carga</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/charger/fix_charger.sh" class="active"><b>Solucionar problema en Cargador con Butler</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/charger/send_charger_init.sh" class="active"><b>Enviar Init al Cargador</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/charger/check_commit_id.sh" class="active"><b>Get COMMIT ID for all chargers</b></a>'

echo '</body>'
echo '</html>'

exit 0
