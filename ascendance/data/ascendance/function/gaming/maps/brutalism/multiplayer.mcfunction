#Winner
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1}] if score @s AS_Map_Brutalism >= $Par AS_Map_Brutalism run tag @s add AS_Winner
execute as @a[scores={MAIN_Game=1},tag=AS_Winner] run tag @a[scores={MAIN_Game=1,AS_Map=3},tag=!AS_Winner] add AS_Loser
execute as @a[scores={MAIN_Game=1},tag=AS_Winner] run function ascendance:gaming/end/gameend

#reset the $'s
scoreboard players set $ AS_Spread 0
scoreboard players set $$ AS_Spread 0
scoreboard players set $$$ AS_Spread 0

#Get Spread and Winning
scoreboard players operation $ AS_Spread > @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1}] AS_Map_Brutalism
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1}] run scoreboard players operation @s AS_Spread = @s AS_Map_Brutalism
scoreboard players operation @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1}] AS_Spread -= $ AS_Spread
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1}] run execute if score @s AS_Spread matches 0 run tag @s add AS_Winning
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1}] run execute unless score @s AS_Spread matches 0 run tag @s remove AS_Winning
scoreboard players operation $$ AS_Spread > @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1},tag=!AS_Winning] AS_Map_Brutalism
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1},tag=AS_Winning] run scoreboard players operation @s AS_Spread = @s AS_Map_Brutalism
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1},tag=AS_Winning] run scoreboard players operation @s AS_Spread -= $$ AS_Spread

#actionbar
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1}] run title @s actionbar [{text:"Score: "},{score:{"objective":"AS_Map_Brutalism","name":"@s"}},{text:"/"},{score:{objective:AS_Map_Brutalism,name:"$Par"}},{text:", Spread: "},{score:{"objective":"AS_Spread","name":"@s"}},{text:", Winning: "},{selector:"@a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1},tag=AS_Winning]"}]

#Check if game ends due to there ony being one player
scoreboard players set $$$ AS_Spread 0
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1}] run scoreboard players add $$$ AS_Spread 1
execute if score $$$ AS_Spread matches 0..1 run tellraw @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1}] {text:"Game was canceled because there was only one player",italic:false}
execute if score $$$ AS_Spread matches 0..1 run scoreboard objectives remove AS_Map_Brutalism
execute if score $$$ AS_Spread matches 0..1 run tag @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1}] add AS_GoHome
execute if score $$$ AS_Spread matches 0..1 run function ascendance:gaming/end/go_home

#Creeper Cleanup
execute at @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1}] run kill @e[type=creeper,distance=..250]


#Deal with crown
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=2,AS_Deaths=1..},tag=AS_Crown] run tag @a[limit=1,tag=!AS_Crown,scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=2,AS_Kills=1..}] add AS_Crown
item replace entity @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=2,AS_Deaths=1..},tag=AS_Crown] armor.head with air
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=2,AS_Deaths=1..},tag=AS_Crown] run item replace entity @a[limit=1,tag=!AS_Crown,scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=2,AS_Kills=1..}] armor.head with golden_helmet[enchantments={binding_curse:1},unbreakable={},enchantment_glint_override=false,tooltip_display={hidden_components:[enchantments,unbreakable]}]
tag @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=2,AS_Deaths=1..},tag=AS_Crown] remove AS_Crown 
effect give @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=2},tag=AS_Crown] glowing infinite 0 true

#Check for no crown
execute unless entity @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=2},tag=AS_Crown] run tag @r[limit=1,tag=!AS_Crown,scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=2,AS_Countdown=16..}] add AS_Get_Crown
item replace entity @a[tag=AS_Get_Crown] armor.head with golden_helmet[enchantments={binding_curse:1},unbreakable={},enchantment_glint_override=false,tooltip_display={hidden_components:[enchantments,unbreakable]}]
tag @a[tag=AS_Get_Crown] add AS_Crown
tag @a remove AS_Get_Crown