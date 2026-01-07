#First Quest Big W
execute as @e[type=interaction,limit=1,tag=FI_Quest_Village_Anvil] on target run scoreboard players set @s[tag=!FI_Quest_Village_Anvil,tag=!FI_Quest_Village_Anvil_Start] FI_Villager_Talk 1
execute as @e[type=interaction,limit=1,tag=FI_Quest_Village_Anvil] on target run execute store result score @s FI_Villager_Check run clear @s iron_block 0
execute as @e[type=interaction,limit=1,tag=FI_Quest_Village_Anvil] on target run scoreboard players set @s[tag=!FI_Quest_Village_Anvil,tag=FI_Quest_Village_Anvil_Start,scores={FI_Villager_Check=3..}] FI_Villager_Talk 9
execute as @e[type=interaction,limit=1,tag=FI_Quest_Village_Anvil] on target run scoreboard players set @s[tag=!FI_Quest_Village_Anvil,tag=FI_Quest_Village_Anvil_Start,scores={FI_Villager_Check=..2}] FI_Villager_Talk 8
execute as @e[type=interaction,limit=1,tag=FI_Quest_Village_Anvil] on target run scoreboard players set @s[tag=FI_Quest_Village_Anvil,tag=!FI_Quest_Village_Anvil_Start] FI_Villager_Talk 11

execute as @e[type=interaction,limit=1,tag=FI_Quest_Village_Anvil] on target run scoreboard players set @s FI_Villager_Talk_Timer 59
data remove entity @e[type=interaction,limit=1,tag=FI_Quest_Village_Anvil] interaction
#Kick out of house if quest not compleated
execute at @e[type=marker,limit=1,sort=arbitrary,tag=FI_Village_Quest_Anvil_Check] run tellraw @a[distance=..1,tag=!FI_Quest_Village_Anvil] {color:red,italic:false,text:"Complete the quest outside first!"}
execute at @e[type=marker,limit=1,sort=arbitrary,tag=FI_Village_Quest_Anvil_Check] run tp @a[distance=..1,tag=!FI_Quest_Village_Anvil] -46.7 -12 -84 -90 0