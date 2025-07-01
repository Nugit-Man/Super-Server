scoreboard players remove @s FI_Mana 60
scoreboard players set @s FI_Mana_Cooldown_stone_sword 90

execute anchored eyes run particle minecraft:snowflake ^ ^ ^3 1 1 1 0 100 normal
execute anchored eyes run particle minecraft:snowflake ^ ^ ^3 1 1 1 0 10 force

tag @s add FI_Stone_Cold

execute anchored eyes run summon marker ^ ^ ^3 {Tags:["FI_Ability_Stone_Cold"]}
execute at @e[tag=FI_Ability_Stone_Cold] run effect give @e[distance=..3,tag=!FI_Stone_Cold] slowness 10 2 true
execute at @e[tag=FI_Ability_Stone_Cold] run execute as @e[distance=..3] run damage @s 6 freeze
kill @e[tag=FI_Ability_Stone_Cold]

tag @s remove FI_Stone_Cold