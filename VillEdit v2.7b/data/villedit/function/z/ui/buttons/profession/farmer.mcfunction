data modify storage ve:temp profession set value "minecraft:farmer"
data merge entity @s {data:{Profession:"Farmer"}}

item replace block ~ ~ ~ container.11 with composter[custom_name='{"text":"Cycle Profession","color":"aqua","italic":false}',lore=['[{"text":"Current Profession: ","color":"green","italic":false},{"text": "Farmer","color":"blue","italic":false}]'],custom_data={ve_ui:1b}]