#!/bin/bash
sudo -u postgres psql -U postgres -d wms_process -c "select * from execution where process_definition_id='28' and status = 'WAITING' and current_node_id = '1158'"
