#!/bin/bash
butler_debug_off_all () {
    echo "Sending  Init for all Butler "
    echo "<br>"
    echo '<pre>'
    sudo /opt/butler_server/bin/butler_server rpcterms butler_functions send_debug_off_all_butlers 
    echo '</pre>'
}
echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Sending Init to all Butler</title>'
echo '<link rel="stylesheet" href="/rack.css" type="text/css">'
echo '</head>'
echo '<body>'
echo '<div class=container>'
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"
echo "<br>"

butler_debug_off_all
     
echo '</div>'
echo '</body>'
echo '</html>'

exit 0
