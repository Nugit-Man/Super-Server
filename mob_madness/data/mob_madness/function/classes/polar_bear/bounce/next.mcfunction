summon item_display ~ ~ ~ {Tags:[MM_Ice_Pinball,MM_Ice_Pinball_New],item:{id:"minecraft:blue_ice",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.1f,.1f,.1f]}}
tag @s add MM_Ice_Adult

$execute as @n[type=item_display,tag=MM_Ice_Pinball_New] at @s run tp @s ~$(Motion_x) ~ ~
execute as @n[type=item_display,tag=MM_Ice_Pinball_New] at @s if block ~ ~ ~ air store result entity @s Motion[0] double 1 run data get entity @n[type=item_display,tag=MM_Ice_Adult] Motion[0]
execute as @n[type=item_display,tag=MM_Ice_Pinball_New] at @s unless block ~ ~ ~ air store result entity @s Motion[0] double -1 run data get entity @n[type=item_display,tag=MM_Ice_Adult] Motion[0]
$execute as @n[type=item_display,tag=MM_Ice_Pinball_New] at @s unless block ~ ~ ~ air run tp @s ~$(Motion_xx) ~ ~


$execute as @n[type=item_display,tag=MM_Ice_Pinball_New] at @s run tp @s ~ ~$(Motion_y) ~
execute as @n[type=item_display,tag=MM_Ice_Pinball_New] at @s if block ~ ~ ~ air store result entity @s Motion[1] double 1 run data get entity @n[type=item_display,tag=MM_Ice_Adult] Motion[1]
execute as @n[type=item_display,tag=MM_Ice_Pinball_New] at @s unless block ~ ~ ~ air store result entity @s Motion[1] double -1 run data get entity @n[type=item_display,tag=MM_Ice_Adult] Motion[1]
execute as @n[type=item_display,tag=MM_Ice_Pinball_New] at @s unless block ~ ~ ~ air run tag @s add MM_Ice_Pinball_Invert
$execute as @n[type=item_display,tag=MM_Ice_Pinball_New] at @s unless block ~ ~ ~ air run tp @s ~ ~$(Motion_yy) ~


$execute as @n[type=item_display,tag=MM_Ice_Pinball_New] at @s run tp @s ~ ~ ~$(Motion_z)
execute as @n[type=item_display,tag=MM_Ice_Pinball_New] at @s if block ~ ~ ~ air store result entity @s Motion[2] double 1 run data get entity @n[type=item_display,tag=MM_Ice_Adult] Motion[2]
execute as @n[type=item_display,tag=MM_Ice_Pinball_New] at @s unless block ~ ~ ~ air store result entity @s Motion[2] double -1 run data get entity @n[type=item_display,tag=MM_Ice_Adult] Motion[2]
$execute as @n[type=item_display,tag=MM_Ice_Pinball_New] at @s unless block ~ ~ ~ air run tp @s ~ ~ ~$(Motion_zz)




scoreboard players operation @e[type=item_display,tag=MM_Ice_Pinball_New] MM_Ice_Chain = @s MM_Ice_Chain
scoreboard players add @e[type=item_display,tag=MM_Ice_Pinball_New] MM_Ice_Chain 1


tag @e remove MM_Ice_Adult
tag @e remove MM_Ice_Pinball_New

