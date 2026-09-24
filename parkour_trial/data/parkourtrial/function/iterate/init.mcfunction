# Arguments: {function_name: string, start: int, stop: int}
#say Initializing...
$data modify storage parkourtrial:scratchpad iterator set value {function_name:"$(function_name)", stop:$(stop), count: $(start)}
$scoreboard players set iterate_count pt_globals $(start)
function parkourtrial:iterate/loop with storage parkourtrial:scratchpad iterator
#say Done!