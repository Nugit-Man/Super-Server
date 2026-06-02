tellraw @a [\
"",\
{type: "selector", selector: "@s", bold: true},\
{text: " just set a ", bold: false},\
{text: "new record", bold: true, color: "yellow"},\
{text: " of ", bold: false},\
{type: "nbt", storage: "parkourtrial:scratchpad", nbt: "finish_time", color: "green", bold: true},\
{text: "!! ", color: "green", bold: true},\
{type: "nbt", storage: "parkourtrial:scratchpad", nbt: "finish_difference", interpret: true}\
]

# Store new record
execute store result storage parkourtrial:record_info record.ticks int 1 run scoreboard players get @s pt_current_time
execute at @s run function parkourtrial:get_player_name
data modify storage parkourtrial:record_info record.player_name set from storage parkourtrial:scratchpad username
data modify storage parkourtrial:record_info record.formatted_time set from storage parkourtrial:scratchpad finish_time

# Save splits
data modify storage parkourtrial:scratchpad splits.player_name set from storage parkourtrial:scratchpad username
function parkourtrial:splits/save with storage parkourtrial:scratchpad splits

# Update score display, if any
function parkourtrial:update_record_display