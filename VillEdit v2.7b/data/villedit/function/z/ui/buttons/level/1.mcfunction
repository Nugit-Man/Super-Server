data modify storage ve:temp level set value 1
data merge entity @s {data:{Level:"Novice"}}

item replace block ~ ~ ~ container.13 with stone[custom_name='{"text":"Cycle Level","color":"aqua","italic":false}',lore=['[{"text":"Current Level: ","color":"green","italic":false},{"text": "Novice","color":"blue","italic":false}]'],custom_data={ve_ui:1b}]