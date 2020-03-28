#!/bin/bash

echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<meta name="viewport" content="width=device-width, initial-scale=1.0">'
echo '<title>LOGIN</title>'
echo '<style>'

echo 'table {'\
     'font-family: arial, sans-serif;'\
     'text-align: centre;'\
     'width: 100%;'\
     '}'

echo 'td, th {'\
     'text-align: centre;'\
     'padding: 8px;'\
     '}'

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
echo '<h2 style="text-align:center">Easy Console</h2>'
echo "<br>"
echo "<form method=GET action=\"${SCRIPT}\">"\
     '<table>'\
    '<tr><td style="text-align:center">USERNAME</td></tr>'\
          '<tr><td style="text-align:center"><input type="text" name="username" size=12></td></tr>'\
    '<tr><td style="text-align:center">PASSWORD</td></tr>'\
          '<tr><td style="text-align:center"><input type="password" name="pwd" size=12></td></tr>'\
          '<tr><td style="text-align:center"><input type="submit" value="SUBMIT"></td></tr>'\
          '<tr><td style="text-align:center"><input type="reset" value="Reset"></td></tr>'\
        '</table>'
echo '</form>'

  # Make sure we have been invoked properly.

if [ "$REQUEST_METHOD" != "GET" ]; then
      echo "<hr>Script Error:"\
          "<br>Usage error, cannot complete request, REQUEST_METHOD!=GET."\
          "<br>Check your FORM declaration and be sure to use METHOD=\"GET\".<hr>"
      exit 1
fi

if [ -z "$QUERY_STRING" ]; then
      exit 0
else
   username=`echo "$QUERY_STRING" | sed -n 's/^.*username=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
   password=`echo "$QUERY_STRING" | sed -n 's/^.*pwd=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"`
fi
if [ "$username" = "support" ] && [ "$password" = "apj0702" ]; then
  echo '<div class="vertical-menu"></div><a href="ajsdhada1563axa184dsanj_support/support_easy_console.sh" class="active"><b>Welcome To Easy Console</b></a>'
elif [ "$username" = "tac" ] && [ "$password" = "Grey%40123" ]; then
  echo '<div class="vertical-menu"></div><a href="abdhkojdgjjaa12as23j891dgz1_TAC/tac_easy_console.sh" class="active"><b>Welcome To Easy Console</b></a>'
else
  echo '<div class="vertical-menu"><h3 style="text-align:center">Wrong Username and Password</h3>'
fi

echo '</body>'
echo '</html>'

exit 0

