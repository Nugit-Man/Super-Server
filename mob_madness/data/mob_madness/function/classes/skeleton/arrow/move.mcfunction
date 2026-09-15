execute as @e[type=armor_stand,tag=MM_Skeleton_Arrow,scores={MM_Skeleton_Arrow=1..},tag=!MM_Parry] at @s run tp @s ^ ^ ^0.8
execute as @e[type=armor_stand,tag=MM_Skeleton_Arrow,scores={MM_Skeleton_Arrow=1..},tag=MM_Parry] at @s run tp @s ^ ^ ^1
execute as @e[tag=!MM_Dead,tag=!MM_Parry,type=armor_stand,tag=MM_Skeleton_Arrow,tag=MM_Red,scores={MM_Skeleton_Arrow=1..10}] at @s run scoreboard players add @p[distance=..1,tag=MM_Blue] MM_Damage 10
execute as @e[tag=!MM_Dead,tag=!MM_Parry,type=armor_stand,tag=MM_Skeleton_Arrow,tag=MM_Red,scores={MM_Skeleton_Arrow=11..25}] at @s run scoreboard players add @p[distance=..1,tag=MM_Blue] MM_Damage 9
execute as @e[tag=!MM_Dead,tag=!MM_Parry,type=armor_stand,tag=MM_Skeleton_Arrow,tag=MM_Red,scores={MM_Skeleton_Arrow=26..50}] at @s run scoreboard players add @p[distance=..1,tag=MM_Blue] MM_Damage 8
execute as @e[tag=!MM_Dead,tag=!MM_Parry,type=armor_stand,tag=MM_Skeleton_Arrow,tag=MM_Red,scores={MM_Skeleton_Arrow=51..100}] at @s run scoreboard players add @p[distance=..1,tag=MM_Blue] MM_Damage 7
execute as @e[tag=!MM_Dead,tag=!MM_Parry,type=armor_stand,tag=MM_Skeleton_Arrow,tag=MM_Blue,scores={MM_Skeleton_Arrow=1..15}] at @s run scoreboard players add @p[distance=..1,tag=MM_Red] MM_Damage 10
execute as @e[tag=!MM_Dead,tag=!MM_Parry,type=armor_stand,tag=MM_Skeleton_Arrow,tag=MM_Blue,scores={MM_Skeleton_Arrow=16..30}] at @s run scoreboard players add @p[distance=..1,tag=MM_Red] MM_Damage 9
execute as @e[tag=!MM_Dead,tag=!MM_Parry,type=armor_stand,tag=MM_Skeleton_Arrow,tag=MM_Blue,scores={MM_Skeleton_Arrow=31..50}] at @s run scoreboard players add @p[distance=..1,tag=MM_Red] MM_Damage 8
execute as @e[tag=!MM_Dead,tag=!MM_Parry,type=armor_stand,tag=MM_Skeleton_Arrow,tag=MM_Blue,scores={MM_Skeleton_Arrow=51..100}] at @s run scoreboard players add @p[distance=..1,tag=MM_Red] MM_Damage 7
execute as @e[tag=!MM_Dead,tag=MM_Parry,type=armor_stand,tag=MM_Skeleton_Arrow,tag=MM_Red,scores={MM_Skeleton_Arrow=1..100}] at @s run scoreboard players add @p[distance=..1,tag=MM_Blue] MM_Damage 10
execute as @e[tag=!MM_Dead,tag=MM_Parry,type=armor_stand,tag=MM_Skeleton_Arrow,tag=MM_Blue,scores={MM_Skeleton_Arrow=1..100}] at @s run scoreboard players add @p[distance=..1,tag=MM_Red] MM_Damage 10
execute as @e[tag=!MM_Dead,type=armor_stand,tag=MM_Skeleton_Arrow,scores={MM_Skeleton_Arrow=1..},tag=MM_Blue] at @s if entity @p[distance=..1,tag=MM_Red] run tag @s add MM_Dead
execute as @e[tag=!MM_Dead,type=armor_stand,tag=MM_Skeleton_Arrow,scores={MM_Skeleton_Arrow=1..},tag=MM_Red] at @s if entity @p[distance=..1,tag=MM_Blue] run tag @s add MM_Dead
execute as @e[tag=!MM_Dead,type=armor_stand,tag=MM_Skeleton_Arrow,scores={MM_Skeleton_Arrow=1..}] at @s unless block ~ ~1.4 ~ air run tag @s add MM_Dead
