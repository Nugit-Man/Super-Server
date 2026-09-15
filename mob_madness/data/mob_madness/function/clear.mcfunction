clear @a[distance=..5]
tag @a[distance=..5] remove MM_Blue
tag @a[distance=..5] remove MM_Red
tag @a[distance=..5] remove MM_Class_Assassin
tag @a[distance=..5] remove MM_Class_Chicken
tag @a[distance=..5] remove MM_Class_Polar_Bear
tag @a[distance=..5] remove MM_Class_Skeleton

execute as @a[distance=..5] run attribute @s max_health base reset
execute as @a[distance=..5] run attribute @s movement_speed base reset

scoreboard players set @a[distance=..5] MM_Damage 0


scoreboard players set @a[distance=..5] MM_Test_Dash 0
scoreboard players set @a[distance=..5] MM_Test_Dash2 0
scoreboard players set @a[distance=..5] MM_Test_Dash3 0
scoreboard players set @a[distance=..5] MM_Test_Dash4 0

scoreboard players set @a[distance=..5] MM_Chicken_Heal 0
scoreboard players set @a[distance=..5] MM_Chicken_Main_Cooldown 0
scoreboard players set @a[distance=..5] MM_Chicken_Song 0 
scoreboard players set @a[distance=..5] MM_Chicken_Song_Bar 0
scoreboard players set @a[distance=..5] MM_Chicken_Song_Bar_Cooldown 0
scoreboard players set @a[distance=..5] MM_Chicken_Song_Type 0

scoreboard players set @a[distance=..5] MM_Polar_Cooldown 0


scoreboard players set @a[distance=..5] MM_Skeleton_Arrow_Cooldown 0
scoreboard players set @a[distance=..5] MM_Skeleton_Arrow 0
scoreboard players set @a[distance=..5] MM_Skeleton_Bone_Charge 0
scoreboard players set @a[distance=..5] MM_Skeleton_Bone_Phase 0