scoreboard players add @s[scores={MM_Test_Dash=..399,MM_Test_Dash3=0}] MM_Test_Dash 1
scoreboard players remove @s[scores={MM_Test_Dash2=1..}] MM_Test_Dash2 1
scoreboard players remove @s[scores={MM_Test_Dash3=1..}] MM_Test_Dash3 1
scoreboard players remove @s[scores={MM_Test_Dash4=1..}] MM_Test_Dash4 1
scoreboard players set @s[scores={MM_Test_Dash4=555..}] MM_Test_Dash4 550

item replace entity @s[scores={MM_Test_Dash=0..99}] hotbar.2 with coal[custom_model_data={strings:[bar0]}]
item replace entity @s[scores={MM_Test_Dash=100..199}] hotbar.2 with coal[custom_model_data={strings:[bar1]}]
item replace entity @s[scores={MM_Test_Dash=200..299}] hotbar.2 with coal[custom_model_data={strings:[bar2]}]
item replace entity @s[scores={MM_Test_Dash=300..399}] hotbar.2 with coal[custom_model_data={strings:[bar3]}]
item replace entity @s[scores={MM_Test_Dash=400..}] hotbar.2 with coal[custom_model_data={strings:[bar4]}]

item replace entity @s[scores={MM_Test_Dash4=0..50}] hotbar.7 with coal[custom_model_data={strings:[bar200]}]
item replace entity @s[scores={MM_Test_Dash4=51..100}] hotbar.7 with coal[custom_model_data={strings:[bar201]}]
item replace entity @s[scores={MM_Test_Dash4=101..150}] hotbar.7 with coal[custom_model_data={strings:[bar202]}]
item replace entity @s[scores={MM_Test_Dash4=151..200}] hotbar.7 with coal[custom_model_data={strings:[bar203]}]
item replace entity @s[scores={MM_Test_Dash4=201..250}] hotbar.7 with coal[custom_model_data={strings:[bar204]}]
item replace entity @s[scores={MM_Test_Dash4=251..300}] hotbar.7 with coal[custom_model_data={strings:[bar205]}]
item replace entity @s[scores={MM_Test_Dash4=301..350}] hotbar.7 with coal[custom_model_data={strings:[bar206]}]
item replace entity @s[scores={MM_Test_Dash4=351..400}] hotbar.7 with coal[custom_model_data={strings:[bar207]}]
item replace entity @s[scores={MM_Test_Dash4=401..450}] hotbar.7 with coal[custom_model_data={strings:[bar208]}]
item replace entity @s[scores={MM_Test_Dash4=451..500}] hotbar.7 with coal[custom_model_data={strings:[bar209]}]
item replace entity @s[scores={MM_Test_Dash4=501..}] hotbar.7 with coal[custom_model_data={strings:[bar210]}]



#ASsassin Projectile
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Blue,tag=MM_Power1] positioned ~ ~-1 ~ run scoreboard players add @a[distance=..2,tag=MM_Red] MM_Damage 20
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Red,tag=MM_Power1] positioned ~ ~-1 ~ run scoreboard players add @a[distance=..2,tag=MM_Blue] MM_Damage 20
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Blue,tag=MM_Power2] positioned ~ ~-1 ~ run scoreboard players add @a[distance=..2,tag=MM_Red] MM_Damage 24
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Red,tag=MM_Power2] positioned ~ ~-1 ~ run scoreboard players add @a[distance=..2,tag=MM_Blue] MM_Damage 24
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Blue,tag=MM_Power3] positioned ~ ~-1 ~ run scoreboard players add @a[distance=..2,tag=MM_Red] MM_Damage 28
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Red,tag=MM_Power3] positioned ~ ~-1 ~ run scoreboard players add @a[distance=..2,tag=MM_Blue] MM_Damage 28
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Blue,tag=MM_Power4] positioned ~ ~-1 ~ run scoreboard players add @a[distance=..2,tag=MM_Red] MM_Damage 32
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Red,tag=MM_Power4] positioned ~ ~-1 ~ run scoreboard players add @a[distance=..2,tag=MM_Blue] MM_Damage 32
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Blue,tag=MM_Power5] positioned ~ ~-1 ~ run scoreboard players add @a[distance=..2,tag=MM_Red] MM_Damage 36
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Red,tag=MM_Power5] positioned ~ ~-1 ~ run scoreboard players add @a[distance=..2,tag=MM_Blue] MM_Damage 36
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Blue,tag=MM_Power6] positioned ~ ~-1 ~ run scoreboard players add @a[distance=..2,tag=MM_Red] MM_Damage 40
execute at @e[type=item_display,tag=MM_Dash_Test,tag=MM_Red,tag=MM_Power6] positioned ~ ~-1 ~ run scoreboard players add @a[distance=..2,tag=MM_Blue] MM_Damage 40
scoreboard players add @e[type=item_display,tag=MM_Dash_Test] MM_Test_Dash 1
execute as @e[type=item_display,tag=MM_Dash_Test,tag=MM_Power1] at @s run tp @s ^ ^ ^-0.1
execute as @e[type=item_display,tag=MM_Dash_Test,tag=MM_Power2] at @s run tp @s ^ ^ ^-0.2
execute as @e[type=item_display,tag=MM_Dash_Test,tag=MM_Power3] at @s run tp @s ^ ^ ^-0.3
execute as @e[type=item_display,tag=MM_Dash_Test,tag=MM_Power4] at @s run tp @s ^ ^ ^-0.4
execute as @e[type=item_display,tag=MM_Dash_Test,tag=MM_Power5] at @s run tp @s ^ ^ ^-0.5
execute as @e[type=item_display,tag=MM_Dash_Test,tag=MM_Power6] at @s run tp @s ^ ^ ^-0.6
kill @e[type=item_display,tag=MM_Dash_Test,scores={MM_Test_Dash=5..}]
