scoreboard players remove @s[scores={MM_Skeleton_Arrow_Cooldown=1..}] MM_Skeleton_Arrow_Cooldown 1

scoreboard players add @s[scores={MM_Skeleton_Arrow=..19,MM_Skeleton_Arrow_Cooldown=0}] MM_Skeleton_Arrow 1

scoreboard players add @s[scores={MM_Skeleton_Bone_Phase=0,MM_Skeleton_Bone_Charge=..124}] MM_Skeleton_Bone_Charge 1



item replace entity @s[scores={MM_Skeleton_Arrow=0..1}] hotbar.2 with coal[custom_model_data={strings:[bar200]}]
item replace entity @s[scores={MM_Skeleton_Arrow=2..3}] hotbar.2 with coal[custom_model_data={strings:[bar201]}]
item replace entity @s[scores={MM_Skeleton_Arrow=4..5}] hotbar.2 with coal[custom_model_data={strings:[bar202]}]
item replace entity @s[scores={MM_Skeleton_Arrow=6..7}] hotbar.2 with coal[custom_model_data={strings:[bar203]}]
item replace entity @s[scores={MM_Skeleton_Arrow=8..9}] hotbar.2 with coal[custom_model_data={strings:[bar204]}]
item replace entity @s[scores={MM_Skeleton_Arrow=10..11}] hotbar.2 with coal[custom_model_data={strings:[bar205]}]
item replace entity @s[scores={MM_Skeleton_Arrow=12..13}] hotbar.2 with coal[custom_model_data={strings:[bar206]}]
item replace entity @s[scores={MM_Skeleton_Arrow=14..15}] hotbar.2 with coal[custom_model_data={strings:[bar207]}]
item replace entity @s[scores={MM_Skeleton_Arrow=16..17}] hotbar.2 with coal[custom_model_data={strings:[bar208]}]
item replace entity @s[scores={MM_Skeleton_Arrow=18..19}] hotbar.2 with coal[custom_model_data={strings:[bar209]}]
item replace entity @s[scores={MM_Skeleton_Arrow=20}] hotbar.2 with coal[custom_model_data={strings:[bar210]}]

execute if score @s MM_Skeleton_Bone_Phase matches 0 run function mob_madness:classes/skeleton/bar/phase0