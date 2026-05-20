# Arguments: {function_name: string, stop: int}
$function $(function_name) with storage parkourtrial:scratchpad iterator
$execute if score iterate_count pt_globals matches $(stop).. run return 1
execute store result storage parkourtrial:scratchpad iterator.count int 1 run scoreboard players add iterate_count pt_globals 1
return run function parkourtrial:iterate/loop with storage parkourtrial:scratchpad iterator