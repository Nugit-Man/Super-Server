# Formats the difference between @s's current time and the current split record (their pace).
# Must be called before the split time is saved.
scoreboard players operation ticks pt_globals = @s pt_current_time
scoreboard players operation ticks pt_globals -= split_record pt_globals
# 1 if negative (new record), 0 otherwise
execute store success score negative pt_globals run execute if score ticks pt_globals matches ..-1
execute if score ticks pt_globals matches ..-1 run scoreboard players operation ticks pt_globals *= #-1 pt_globals
# Seconds
scoreboard players operation seconds pt_globals = ticks pt_globals
scoreboard players operation seconds pt_globals /= #20 pt_globals
scoreboard players operation ticks pt_globals %= #20 pt_globals
# Minutes
scoreboard players operation minutes pt_globals = seconds pt_globals
scoreboard players operation minutes pt_globals /= #60 pt_globals
scoreboard players operation seconds pt_globals %= #60 pt_globals

execute store result storage parkourtrial:scratchpad centiseconds byte 5 run scoreboard players get ticks pt_globals
execute store result storage parkourtrial:scratchpad seconds byte 1 run scoreboard players get seconds pt_globals
execute store result storage parkourtrial:scratchpad minutes byte 1 run scoreboard players get minutes pt_globals

data modify storage parkourtrial:scratchpad seconds_prefix set value ""
execute if score seconds pt_globals matches 0..9 run data modify storage parkourtrial:scratchpad seconds_prefix set value "0"
data modify storage parkourtrial:scratchpad centiseconds_prefix set value ""
execute if score ticks pt_globals matches 0..1 run data modify storage parkourtrial:scratchpad centiseconds_prefix set value "0"

function parkourtrial:string/format_concatenate with storage parkourtrial:scratchpad
data modify storage parkourtrial:scratchpad split_difference_string set from storage parkourtrial:scratchpad formatted_time
execute if score negative pt_globals matches 1 run data modify storage parkourtrial:scratchpad split_difference set value \
    [{color:"green",text:"(-"},{type:"nbt",storage:"parkourtrial:scratchpad",nbt:"split_difference_string"},")"]
execute if score negative pt_globals matches 0 run data modify storage parkourtrial:scratchpad split_difference set value \
    [{color:"red",text:"(+"},{type:"nbt",storage:"parkourtrial:scratchpad",nbt:"split_difference_string"},")"]

return 1