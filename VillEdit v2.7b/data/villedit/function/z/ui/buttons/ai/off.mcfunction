execute positioned ~ ~1 ~ run scoreboard players set @e[type=villager,limit=1,sort=nearest,tag=ve.editing] ve.ai 0
data merge entity @s {data:{AI:"Yes"}}

item replace block ~ ~ ~ container.14 with ender_pearl[custom_name='{"text":"Static (NoAI)","color":"aqua","italic":false}',lore=['[{"text":"Current value: ","color":"green","italic":false},{"text":"OFF","color":"gray","italic":false}]'],custom_data={ve_ui:1b}]