# Arguments: {checkpoint_count: int, split_names: string[]}
$data modify storage parkourtrial:course_info split_names set value $(split_names)
$data modify storage parkourtrial:course_info checkpoint_count set value $(checkpoint_count)
$scoreboard players set checkpoint_amount pt_globals $(checkpoint_count) 
data modify storage parkourtrial:record_info record set value {ticks: 72000, formatted_time: "[no record]", player_name: "Nobody"}

data modify storage parkourtrial:record_info record.splits set value []
$function parkourtrial:iterate/init {function_name: "parkourtrial:iterators/reset_splits", start: 0, stop: $(checkpoint_count)}

function parkourtrial:update_record_display