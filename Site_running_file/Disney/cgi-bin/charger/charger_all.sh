#!/bin/bash
chargerinfo_get_all () {
    echo "All Charger Info "
    echo "<br>"
    echo '<pre>'
    sudo /opt/butler_server/bin/butler_server rpcterms chargerinfo get_all 
    echo '</pre>'
}
echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Get all charger info</title>'
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

chargerinfo_get_all
     
echo '</div>'
echo '</body>'
echo '</html>'

exit 0
