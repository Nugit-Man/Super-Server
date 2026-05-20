scoreboard objectives add pt_current_time dummy
scoreboard objectives add pt_checkpoints dummy

scoreboard objectives add pt_globals dummy
scoreboard players set checkpoint_amount pt_globals 0
scoreboard players set #-1 pt_globals -1
scoreboard players set #20 pt_globals 20
scoreboard players set #60 pt_globals 60

data modify storage parkourtrial:record_info record set value {ticks: 2147483647, splits: [], formatted_splits: [], formatted_time: "[no record]", player_name: "Nobody"}
data modify storage parkourtrial:scratchpad {} set value {iterator: {}, splits: {}, split_record: {}}
data modify storage parkourtrial:course_info {} set value {split_names: [], checkpoint_count: 0}
data modify storage parkourtrial:current_splits {} set value {}
function parkourtrial:update_record_display