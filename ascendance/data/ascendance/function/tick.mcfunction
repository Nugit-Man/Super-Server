#NOTE!! You lose AS_Welcome every time you rejoin the server!! Do not use this for important info!!
scoreboard players set @a[scores={MAIN_Game=1},tag=!AS_Welcome] AS_Map 0
scoreboard players set @a[scores={MAIN_Game=1},tag=!AS_Welcome] AS_Mode 0
scoreboard players set @a[scores={MAIN_Game=1},tag=!AS_Welcome] AS_Menu 0
scoreboard players set @a[scores={MAIN_Game=1},tag=!AS_Welcome] AS_Countdown 0
tag @a[scores={MAIN_Game=1},tag=!AS_Welcome] add AS_Welcome


effect give @a[scores={MAIN_Game=1}] saturation infinite 0 true






#Give the players menus
execute as @a[scores={MAIN_Game=1,AS_Menu=0}] run function ascendance:menu/menu0
execute as @a[scores={MAIN_Game=1,AS_Menu=1}] run function ascendance:menu/menu1
execute as @a[scores={MAIN_Game=1,AS_Menu=2}] run function ascendance:menu/menu2
execute as @a[scores={MAIN_Game=1,AS_Menu=3}] run function ascendance:menu/menu3