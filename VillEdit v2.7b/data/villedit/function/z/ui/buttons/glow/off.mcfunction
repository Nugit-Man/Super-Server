execute positioned ~ ~1 ~ run scoreboard players set @e[type=villager,limit=1,sort=nearest,tag=ve.editing] ve.glow 0
data merge entity @s {data:{Glow:"No"}}

effect clear @e[type=villager,limit=1,sort=nearest,tag=ve.editing] glowing

item replace block ~ ~ ~ container.20 with redstone_lamp[custom_name='{"text":"Glow","color":"aqua","italic":false}',lore=['[{"text":"Current value: ","color":"green","italic":false},{"text":"OFF","color":"gray","italic":false}]'],custom_data={ve_ui:1b}]