#NOTE!! You lose AS_Welcome every time you rejoin the server!! Do not use this for important info!!
scoreboard players set @a[scores={MAIN_Game=1},tag=!AS_Welcome] AS_Map 0
scoreboard players set @a[scores={MAIN_Game=1},tag=!AS_Welcome] AS_Mode 0
scoreboard players set @a[scores={MAIN_Game=1},tag=!AS_Welcome] AS_Menu 0
scoreboard players set @a[scores={MAIN_Game=1},tag=!AS_Welcome] AS_Countdown 0
scoreboard players set @a[scores={MAIN_Game=1},tag=!AS_Welcome] AS_Gamemode 0
tag @a[scores={MAIN_Game=1},tag=!AS_Welcome] add AS_Welcome



scoreboard players set @a[scores={MAIN_Game=1},tag=!AS_Give_Bow] AS_Cosmetic_Bow 0
tag @a[scores={MAIN_Game=1}] add AS_Give_Bow


#Give the players menus
execute as @a[scores={MAIN_Game=1,AS_Menu=0,AS_Mode=0}] run function ascendance:menu/menu0
execute as @a[scores={MAIN_Game=1,AS_Menu=1,AS_Mode=0}] run function ascendance:menu/menu1
execute as @a[scores={MAIN_Game=1,AS_Menu=2,AS_Mode=0}] run function ascendance:menu/menu2
execute as @a[scores={MAIN_Game=1,AS_Menu=3,AS_Mode=0}] run function ascendance:menu/menu3
execute as @a[scores={MAIN_Game=1,AS_Menu=4,AS_Mode=0}] run function ascendance:menu/menu4


#Prevent a second round starting on the same map as one currently is use
execute if entity @a[scores={MAIN_Game=1,AS_Countdown=1..,AS_Map=1}] run scoreboard players set @a[scores={AS_Countdown=0,MAIN_Game=1,AS_Map=1}] AS_Map 0
execute if entity @a[scores={MAIN_Game=1,AS_Countdown=1..,AS_Map=2}] run scoreboard players set @a[scores={AS_Countdown=0,MAIN_Game=1,AS_Map=2}] AS_Map 0
execute if entity @a[scores={MAIN_Game=1,AS_Countdown=1..,AS_Map=3}] run scoreboard players set @a[scores={AS_Countdown=0,MAIN_Game=1,AS_Map=3}] AS_Map 0
execute if entity @a[scores={MAIN_Game=1,AS_Countdown=1..,AS_Map=4}] run scoreboard players set @a[scores={AS_Countdown=0,MAIN_Game=1,AS_Map=4}] AS_Map 0
execute if entity @a[scores={MAIN_Game=1,AS_Countdown=1..,AS_Map=5}] run scoreboard players set @a[scores={AS_Countdown=0,MAIN_Game=1,AS_Map=5}] AS_Map 0
execute if entity @a[scores={MAIN_Game=1,AS_Countdown=1..,AS_Map=10}] run scoreboard players set @a[scores={AS_Countdown=0,MAIN_Game=1,AS_Map=10}] AS_Map 0
execute if entity @a[scores={MAIN_Game=1,AS_Countdown=1..,AS_Map=11}] run scoreboard players set @a[scores={AS_Countdown=0,MAIN_Game=1,AS_Map=11}] AS_Map 0
execute if entity @a[scores={MAIN_Game=1,AS_Countdown=1..,AS_Map=12}] run scoreboard players set @a[scores={AS_Countdown=0,MAIN_Game=1,AS_Map=12}] AS_Map 0
execute if entity @a[scores={MAIN_Game=1,AS_Countdown=1..,AS_Map=13}] run scoreboard players set @a[scores={AS_Countdown=0,MAIN_Game=1,AS_Map=13}] AS_Map 0


#Set up join game
scoreboard players set @a[scores={MAIN_Game=1,AS_Mode=0,AS_JoinGame=1..}] AS_Countdown -1
tellraw @a[scores={MAIN_Game=1,AS_Mode=0,AS_JoinGame=1..}] "You have joined the game"
scoreboard players set @a[scores={MAIN_Game=1,AS_Mode=0}] AS_JoinGame 0


#Call the main functions
function ascendance:main/advnacement
function ascendance:main/barrel
function ascendance:main/call_multiplayer_macros
function ascendance:main/crown
function ascendance:main/rules
function ascendance:main/scoreadd