execute positioned ~ ~1 ~ run scoreboard players set @e[type=villager,limit=1,sort=nearest,tag=ve.editing] ve.glow 1
data merge entity @s {data:{Glow:"Yes"}}

effect give @e[type=villager,limit=1,sort=nearest,tag=ve.editing] glowing infinite 1 true

item replace block ~ ~ ~ container.20 with redstone_lamp[custom_name='{"text":"Glow","color":"aqua","italic":false}',lore=['[{"text":"Current value: ","color":"green","italic":false},{"text":"ON","color":"aqua","italic":false}]'],custom_data={ve_ui:1b}]