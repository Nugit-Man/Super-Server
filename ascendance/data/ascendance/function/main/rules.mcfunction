#kill on hit and remove hitting
kill @a[nbt={HurtTime:9s, Dimension:"ascendance:game"},scores={MAIN_Game=1}]
execute as @a[scores={MAIN_Game=1}] run attribute @s attack_damage base set -10



#Stop players from dropping items
execute at @a[scores={MAIN_Game=1}] run kill @e[type=item,distance=..100]
execute at @a[scores={MAIN_Game=1}] run kill @e[type=experience_orb,distance=..100]

#remove the crown from players outside of a game
tag @a[scores={AS_Mode=0,MAIN_Game=1}] remove AS_Crown
tag @a[scores={MAIN_Game=0}] remove AS_Crown


effect give @a[scores={MAIN_Game=1}] saturation infinite 0 true


#Arrow Cleanup
execute at @a[scores={MAIN_Game=1}] run kill @e[type=arrow,distance=..50,nbt={Motion:[0d,0d,0d]}]


#set singleplayer scores to 0 in lobby
scoreboard players set @a[scores={MAIN_Game=1,AS_Mode=0}] AS_Score_Singleplayer 0



#Gambliers philiosphy
execute as @a[scores={AS_Map=2,AS_Gamemode=1..,MAIN_Game=1}] run execute store result score @s AS_Gambling run random value 1..10000
advancement grant @a[scores={AS_Map=2,AS_Gamemode=1..,MAIN_Game=1,AS_Gambling=6942}] only ascendance:ascendance/gamblers_philosophy

#Kill players on glass on bridge
execute as @a[scores={MAIN_Game=1,AS_Map=13}] at @s if block ~ ~-1 ~ minecraft:gray_stained_glass run kill @s


#Parkour achivement
execute at @e[type=marker,tag=AS_Parkour_Finish] run advancement grant @a[distance=..2] only ascendance:ascendance/jumpman

#Deal with killstreak
scoreboard players set @a[scores={MAIN_Game=1,AS_Gamemode=0}] AS_Killstreak 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Gamemode=1..,AS_Deaths=1..}] AS_Killstreak 0
clear @a[scores={MAIN_Game=1,AS_Gamemode=1..,AS_Deaths=1..}] crossbow
execute as @a[scores={MAIN_Game=1,AS_Gamemode=1..,AS_Kills=1..}] run scoreboard players operation @s AS_Killstreak += @s AS_Kills
give @a[scores={MAIN_Game=1,AS_Killstreak=3..}] crossbow[charged_projectiles=[{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:3,explosions:[{shape:"large_ball",has_trail:true,colors:[16711680]},{shape:"large_ball",has_trail:true,colors:[65280]},{shape:"large_ball",has_trail:true,colors:[255]}]}}}],damage=465,tooltip_display={hidden_components:["damage","charged_projectiles"]},custom_name={"italic":false,"text":"Super Shotgun"}] 1
scoreboard players remove @a[scores={MAIN_Game=1,AS_Killstreak=3..}] AS_Killstreak 3