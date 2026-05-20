data modify storage parkourtrial:scratchpad display_splits append value "\n"
$data modify storage parkourtrial:scratchpad display_splits append value {type:"nbt",storage:"parkourtrial:course_info",nbt:"split_names[$(count)]"}
data modify storage parkourtrial:scratchpad display_splits append value ": "
# Format time
$execute store result score ticks pt_globals run data get storage parkourtrial:record_info record.splits[$(count)]
function parkourtrial:string/format_time
data modify storage parkourtrial:record_info record.formatted_splits append from storage parkourtrial:scratchpad formatted_time
$data modify storage parkourtrial:scratchpad display_splits append value {type:"nbt",storage:"parkourtrial:record_info",nbt:"record.formatted_splits[$(count)]"}