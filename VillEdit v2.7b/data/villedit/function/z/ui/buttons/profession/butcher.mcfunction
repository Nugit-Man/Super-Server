data modify storage ve:temp profession set value "minecraft:butcher"
data merge entity @s {data:{Profession:"Butcher"}}

item replace block ~ ~ ~ container.11 with smoker[custom_name='{"text":"Cycle Profession","color":"aqua","italic":false}',lore=['[{"text":"Current Profession: ","color":"green","italic":false},{"text": "Butcher","color":"blue","italic":false}]'],custom_data={ve_ui:1b}]