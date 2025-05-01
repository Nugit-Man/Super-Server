# Validate input
scoreboard players set .validated ve.temp 1
execute unless data block ~ ~ ~ {Items:[{Slot:10b}]} unless data block ~ ~ ~ {Items:[{Slot:11b}]} unless data block ~ ~ ~ {Items:[{Slot:13b}]} run function villedit:z/trade/buttons/create/fail

execute unless score .validated ve.temp matches 0 run function villedit:z/trade/buttons/create/run

clear @a emerald[custom_data~{ve_ui:1b}]