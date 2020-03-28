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
echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/pick_task_pending_pps.sh" class="active" target="_blank"><b>All pending pick task on PPS</b></a>' 

echo '<div style="position: relative;"><a href="/cgi-bin/Task/pps_task_pending_system.sh" class="active" target="_blank"><b> All pending pick task in the system</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/task_associated_to_rack.sh" class="active" target="_blank"><b>All task on one MSU</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/butler_associated_to_task.sh" class="active" target="_blank"><b>Butler on which task is assigned</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/ppstaskrec_id.sh" class="active" target="_blank"><b>Specific PPS taskrec</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/audittaskrec_id.sh" class="active" target="_blank"><b>Specific audit taskrec</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/move_task_pending_system.sh" class="active" target="_blank"><b>All move task pending in the system</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/move_task_pending_butler.sh" class="active" target="_blank"><b>All move task pending on one butler</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/movetaskrec_id.sh" class="active" target="_blank"><b>Specific move taskrec</b></a>' 

#echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/change_status_to_created.sh" class="active" target="_blank"><b>Change Task status to created</b></a>' 

#echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/change_status_to_complete.sh"class="active" target="_blank"><b>Change Task status to complete</b></a>' 

#echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/clear_task_butler_ready.sh" class="active" target="_blank"><b>Clear Task of Butler and make status ready</b></a>' 

#echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/clear_task_butler_dead.sh" class="active" target="_blank"><b>Clear Task of Butler and make status dead</b></a>' 

#echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/clear_subtask_butler.sh"class="active" target="_blank"><b>Clear Sub Task of Butler</b></a>' 

# echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/butlerstatus_error.sh"  class="active" target="_blank"><b>Change Butler status to Error</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/ppstask_started.sh" class="active" target="_blank"><b> All PPS Task for status started in system</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/ppstask_rackpicked.sh" class="active" target="_blank"><b>All PPS Task for status rack_picked in system</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/ppstask_started_id.sh"class="active" target="_blank"><b>Specific PPS Task on PPS for status started</b> </a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/ppstask_rackpicked_id.sh" class="active" target="_blank"><b>Specific PPS Task on PPS for status rack_picked</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/audittaskstarted_id.sh" class="active" target="_blank"><b>Specific audit Task on PPS for status started</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/audittask_rackpicked_id.sh" class="active" target="_blank"><b>Specific audit Task on PPS for status rack_picked</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/audittask_started.sh"class="active" target="_blank"><b>All audit Task for status started in system</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/audittask_rackpicked.sh" class="active" target="_blank"><b>All audit Task for status rack_picked in system</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/auditrec_id.sh" class="active" target="_blank"><b>Specific audit rec</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/audittaskpending_system.sh" class="active" target="_blank"><b>All audit task pending in the system</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/audittask_pps.sh" class="active" target="_blank"><b>All audit task associated to PPS</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/auditlinerec_pending.sh" class="active" target="_blank"><b>Get all pending auditline rec</b></a>' 

echo '<div class="vertical-menu"></div><a href="/cgi-bin/Task/all_auditrec.sh" class="active" target="_blank"><b>Get all auditrec not complete</b></a>' 


echo '</body>' 

echo '</html>'
exit 0
