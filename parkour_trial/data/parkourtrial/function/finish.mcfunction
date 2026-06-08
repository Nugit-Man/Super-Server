execute if entity @s[tag=!pt_in_trial] run return fail
tag @s remove pt_in_trial
scoreboard players remove @s pt_checkpoints 1
execute if score @s pt_checkpoints < checkpoint_amount pt_globals run tellraw @s {color:"red",text:"Record invalidated -- you didn't reach all the checkpoints!"}
execute if score @s pt_checkpoints >= checkpoint_amount pt_globals run function parkourtrial:save_time
scoreboard players set @s pt_checkpoints 1