data modify storage ve:temp profession set value "minecraft:librarian"
data merge entity @s {data:{Profession:"Librarian"}}

item replace block ~ ~ ~ container.11 with lectern[custom_name='{"text":"Cycle Profession","color":"aqua","italic":false}',lore=['[{"text":"Current Profession: ","color":"green","italic":false},{"text": "Librarian","color":"blue","italic":false}]'],custom_data={ve_ui:1b}]