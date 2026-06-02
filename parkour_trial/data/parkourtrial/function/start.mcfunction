tag @s add pt_in_trial
say look
scoreboard players set @s pt_current_time 0
say mark
scoreboard players set @s pt_checkpoints 1
say I
execute at @s run function parkourtrial:get_player_name
say made
data modify storage parkourtrial:scratchpad splits.player_name set from storage parkourtrial:scratchpad username
say a
function parkourtrial:splits/reset with storage parkourtrial:scratchpad splits
say steak
title @s actionbar {text:"Time started!", color: "yellow"}