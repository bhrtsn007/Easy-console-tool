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

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/all_created_order.sh" class="active"><b>Obtener todas las órdenes creadas</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/all_pending_order.sh" class="active"><b>Obtener todas las órdenes pendientes</b></a>'

#echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/order_status.sh" class="active"><b>Obtener status de una orden</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/all_unprocessable_order.sh" class="active"><b>Obtener todas las órdenes no procesables</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/all_abandoned_order.sh" class="active"><b>Obtener todas las órdenes abandonadas</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/all_cancelled_order.sh" class="active"><b>Obtener todas las órdenes canceladas</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/all_temp_unfullilable_order.sh" class="active"><b>Obtener todas las órdenes no llenables</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/specific_order.sh" class="active"><b>Obtener detalles de una orden</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/order_task_details.sh" class="active"><b>Obtener detalles de la tarea asignada a una orden</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/remove_order.sh" class="active"><b>Borrar Orden</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/add_order.sh" class="active"><b>Agregar Orden</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/call_order.sh" class="active"><b>Llamar al Order Manager</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/change_order_to_unprocessable.sh" class="active"><b>Cambiar el estado de la Orden a No Procesable</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/change_order_to_temp_unfullilable.sh" class="active"><b>Cambiar el estado de la Orden a No Llenable</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/change_order_to_cancelled.sh" class="active"><b>Cambiar el estado de la Orden a Cancelada</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/change_order_to_abandon.sh" class="active"><b>Cambiar el estado de la Orden a Abandonada</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/change_order_to_created.sh" class="active"><b>Cambiar el estado de la Orden a Creada</b></a>'

echo '<div class="vertical-menu"></div><a href="/cgi-bin/order/abandon_order.sh" class="active"><b>Abandonar una orden</b></a>'

echo '</body>'
echo '</html>'

exit 0
