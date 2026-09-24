# Formats @s's time.
scoreboard players operation ticks pt_globals = @s pt_current_time
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
data modify storage parkourtrial:scratchpad finish_time set from storage parkourtrial:scratchpad formatted_time

return 1