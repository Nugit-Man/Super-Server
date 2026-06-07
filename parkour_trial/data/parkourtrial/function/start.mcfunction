tag @s add pt_in_trial
scoreboard players set @s pt_current_time 0
scoreboard players set @s pt_checkpoints 1
execute at @s run function parkourtrial:get_player_name
data modify storage parkourtrial:scratchpad splits.player_name set from storage parkourtrial:scratchpad username
function parkourtrial:splits/reset with storage parkourtrial:scratchpad splits
title @s actionbar {text:"Time started!", color: "yellow"}