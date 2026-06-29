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
item replace entity @s inventory.10 with minecraft:bow[custom_name={text:"Default Bow",italic:false}]
item replace entity @s[advancements={ascendance:ascendance/chicken_dinner=true}] inventory.11 with minecraft:target[custom_name={text:"Trainging Bow",italic:false}]
item replace entity @s[advancements={final_island:bow=true}] inventory.12 with minecraft:bone[custom_name={text:"Ancient Bow",italic:false}]
item replace entity @s[advancements={gorbino:shooter_mcgee=true}] inventory.13 with minecraft:diamond[custom_name={text:"Empowered Bow",italic:false}]
item replace entity @s[advancements={ric:diorite=true}] inventory.14 with minecraft:emerald[custom_name={text:"Enriched Bow",italic:false}]
item replace entity @s[advancements={super_server:milestones/ascendance/par1=true}] inventory.15 with minecraft:golden_sword[custom_name={text:"Legendary Bow",italic:false}]
item replace entity @s[advancements={super_server:milestones/ascendance/par9=true}] inventory.16 with minecraft:chorus_fruit[custom_name={text:"Notch",italic:false},custom_model_data={strings:['Random']}]
item replace entity @s inventory.17 with minecraft:air
item replace entity @s inventory.18 with minecraft:air
item replace entity @s inventory.19 with minecraft:air
item replace entity @s inventory.20 with minecraft:air
item replace entity @s inventory.21 with minecraft:air
item replace entity @s inventory.22 with minecraft:barrier[custom_name={text:"Go Back",italic:false}]
item replace entity @s inventory.23 with minecraft:air
item replace entity @s inventory.24 with minecraft:air
item replace entity @s inventory.25 with minecraft:air
item replace entity @s inventory.26 with minecraft:air



item replace entity @s[advancements={ascendance:ascendance/chicken_dinner=false}] inventory.11 with minecraft:structure_void[custom_name={text:"Locked",italic:false},lore=[{text:"Get an achivement in:",color:"dark_gray",italic:false},{text:"Ascendance",color:"dark_gray",italic:false},{text:"to unlock",color:"dark_gray",italic:false}]]
item replace entity @s[advancements={final_island:bow=false}] inventory.12 with minecraft:structure_void[custom_name={text:"Locked",italic:false},lore=[{text:"Get an achivement in:",color:"dark_gray",italic:false},{text:"Final Island",color:"dark_gray",italic:false},{text:"to unlock",color:"dark_gray",italic:false}]]
item replace entity @s[advancements={gorbino:shooter_mcgee=false}] inventory.13 with minecraft:structure_void[custom_name={text:"Locked",italic:false},lore=[{text:"Get an achivement in:",color:"dark_gray",italic:false},{text:"Gorbino",color:"dark_gray",italic:false},{text:"to unlock",color:"dark_gray",italic:false}]]
item replace entity @s[advancements={ric:diorite=false}] inventory.14 with minecraft:structure_void[custom_name={text:"Locked",italic:false},lore=[{text:"Get an achivement in:",color:"dark_gray",italic:false},{text:"RIC",color:"dark_gray",italic:false},{text:"to unlock",color:"dark_gray",italic:false}]]
item replace entity @s[advancements={super_server:milestones/ascendance/par1=false}] inventory.15 with minecraft:structure_void[custom_name={text:"Locked",italic:false},lore=[{text:"Get an achivement in:",color:"dark_gray",italic:false},{text:"Ascendance",color:"dark_gray",italic:false},{text:"to unlock",color:"dark_gray",italic:false}]]
item replace entity @s[advancements={super_server:milestones/ascendance/par9=false}] inventory.16 with minecraft:structure_void[custom_name={text:"Locked",italic:false},lore=[{text:"Get an achivement in:",color:"dark_gray",italic:false},{text:"Ascendance",color:"dark_gray",italic:false},{text:"to unlock",color:"dark_gray",italic:false}]]


item replace entity @s[scores={AS_Cosmetic_Bow=0}] inventory.10 with minecraft:bow[custom_name={text:"Default Bow",italic:false},lore=[{text:"Selected",italic:true,color:gray}]]
item replace entity @s[scores={AS_Cosmetic_Bow=1}] inventory.11 with minecraft:target[custom_name={text:"Trainging Bow",italic:false},lore=[{text:"Selected",italic:true,color:gray}]]
item replace entity @s[scores={AS_Cosmetic_Bow=2}] inventory.12 with minecraft:bone[custom_name={text:"Ancient Bow",italic:false},lore=[{text:"Selected",italic:true,color:gray}]]
item replace entity @s[scores={AS_Cosmetic_Bow=3}] inventory.13 with minecraft:diamond[custom_name={text:"Empowered Bow",italic:false},lore=[{text:"Selected",italic:true,color:gray}]]
item replace entity @s[scores={AS_Cosmetic_Bow=4}] inventory.14 with minecraft:emerald[custom_name={text:"Enriched Bow",italic:false},lore=[{text:"Selected",italic:true,color:gray}]]
item replace entity @s[scores={AS_Cosmetic_Bow=5}] inventory.15 with minecraft:golden_sword[custom_name={text:"Legendary Bow",italic:false},lore=[{text:"Selected",italic:true,color:gray}]]
item replace entity @s[scores={AS_Cosmetic_Bow=6}] inventory.16 with minecraft:chorus_fruit[custom_name={text:"Notch",italic:false},custom_model_data={strings:['Random']},lore=[{text:"Selected",italic:true,color:gray}]]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s barrier 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Gamemode 0
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s bow 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Cosmetic_Bow 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Gamemode 0
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s target 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Cosmetic_Bow 1
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Gamemode 0
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s bone 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Cosmetic_Bow 2
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Gamemode 0
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s diamond 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Cosmetic_Bow 3
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Gamemode 0
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s emerald 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Cosmetic_Bow 4
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Gamemode 0
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s golden_sword 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Cosmetic_Bow 5
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Gamemode 0
clear @a[scores={MAIN_Game=1,AS_Select=2}]

scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s chorus_fruit 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Cosmetic_Bow 6
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Gamemode 0
clear @a[scores={MAIN_Game=1,AS_Select=2}]
