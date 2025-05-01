data modify storage ve:temp profession set value "minecraft:mason"
data merge entity @s {data:{Profession:"Mason"}}

item replace block ~ ~ ~ container.11 with stonecutter[custom_name='{"text":"Cycle Profession","color":"aqua","italic":false}',lore=['[{"text":"Current Profession: ","color":"green","italic":false},{"text": "Mason","color":"blue","italic":false}]'],custom_data={ve_ui:1b}]