data modify storage ve:temp profession set value "minecraft:toolsmith"
data merge entity @s {data:{Profession:"Toolsmith"}}

item replace block ~ ~ ~ container.11 with smithing_table[custom_name='{"text":"Cycle Profession","color":"aqua","italic":false}',lore=['[{"text":"Current Profession: ","color":"green","italic":false},{"text": "Toolsmith","color":"blue","italic":false}]'],custom_data={ve_ui:1b}]