data modify storage ve:temp profession set value "minecraft:weaponsmith"
data merge entity @s {data:{Profession:"Weaponsmith"}}

item replace block ~ ~ ~ container.11 with grindstone[custom_name='{"text":"Cycle Profession","color":"aqua","italic":false}',lore=['[{"text":"Current Profession: ","color":"green","italic":false},{"text": "Weaponsmith","color":"blue","italic":false}]'],custom_data={ve_ui:1b}]