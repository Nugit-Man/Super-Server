execute positioned ~ ~1 ~ run scoreboard players set @e[type=villager,limit=1,sort=nearest,tag=ve.editing] ve.reward_xp 1

item replace block ~ ~ ~ container.8 with experience_bottle[custom_name='{"text":"Reward XP","color":"aqua","italic":false}',lore=['[{"text":"Current value: ","color":"green","italic":false},{"text": "ON","color":"aqua","italic":false}]'],custom_data={ve_ui:1b}]