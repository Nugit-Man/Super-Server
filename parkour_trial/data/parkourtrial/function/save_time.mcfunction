# Perform final split
execute at @s run function parkourtrial:get_player_name
data modify storage parkourtrial:scratchpad splits.player_name set from storage parkourtrial:scratchpad username
function parkourtrial:splits/split with storage parkourtrial:scratchpad splits

execute store result score record_ticks pt_globals run data get storage parkourtrial:record_info record.ticks
function parkourtrial:string/format_time_difference
function parkourtrial:string/format_player_time
execute if score @s pt_current_time < record_ticks pt_globals run function parkourtrial:finish_new_record
execute if score @s pt_current_time >= record_ticks pt_globals run function parkourtrial:finish_without_record