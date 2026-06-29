#Make it so they can not trample farmland
execute as @a at @s if block ~ ~-0.5 ~ farmland run effect give @s slow_falling 1 1 true
execute as @a at @s if block ~ ~-1 ~ farmland run effect give @s slow_falling 1 1 true

effect give @a[scores={MAIN_Game=0}] saturation 1 0 true


#I use arch btw
#and I'm keeping it that way

function super_server:main/warps
function super_server:main/logon
function super_server:main/games
function super_server:main/scoreboards
function super_server:skyblock/advancement

#Awarding Xp
#scoreboard players set @a[scores={MAIN_Game=1..}] MAIN_XP_Timer 0
#scoreboard players add @a[scores={MAIN_Game=0}] MAIN_XP_Timer 1
#execute as @a[scores={MAIN_XP_Timer=10,MAIN_Achivement_XP=1..}] run tellraw @s [{"text":"XP Gained: ","color":"gray"},{"color":"gray","score":{"objective":"MAIN_Achivement_XP","name":"@s"}}]
#experience add @a[scores={MAIN_XP_Timer=15,MAIN_Achivement_XP=1..}] 1 points
#execute at @a[scores={MAIN_XP_Timer=15,MAIN_Achivement_XP=1..}] run playsound minecraft:entity.experience_orb.pickup master @a[scores={MAIN_XP_Timer=15,MAIN_Achivement_XP=1..}]
#scoreboard players remove @a[scores={MAIN_XP_Timer=16,MAIN_Achivement_XP=1..}] MAIN_Achivement_XP 1
#scoreboard players set @a[scores={MAIN_XP_Timer=21,MAIN_Achivement_XP=1..}] MAIN_XP_Timer 14

#Mace Masters
function super_server:mace/tick
function super_server:kanye/tick

function super_server:main/timers
function super_server:main/barrels


#Give the players menus
execute as @a[scores={MAIN_Game=0,MAIN_Menu=0}] run function super_server:menu/menu0
execute as @a[scores={MAIN_Game=0,MAIN_Menu=1}] run function super_server:menu/menu1
execute as @a[scores={MAIN_Game=0,MAIN_Menu=2}] run function super_server:menu/menu2

function super_server:team/make


#Bonus Barrels
scoreboard players set @a[tag=!MAIN_Bonus_Barrel_Reset] MAIN_Barrels_Bonus 0
tag @a add MAIN_Bonus_Barrel_Reset


tag @a[scores={MAIN_Game=0}] remove MM_Class_Assassin
tag @a[scores={MAIN_Game=0}] remove MM_Class_Chicken
tag @a[scores={MAIN_Game=0}] remove MM_Class_Polar_Bear