execute if entity @s[tag=MM_Red] anchored eyes run summon armor_stand ^ ^ ^ {Tags:[MM_Skeleton_Arrow,MM_Red],Invisible:1b,NoGravity:1b,Passengers:[{id:"minecraft:item_display",Tags:["MM_Skeleton_Arrow"],item:{id:"minecraft:arrow",count:1}}]}
execute if entity @s[tag=MM_Blue] anchored eyes run summon armor_stand ^ ^ ^ {Tags:[MM_Skeleton_Arrow,MM_Blue],Invisible:1b,NoGravity:1b,Passengers:[{id:"minecraft:item_display",Tags:["MM_Skeleton_Arrow"],item:{id:"minecraft:arrow",count:1}}]}
tp @n[type=armor_stand,tag=MM_Skeleton_Arrow] ^ ^ ^1 ~ ~
scoreboard players set @s MM_Skeleton_Arrow_Cooldown 22
scoreboard players remove @s MM_Skeleton_Arrow 2