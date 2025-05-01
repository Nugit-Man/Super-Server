data modify storage ve:temp Name set from entity @s SelectedItem.components."minecraft:writable_book_content".pages[0].raw
data modify storage ve:temp First set string storage ve:temp Name 0 1

execute unless data storage ve:temp {First:"{"} run function villedit:z/format_json with storage ve:temp {}

data modify entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] CustomName set from storage ve:temp Name

item replace entity @s weapon.mainhand with air