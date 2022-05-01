#!/bin/bash
chargetaskrec_get_all () {
    echo "All Charge Task in the System"
    echo "<br>"
    echo '<pre>'
    sudo /opt/butler_server/bin/butler_server rpcterms chargetaskrec get_all 
    echo '</pre>'
}
echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Get all Charge Task</title>'
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


chargetaskrec_get_all     
     
echo '</div>'
echo '</body>'
echo '</html>'

exit 0
