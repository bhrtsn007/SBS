#!/bin/bash

echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<meta name="viewport" content="width=device-width, initial-scale=1.0">'
echo '<title>Order Related Command</title>'
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

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/all_created_order.sh" class="active"><b>All Created Order</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/all_pending_order.sh" class="active"><b>All Pending Order</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/all_unprocessable_order.sh" class="active"><b>All Unprocessable Order</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/all_abandoned_order.sh" class="active"><b>All Abandon Order</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/all_cancelled_order.sh" class="active"><b>All Cancelled Order</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/all_temp_unfullilable_order.sh" class="active"><b>All Temp_unfullilable Order</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/specific_order.sh" class="active"><b>Order Details</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/order_task_details.sh" class="active"><b>Task Details from Order</b></a>'

#echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/remove_order.sh" class="active"><b>Remove Order</b></a>'

#echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/add_order.sh" class="active"><b>Add Order</b></a>'

#echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/call_order.sh" class="active"><b>Call Order Manager</b></a>'

#echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/change_order_to_unprocessable.sh" class="active"><b>Change Order Status to Unprocessable</b></a>'

#echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/change_order_to_temp_unfullilable.sh" class="active"><b>Change Order Status to Temp_unfullilable</b></a>'

#echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/change_order_to_cancelled.sh" class="active"><b>Change Order Status to Cancelled</b></a>'

#echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/change_order_to_abandon.sh" class="active"><b>Change Order Status to Abandon</b></a>'

#echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/change_order_to_created.sh" class="active"><b>Change Order Status to Created</b></a>'

#echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/abandon_order.sh" class="active"><b>Abandon Any Order</b></a>'

echo '</body>'
echo '</html>'

exit 0
