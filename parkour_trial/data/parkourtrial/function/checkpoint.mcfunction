# Arguments: {number: [integer]}
execute if entity @s[tag=!pt_in_trial] run return fail
$execute unless score @s pt_checkpoints matches $(number) run return 0

# Get current split pace
execute store result storage parkourtrial:scratchpad split_record.split_number int 1 run scoreboard players remove @s pt_checkpoints 1
function parkourtrial:splits/get_split_record with storage parkourtrial:scratchpad split_record
scoreboard players add @s pt_checkpoints 1

# Format times
function parkourtrial:string/format_split_difference
function parkourtrial:string/format_player_time

# Display message
title @s actionbar [\
"Checkpoint ",\
{bold:true, color:"gold", text:"#"},\
{bold:true, color:"gold", type:"score", score:{name:"@s",objective:"pt_checkpoints"}},\
" reached! - ",\
{type:"nbt", storage:"parkourtrial:scratchpad", nbt:"formatted_time"},\
" ",\
{type:"nbt", storage:"parkourtrial:scratchpad", nbt:"split_difference", interpret: true}\
]
scoreboard players add @s pt_checkpoints 1

# Save player split time
execute at @s run function parkourtrial:get_player_name
data modify storage parkourtrial:scratchpad splits.player_name set from storage parkourtrial:scratchpad username
function parkourtrial:splits/split with storage parkourtrial:scratchpad splits