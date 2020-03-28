#!/bin/bash
echo "Content-type: text/html" 
echo "" 
echo '<html>' 
echo '<head>' 
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">' 
echo '<title>Task Related Command</title>' 
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

echo 'a:hover, a:active {'\
      ' background-color: grey;'\
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
echo "<br>"
echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/pick_task_pending_pps.sh" class="active" target="_blank"><b>Obtener todas las tareas pendientes de una PPS</b></a>' 

echo '<div style="position: relative;"><a href="/cgi-bin/Task/pps_task_pending_system.sh" class="active" target="_blank"><b>Obtener todas las tareas pendientes en el sistema</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/task_associated_to_rack.sh" class="active" target="_blank"><b>Obtener todas las tareas asignadas a un Rack</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/butler_associated_to_task.sh" class="active" target="_blank"><b>Obtener Butler asignado a una Tarea</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/all_auditrec.sh" class="active" target="_blank"><b>Obtener toda auditoría no completa</b></a>'  

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/audittaskrec_id.sh" class="active" target="_blank"><b>Tarea específica de auditoría</b></a>'   

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/change_status_to_created.sh" class="active" target="_blank"><b>Cambiar Estado de Tarea a Created</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/change_status_to_rack_picked.sh" class="active" target="_blank"><b>Cambiar Estado de Tarea a Rack_Picked</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/change_status_to_storing.sh"class="active" target="_blank"><b>Cambiar Estado de Tarea a storing</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/change_status_to_complete.sh"class="active" target="_blank"><b>Cambiar Estado de Tarea a Complete</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/clear_task_butler_ready.sh" class="active" target="_blank"><b>Borrar Tarea de Butler y dejar status Ready</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/clear_task_butler_dead.sh" class="active" target="_blank"><b>Borrar Tarea de Butler y dejar status Dead</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/clear_subtask_butler.sh"class="active" target="_blank"><b>Borrar Subtarea de un Butler</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/butlerstatus_error.sh"  class="active" target="_blank"><b>Cambiar estado de Butler a Error</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/ppstask_started.sh" class="active" target="_blank"><b>Obtener toda tarea de PPS en Started</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/ppstask_rackpicked.sh" class="active" target="_blank"><b>Obtener toda tarea de PPS en Rack Picked</b></a>'  

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/audittask_started.sh"class="active" target="_blank"><b>Obtener toda tarea de auditoría en Started</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/audittask_rackpicked.sh" class="active" target="_blank"><b>Obtener toda tarea de auditoría en Rack Picked</b></a>'   

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/audittask_pps.sh" class="active" target="_blank"><b>Obtener toda tarea de auditoría asociada a una PPS</b></a>' 

echo '</body>' 

echo '</html>'
exit 0
