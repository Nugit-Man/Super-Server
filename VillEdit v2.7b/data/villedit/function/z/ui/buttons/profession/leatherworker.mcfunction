data modify storage ve:temp profession set value "minecraft:leatherworker"
data merge entity @s {data:{Profession:"Leatherworker"}}

item replace block ~ ~ ~ container.11 with cauldron[custom_name='{"text":"Cycle Profession","color":"aqua","italic":false}',lore=['[{"text":"Current Profession: ","color":"green","italic":false},{"text": "Leatherworker","color":"blue","italic":false}]'],custom_data={ve_ui:1b}]