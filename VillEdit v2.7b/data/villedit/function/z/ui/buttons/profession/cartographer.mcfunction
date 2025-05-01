data modify storage ve:temp profession set value "minecraft:cartographer"
data merge entity @s {data:{Profession:"Cartographer"}}

item replace block ~ ~ ~ container.11 with cartography_table[custom_name='{"text":"Cycle Profession","color":"aqua","italic":false}',lore=['[{"text":"Current Profession: ","color":"green","italic":false},{"text": "Cartographer","color":"blue","italic":false}]'],custom_data={ve_ui:1b}]