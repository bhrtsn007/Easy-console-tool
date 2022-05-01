#!/usr/bin/env escript
% Sets all pps stations in debug mode

main([String]) ->
    net_kernel:start([shell, shortnames]),
    erlang:set_cookie(node(), butler_server),
    case String of
     	inconsistent_rack ->
     		{ok,Storable_coordinate}=rpc:call(erlang:list_to_atom("butler_server@localhost"),storage_info, get_all, [key]),
    		Storable_position =[ rpc:call(erlang:list_to_atom("butler_server@localhost"),gridinfo,coordinate_to_barcode,[X])||X<- Storable_coordinate],
    		{ok,RackPos}=(rpc:call(erlang:list_to_atom("butler_server@localhost"),rackinfo,get_all,[[position]])),
    		RackPosition_All=lists:append(RackPos),
    		Rack_Id_on_Non_Storable_position = lists:subtract(lists:usort(RackPosition_All),lists:usort(Storable_position)),
    		{ok,Rack_Id_on_Non_Storable}=rpc:call(erlang:list_to_atom("butler_server@localhost"),rackinfo,search_by,[[{position,in, Rack_Id_on_Non_Storable_position}],key]),
    		io:format("Result: ~p~n",[Rack_Id_on_Non_Storable]);
     	pending ->
     		{ok,[[GroupedOrder]]}=grouped_orders:search_by([{order_id,equal,Id}],[grouped_order_id]),
     		{ok,GroupedOrderStatus}=order_node:get_column_by_id(GroupedOrder,status),
     		io:format("Orders,~p", [Id]),
     		io:format(" Status,~p", [Status]),
     		io:format(" Grouped_Order,~p", [GroupedOrder]),
     		io:format(" Grouped_Order_Status,~p~n", [GroupedOrderStatus]);
     	inventory_awaited ->
     		io:format("Orders,~p", [Id]),
     		io:format(" Status,~p~n", [Status]);
     	created ->
     		io:format("Orders,~p", [Id]),
     		io:format(" Status,~p~n", [Status])
     end


main(_) ->
	 usage().

usage() -> io:format("Format error: You must pass an argument\n").


http://192.168.32.86:30123/ui/dc1/kv/config/sr-service/logging.level.com.gor.platform/edit 
http://192.168.32.86:30123/ui/dc1/kv/config/resources-service/logging.level.com.gor.platform/edit 