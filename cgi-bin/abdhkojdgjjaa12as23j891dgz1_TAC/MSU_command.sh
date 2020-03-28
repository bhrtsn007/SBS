#!/bin/bash

echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<meta name="viewport" content="width=device-width, initial-scale=1.0">'
echo '<title>MSU Related Command</title>'
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

echo '<div class="vertical-menu"></div><a href="/cgi-bin/MSU/rackinfo.sh" class="active"><b>Obtener información del Rack</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/MSU/put_block.sh" class="active"><b>Bloquear put de MSU</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/MSU/put_unblock.sh" class="active"><b>Desbloquear put de MSU</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/MSU/check_rack_CG.sh" class="active"><b>Obtener el Centro de Gravedad del Rack</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/MSU/update_rack.sh" class="active"><b>Actualizar posición del Rack</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/MSU/store_position.sh" class="active"><b>Obtener posición de Storing asignada al Rack</b></a>'

echo  '<div class="vertical-menu"></div><a href="/cgi-bin/MSU/add_rack.sh" class="active"><b>Crear un nuevo Rack</b></a>'

echo '</body>'
echo '</html>'

exit 0

