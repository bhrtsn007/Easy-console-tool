#!/bin/bash
process_order () {
    echo "Calling Order Manager"
    echo "<br>"
    sudo /opt/butler_server/bin/butler_server rpcterms order_manager process_orders
    echo "<br>"
    echo "DONE"
}
echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Remove Order</title>'
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
process_order
echo '</div>'
echo '</body>'
echo '</html>'

exit 0