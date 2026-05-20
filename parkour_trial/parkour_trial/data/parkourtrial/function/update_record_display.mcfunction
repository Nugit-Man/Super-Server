data modify storage parkourtrial:scratchpad display_splits set value [\
"Best Time: ",\
{type:"nbt",bold:true,storage:"parkourtrial:record_info",nbt:"record.formatted_time"},\
" by ",\
{type:"nbt",storage:"parkourtrial:record_info",nbt:"record.player_name"},\
"\n",\
]

data modify storage parkourtrial:scratchpad iterator set value {function_name: "parkourtrial:iterators/display_splits", start: 0}
data modify storage parkourtrial:record_info record.formatted_splits set value []
execute store result storage parkourtrial:scratchpad iterator.stop int 1 run scoreboard players get checkpoint_amount pt_globals
function parkourtrial:iterate/init with storage parkourtrial:scratchpad iterator

data modify entity @e[type=text_display,tag=pt_record_display,limit=1] text set from storage parkourtrial:scratchpad display_splits