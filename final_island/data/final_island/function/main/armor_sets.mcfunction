
#Armor Sets
#diamond armor (Jimmy Invinceable) 
scoreboard players remove @a[scores={FI_Armor_Set_Diamond=1..}] FI_Armor_Set_Diamond 1
execute as @a[scores={FI_Sneak_Time=1..,FI_Mana=30..,FI_Armor_Set_Diamond=0},tag=FI_Armor_Set_Diamond] run effect give @s resistance 5 4 true
execute as @a[scores={FI_Sneak_Time=1..,FI_Mana=30..,FI_Armor_Set_Diamond=0},tag=FI_Armor_Set_Diamond] run tellraw @s [{text:"Jimmy Invincable Activated",color:"gray"}]
scoreboard players set @a[scores={FI_Sneak_Time=1..,FI_Mana=30..,FI_Armor_Set_Diamond=0},tag=FI_Armor_Set_Diamond] FI_Armor_Set_Diamond 101
scoreboard players remove @a[scores={FI_Sneak_Time=1..,FI_Mana=30..,FI_Armor_Set_Diamond=101},tag=FI_Armor_Set_Diamond] FI_Mana 30

#Iron Clad
scoreboard players remove @a[scores={FI_Armor_Set_Iron=1..}] FI_Armor_Set_Iron 1
execute as @a[scores={FI_Sneak_Time=1..,FI_Mana=15..,FI_Armor_Set_Iron=0},tag=FI_Armor_Set_Iron] run effect give @s resistance 10 2 true
execute as @a[scores={FI_Sneak_Time=1..,FI_Mana=15..,FI_Armor_Set_Iron=0},tag=FI_Armor_Set_Iron] run effect give @s slowness 10 1 true
tag @a[scores={FI_Sneak_Time=1..,FI_Mana=15..,FI_Armor_Set_Iron=0},tag=FI_Armor_Set_Iron] add FI_Armor_Set_Ability_Iron
execute as @a[scores={FI_Sneak_Time=1..,FI_Mana=15..,FI_Armor_Set_Iron=0},tag=FI_Armor_Set_Iron] run tellraw @s [{text:"Iron Clad Activated",color:"gray"}]
scoreboard players set @a[scores={FI_Sneak_Time=1..,FI_Mana=15..,FI_Armor_Set_Iron=0},tag=FI_Armor_Set_Iron] FI_Armor_Set_Iron 201
scoreboard players remove @a[scores={FI_Sneak_Time=1..,FI_Mana=15..,FI_Armor_Set_Iron=201},tag=FI_Armor_Set_Iron] FI_Mana 15

#These next 3 lines of code only deal with the knockback resistance that is apart of the iron clad ability
execute as @a[scores={FI_Armor_Set_Iron=201},tag=FI_Armor_Set_Ability_Iron] run attribute @s knockback_resistance base set 5
execute as @a[scores={FI_Armor_Set_Iron=1},tag=FI_Armor_Set_Ability_Iron] run attribute @s knockback_resistance base set 0
tag @a[scores={FI_Armor_Set_Iron=0}] remove FI_Armor_Set_Ability_Iron

#Rock Hard
scoreboard players remove @a[scores={FI_Armor_Set_Stone=1..}] FI_Armor_Set_Stone 1
execute as @a[scores={FI_Sneak_Time=1..,FI_Mana=60..,FI_Armor_Set_Stone=0},tag=FI_Armor_Set_Stone] run effect give @s strength 5 2 true
execute as @a[scores={FI_Sneak_Time=1..,FI_Mana=60..,FI_Armor_Set_Stone=0},tag=FI_Armor_Set_Stone] run tellraw @s [{text:"Rock Hard Activated",color:"gray"}]
scoreboard players set @a[scores={FI_Sneak_Time=1..,FI_Mana=60..,FI_Armor_Set_Stone=0},tag=FI_Armor_Set_Stone] FI_Armor_Set_Stone 101
scoreboard players remove @a[scores={FI_Sneak_Time=1..,FI_Mana=60..,FI_Armor_Set_Stone=101},tag=FI_Armor_Set_Stone] FI_Mana 60

#Gold Armor Speed reset
execute as @a[scores={MAIN_Game=2,FI_Armor_Set_Gold=1..}] run scoreboard players remove @s FI_Armor_Set_Gold 1


#Copper Armor (Fast Ralph)
scoreboard players remove @a[scores={FI_Armor_Set_Copper=1..}] FI_Armor_Set_Copper 1
execute as @a[scores={FI_Sneak_Time=1..,FI_Mana=60..,FI_Armor_Set_Copper=0},tag=FI_Armor_Set_Copper] run effect give @s speed 5 4 true
execute as @a[scores={FI_Sneak_Time=1..,FI_Mana=60..,FI_Armor_Set_Copper=0},tag=FI_Armor_Set_Copper] run tellraw @s [{text:"Fast Ralph Activated",color:"gray"}]
scoreboard players set @a[scores={FI_Sneak_Time=1..,FI_Mana=60..,FI_Armor_Set_Copper=0},tag=FI_Armor_Set_Copper] FI_Armor_Set_Copper 101
scoreboard players remove @a[scores={FI_Sneak_Time=1..,FI_Mana=60..,FI_Armor_Set_Copper=101},tag=FI_Armor_Set_Copper] FI_Mana 60


#Tuff Armor (Tuff Armor)
scoreboard players remove @a[scores={FI_Armor_Set_Tuff=1..}] FI_Armor_Set_Tuff 1
execute as @a[scores={FI_Sneak_Time=1..,FI_Mana=45..,FI_Armor_Set_Tuff=0},tag=FI_Armor_Set_Tuff] run tellraw @s [{text:"Tuff Guy Activated",color:"gray"}]
scoreboard players set @a[scores={FI_Sneak_Time=1..,FI_Mana=45..,FI_Armor_Set_Tuff=0},tag=FI_Armor_Set_Tuff] FI_Armor_Set_Tuff 601
scoreboard players remove @a[scores={FI_Sneak_Time=1..,FI_Mana=45..,FI_Armor_Set_Tuff=601},tag=FI_Armor_Set_Tuff] FI_Mana 45

execute as @a[scores={MAIN_Game=2,FI_Armor_Set_Tuff=1..},tag=FI_Armor_Set_Tuff] run attribute @s armor base set 5
execute as @a[scores={MAIN_Game=2,FI_Armor_Set_Tuff=1..},tag=FI_Armor_Set_Tuff] run attribute @s armor base reset
execute as @a[scores={MAIN_Game=2,FI_Armor_Set_Tuff=1..},tag=FI_Armor_Set_Tuff] run attribute @s knockback_resistance base set 10
execute as @a[scores={MAIN_Game=2,FI_Armor_Set_Tuff=1..},tag=FI_Armor_Set_Tuff] run attribute @s knockback_resistance base reset