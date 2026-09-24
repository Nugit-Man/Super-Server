# Arguments: {player_name: string}
execute store result storage parkourtrial:scratchpad current_time int 1 run scoreboard players get @s pt_current_time
$data modify storage parkourtrial:current_splits $(player_name) append from storage parkourtrial:scratchpad current_time