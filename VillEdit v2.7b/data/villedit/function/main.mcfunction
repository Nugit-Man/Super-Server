# Check villagers
execute as @e[type=villager,tag=!ve.checked] at @s run function villedit:z/check_villager

# Editor UI
execute as @e[type=marker,tag=ve.editor] at @s unless block ~ ~ ~ barrel unless block ~ ~ ~ hopper run function villedit:z/ui/kill
execute as @e[type=marker,tag=ve.editor,tag=ve.editor.menu] at @s run function villedit:z/ui/root
execute as @e[type=marker,tag=ve.editor,tag=ve.editor.trade] at @s run function villedit:z/trade/root

# Rename Book
execute as @a[nbt={SelectedItem:{id:"minecraft:writable_book",components:{"minecraft:custom_data":{ve_rename:1b}}}}] if data entity @s SelectedItem.components."minecraft:writable_book_content".pages[0].raw at @s run function villedit:z/rename_book

# Countdown
scoreboard players remove @e[type=marker,tag=ve.editor,scores={ve.countdown=1..}] ve.countdown 1
execute as @e[type=marker,tag=ve.editor,scores={ve.countdown=1}] run tag @s remove ve.temp.reset

# Remove Unclickable Items
execute store result score .unclicked ve.temp run clear @a #villedit:unclickable[custom_data~{ve_unclickable:1b}]
execute if score .unclicked ve.temp matches 1.. as @e[type=marker,tag=ve.editor.trade] at @s run function villedit:z/trade/reset_unclickable_items

# Remove Dropped Items
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ve_ui:1b}}}}]