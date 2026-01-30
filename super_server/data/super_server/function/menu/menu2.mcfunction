item replace entity @s inventory.0 with minecraft:air
item replace entity @s inventory.1 with minecraft:air
item replace entity @s inventory.2 with minecraft:air
item replace entity @s inventory.3 with minecraft:air
item replace entity @s inventory.4 with minecraft:air
item replace entity @s inventory.5 with minecraft:air
item replace entity @s inventory.6 with minecraft:air
item replace entity @s inventory.7 with minecraft:air
item replace entity @s inventory.8 with minecraft:air
item replace entity @s inventory.9 with minecraft:air
item replace entity @s inventory.10 with minecraft:name_tag[custom_name={text:"Barrel stats:",italic:false}]
item replace entity @s inventory.11 with minecraft:air
item replace entity @s inventory.12 with minecraft:air
item replace entity @s inventory.13 with minecraft:structure_void[custom_name={text:"Comming Soon!",italic:false}]
item replace entity @s inventory.14 with minecraft:air
item replace entity @s inventory.15 with minecraft:air
item replace entity @s inventory.16 with minecraft:structure_void[custom_name={text:"Comming Soon!",italic:false}]
item replace entity @s inventory.17 with minecraft:air
item replace entity @s inventory.18 with minecraft:air
item replace entity @s inventory.19 with minecraft:air
item replace entity @s inventory.20 with minecraft:air
item replace entity @s inventory.21 with minecraft:air
item replace entity @s inventory.22 with minecraft:barrier[custom_name={text:"Back",italic:false},rarity="common"]
item replace entity @s inventory.23 with minecraft:air
item replace entity @s inventory.24 with minecraft:air
item replace entity @s inventory.25 with minecraft:air
item replace entity @s inventory.26 with minecraft:air

scoreboard players set @a[scores={MAIN_Game=0}] MAIN_Select 0
execute as @a[scores={MAIN_Game=0}] store result score @s MAIN_Select run clear @s barrier 0
scoreboard players set @a[scores={MAIN_Game=0,MAIN_Select=2}] MAIN_Menu 0
clear @a[scores={MAIN_Game=0,MAIN_Select=2}]


scoreboard players set @a[scores={MAIN_Game=0}] MAIN_Select 0
execute as @a[scores={MAIN_Game=0}] store result score @s MAIN_Select run clear @s name_tag 0
execute as @a[scores={MAIN_Game=0,MAIN_Select=2}] run tellraw @s [["Found: ",{"score":{"name":"@s","objective":"MAIN_Barrels"}},"/58"],["\nUnspent: ",{"score":{"name":"@s","objective":"MAIN_Barrels"}}],["\nBonus: ",{"score":{"name":"@s","objective":"MAIN_Barrels_Bonus"}}]]
clear @a[scores={MAIN_Game=0,MAIN_Select=2}]

