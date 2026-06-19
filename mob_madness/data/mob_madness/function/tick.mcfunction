


#Run your class
execute as @a[tag=MM_Class_Assassin] run function mob_madness:classes/assassin/tick









#ASsassin Projectile
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Blue] positioned ~ ~-1 ~ run damage @p[distance=..2,tag=MM_Red,tag=MM_Power1] 4 generic
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Red] positioned ~ ~-1 ~ run damage @p[distance=..2,tag=MM_Blue,tag=MM_Power1] 4 generic
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Blue] positioned ~ ~-1 ~ run damage @p[distance=..2,tag=MM_Red,tag=MM_Power2] 5 generic
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Red] positioned ~ ~-1 ~ run damage @p[distance=..2,tag=MM_Blue,tag=MM_Power2] 5 generic
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Blue] positioned ~ ~-1 ~ run damage @p[distance=..2,tag=MM_Red,tag=MM_Power3] 6 generic
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Red] positioned ~ ~-1 ~ run damage @p[distance=..2,tag=MM_Blue,tag=MM_Power3] 6 generic
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Blue] positioned ~ ~-1 ~ run damage @p[distance=..2,tag=MM_Red,tag=MM_Power4] 7 generic
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Red] positioned ~ ~-1 ~ run damage @p[distance=..2,tag=MM_Blue,tag=MM_Power4] 7 generic
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Blue] positioned ~ ~-1 ~ run damage @p[distance=..2,tag=MM_Red,tag=MM_Power5] 8 generic
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Red] positioned ~ ~-1 ~ run damage @p[distance=..2,tag=MM_Blue,tag=MM_Power5] 8 generic
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Blue] positioned ~ ~-1 ~ run damage @p[distance=..2,tag=MM_Red,tag=MM_Power6] 9 generic
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Red] positioned ~ ~-1 ~ run damage @p[distance=..2,tag=MM_Blue,tag=MM_Power6] 9 generic
scoreboard players add @e[type=item_display,tag=MM_Dash_Test] MM_Test_Dash 1
execute as @e[type=item_display,tag=MM_Dash_Test,tag=MM_Power1] at @s run tp @s ^ ^ ^-0.1
execute as @e[type=item_display,tag=MM_Dash_Test,tag=MM_Power2] at @s run tp @s ^ ^ ^-0.2
execute as @e[type=item_display,tag=MM_Dash_Test,tag=MM_Power3] at @s run tp @s ^ ^ ^-0.3
execute as @e[type=item_display,tag=MM_Dash_Test,tag=MM_Power4] at @s run tp @s ^ ^ ^-0.4
execute as @e[type=item_display,tag=MM_Dash_Test,tag=MM_Power5] at @s run tp @s ^ ^ ^-0.5
execute as @e[type=item_display,tag=MM_Dash_Test,tag=MM_Power6] at @s run tp @s ^ ^ ^-0.6
kill @e[type=item_display,tag=MM_Dash_Test,scores={MM_Test_Dash=5..}]