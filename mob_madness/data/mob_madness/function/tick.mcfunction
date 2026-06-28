scoreboard players remove @a[scores={MAIN_Game=9},tag=MM_Class_Polar_Bear] MM_Polar_Cooldown 1
scoreboard players set @a[scores={MAIN_Game=9,MM_Polar_Cooldown=..-1},tag=MM_Class_Polar_Bear] MM_Polar_Cooldown 0

#Run your class
execute as @a[tag=MM_Class_Assassin] run function mob_madness:classes/assassin/tick
execute as @a[tag=MM_Class_Chicken] run function mob_madness:classes/chicken/tick


#Heal one self
effect clear @a regeneration
effect give @a[scores={MM_Health=5..}] regeneration 1 255 true
scoreboard players remove @a[scores={MM_Health=5..}] MM_Health 5



#remove defense every tick cuz i am dumb
scoreboard players set @a MM_Defense 0

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


#Chicken projectile
scoreboard players add @e[type=armor_stand,tag=MM_Chicken_Ride] MM_Chicken_Song 1
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=200..}] run tp @s 0 -1000 0
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=200..}] run kill @n[type=item_display,tag=MM_Chicken_Egg]
kill @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=200..}]
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199}] at @s run tp @s ^ ^ ^-0.3
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199}] at @s unless block ~ ~1.2 ~ air run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s run damage @p[tag=MM_Red,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s if entity @p[tag=MM_Red,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s run damage @p[tag=MM_Blue,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s if entity @p[tag=MM_Blue,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s positioned ~ ~1 ~ run damage @p[tag=MM_Red,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s positioned ~ ~1 ~ if entity @p[tag=MM_Red,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s positioned ~ ~1 ~ run damage @p[tag=MM_Blue,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s positioned ~ ~1 ~ if entity @p[tag=MM_Blue,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199}] at @s run tp @s ^ ^ ^-0.3
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199}] at @s unless block ~ ~1.2 ~ air run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s run damage @p[tag=MM_Red,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s if entity @p[tag=MM_Red,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s run damage @p[tag=MM_Blue,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s if entity @p[tag=MM_Blue,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s positioned ~ ~1 ~ run damage @p[tag=MM_Red,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s positioned ~ ~1 ~ if entity @p[tag=MM_Red,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s positioned ~ ~1 ~ run damage @p[tag=MM_Blue,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s positioned ~ ~1 ~ if entity @p[tag=MM_Blue,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199}] at @s run tp @s ^ ^ ^-0.3
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199}] at @s unless block ~ ~1.2 ~ air run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s run damage @p[tag=MM_Red,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s if entity @p[tag=MM_Red,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s run damage @p[tag=MM_Blue,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s if entity @p[tag=MM_Blue,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s positioned ~ ~1 ~ run damage @p[tag=MM_Red,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s positioned ~ ~1 ~ if entity @p[tag=MM_Red,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s positioned ~ ~1 ~ run damage @p[tag=MM_Blue,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s positioned ~ ~1 ~ if entity @p[tag=MM_Blue,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199}] at @s run tp @s ^ ^ ^-0.3
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199}] at @s unless block ~ ~1.2 ~ air run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s run damage @p[tag=MM_Red,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s if entity @p[tag=MM_Red,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s run damage @p[tag=MM_Blue,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s if entity @p[tag=MM_Blue,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s positioned ~ ~1 ~ run damage @p[tag=MM_Red,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s positioned ~ ~1 ~ if entity @p[tag=MM_Red,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s positioned ~ ~1 ~ run damage @p[tag=MM_Blue,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s positioned ~ ~1 ~ if entity @p[tag=MM_Blue,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199}] at @s run tp @s ^ ^ ^-0.3
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199}] at @s unless block ~ ~1.2 ~ air run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s run damage @p[tag=MM_Red,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s if entity @p[tag=MM_Red,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s run damage @p[tag=MM_Blue,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s if entity @p[tag=MM_Blue,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s positioned ~ ~1 ~ run damage @p[tag=MM_Red,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s positioned ~ ~1 ~ if entity @p[tag=MM_Red,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s positioned ~ ~1 ~ run damage @p[tag=MM_Blue,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s positioned ~ ~1 ~ if entity @p[tag=MM_Blue,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199}] at @s run tp @s ^ ^ ^-0.3
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199}] at @s unless block ~ ~1.2 ~ air run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s run damage @p[tag=MM_Red,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s if entity @p[tag=MM_Red,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s run damage @p[tag=MM_Blue,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s if entity @p[tag=MM_Blue,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s positioned ~ ~1 ~ run damage @p[tag=MM_Red,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s positioned ~ ~1 ~ if entity @p[tag=MM_Red,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s positioned ~ ~1 ~ run damage @p[tag=MM_Blue,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s positioned ~ ~1 ~ if entity @p[tag=MM_Blue,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199}] at @s run tp @s ^ ^ ^-0.3
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199}] at @s unless block ~ ~1.2 ~ air run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s run damage @p[tag=MM_Red,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s if entity @p[tag=MM_Red,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s run damage @p[tag=MM_Blue,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s if entity @p[tag=MM_Blue,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s positioned ~ ~1 ~ run damage @p[tag=MM_Red,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Blue] at @s positioned ~ ~1 ~ if entity @p[tag=MM_Red,distance=..1] run scoreboard players set @s MM_Chicken_Song 200
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s positioned ~ ~1 ~ run damage @p[tag=MM_Blue,distance=..1] 4 generic
execute as @e[type=armor_stand,tag=MM_Chicken_Ride,scores={MM_Chicken_Song=..199},tag=MM_Red] at @s positioned ~ ~1 ~ if entity @p[tag=MM_Blue,distance=..1] run scoreboard players set @s MM_Chicken_Song 200


#Chicken heal
execute if score MAIN_2t MAIN_Time matches 1 run execute as @a[tag=MM_Blue] at @s if entity @a[tag=MM_Class_Chicken,tag=MM_Blue,scores={MM_Chicken_Heal=1..,MM_Chicken_Song=1..,MM_Chicken_Song_Type=3},distance=..5] run scoreboard players add @s MM_Health 1
execute if score MAIN_2t MAIN_Time matches 1 run execute as @a[tag=MM_Red] at @s if entity @a[tag=MM_Class_Chicken,tag=MM_Red,scores={MM_Chicken_Heal=1..,MM_Chicken_Song=1..,MM_Chicken_Song_Type=3},distance=..5] run scoreboard players add @s MM_Health 1
execute if score MAIN_2t MAIN_Time matches 1 run scoreboard players remove @a[tag=MM_Class_Chicken,scores={MM_Chicken_Song=1..,MM_Chicken_Song_Type=3,MM_Health=1..}] MM_Chicken_Heal 1
tag @a[scores={MM_Chicken_Song=0}] remove MM_Chicken_Song_Regen

#Chicken defense
execute as @a[tag=MM_Blue] at @s if entity @a[tag=MM_Class_Chicken,tag=MM_Blue,scores={MM_Chicken_Song=1..,MM_Chicken_Song_Type=1},distance=..5] run scoreboard players add @s MM_Defense 30
execute as @a[tag=MM_Red] at @s if entity @a[tag=MM_Class_Chicken,tag=MM_Red,scores={MM_Chicken_Song=1..,MM_Chicken_Song_Type=1},distance=..5] run scoreboard players add @s MM_Defense 30



#damage players
execute as @a[scores={MM_Damage=5..}] run function mob_madness:main/damage




#Ice block
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=1}] at @s run summon item_display ~ ~ ~ {width:2f,height:4f,item:{id:"minecraft:ice",count:1}}
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=1}] at @s run data modify entity @n[type=minecraft:item_display] transformation.scale[0] set value 3f
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=1}] at @s run data modify entity @n[type=minecraft:item_display] transformation.scale[2] set value 3f
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=1}] at @s run data modify entity @n[type=minecraft:item_display] transformation.scale[1] set value 0.5f
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=2}] at @s run data modify entity @n[type=minecraft:item_display] transformation.scale[1] set value 1f
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=3}] at @s run data modify entity @n[type=minecraft:item_display] transformation.scale[1] set value 1.5f
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=4}] at @s run data modify entity @n[type=minecraft:item_display] transformation.scale[1] set value 2f
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=5}] at @s run data modify entity @n[type=minecraft:item_display] transformation.scale[1] set value 2.5f
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=6}] at @s run data modify entity @n[type=minecraft:item_display] transformation.scale[1] set value 3f



execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=17}] at @s run data modify entity @n[type=minecraft:item_display] transformation.scale[1] set value 0.5f
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=16}] at @s run data modify entity @n[type=minecraft:item_display] transformation.scale[1] set value 1f
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=15}] at @s run data modify entity @n[type=minecraft:item_display] transformation.scale[1] set value 1.5f
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=14}] at @s run data modify entity @n[type=minecraft:item_display] transformation.scale[1] set value 2f
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=13}] at @s run data modify entity @n[type=minecraft:item_display] transformation.scale[1] set value 2.5f
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=12}] at @s run data modify entity @n[type=minecraft:item_display] transformation.scale[1] set value 3f

execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=18}] at @s run kill @n[type=item_display]
kill @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=18}]

scoreboard players add @e[type=armor_stand,tag=MM_Ice] MM_Ice 1

#make the next one
scoreboard players add @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=2}] MM_Ice_Chain 1
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=3,MM_Ice_Chain=..100}] at @s run scoreboard players operation @n[type=armor_stand,tag=MM_Ice,scores={MM_Ice=1}] MM_Ice_Chain = @s MM_Ice_Chain
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=2,MM_Ice_Chain=..100}] at @s run summon armor_stand ~ ~ ~ {Tags:[MM_Ice,MM_Ice_Spawn],Invisible:1b,NoGravity:1b}
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=2,MM_Ice_Chain=..100}] at @s run tp @n[type=armor_stand,tag=MM_Ice,tag=MM_Ice_Spawn] ~ ~ ~ ~ 0


execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=2,MM_Ice_Chain=..100,MM_Ice_State=0}] at @s if block ~ ~-1 ~ air run tp @n[type=armor_stand,tag=MM_Ice,tag=MM_Ice_Spawn] ~ ~-1 ~
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=2,MM_Ice_Chain=..100,MM_Ice_State=0}] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air run tp @n[type=armor_stand,tag=MM_Ice,tag=MM_Ice_Spawn] ~ ~-1 ~
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=2,MM_Ice_Chain=..100,MM_Ice_State=0}] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air run tp @n[type=armor_stand,tag=MM_Ice,tag=MM_Ice_Spawn] ~ ~-1 ~
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=2,MM_Ice_Chain=..100,MM_Ice_State=0}] at @s if block ~ ~-1 ~ air run scoreboard players set @n[sort=nearest,tag=MM_Ice_Spawn] MM_Ice_State 0
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=2,MM_Ice_Chain=..100,MM_Ice_State=0}] at @s if block ~ ~-1 ~ air run tag @e remove MM_Ice_Spawn


execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=2,MM_Ice_Chain=..100}] at @s if block ^ ^ ^1 air run tp @n[type=armor_stand,tag=MM_Ice,tag=MM_Ice_Spawn] ^ ^ ^1
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=2,MM_Ice_Chain=..100}] at @s if block ^ ^ ^1 air if block ^ ^ ^2 air run tp @n[type=armor_stand,tag=MM_Ice,tag=MM_Ice_Spawn] ^ ^ ^2
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=2,MM_Ice_Chain=..100}] at @s if block ^ ^ ^1 air if block ^ ^ ^2 air if block ^ ^ ^3 air run tp @n[type=armor_stand,tag=MM_Ice,tag=MM_Ice_Spawn] ^ ^ ^3
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=2,MM_Ice_Chain=..100}] at @s if block ^ ^ ^3 air if block ^ ^ ^2 air if block ^ ^ ^3 air run scoreboard players set @n[sort=nearest,tag=MM_Ice_Spawn] MM_Ice_State 0
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=2,MM_Ice_Chain=..100}] at @s if block ^ ^ ^1 air if block ^ ^ ^2 air if block ^ ^ ^3 air run tag @e remove MM_Ice_Spawn


execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=2,MM_Ice_Chain=..100}] at @s if block ~ ~1 ~ air if block ~ ~2 ~ air if block ~ ~3 ~ air run tp @n[type=armor_stand,tag=MM_Ice,tag=MM_Ice_Spawn] ~ ~3 ~
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=2,MM_Ice_Chain=..100}] at @s if block ~ ~1 ~ air if block ~ ~2 ~ air if block ~ ~3 ~ air run scoreboard players set @n[sort=nearest,tag=MM_Ice_Spawn] MM_Ice_State 1
execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=2,MM_Ice_Chain=..100}] at @s if block ~ ~1 ~ air if block ~ ~2 ~ air if block ~ ~3 ~ air run tag @e remove MM_Ice_Spawn


execute as @e[type=armor_stand,tag=MM_Ice,scores={MM_Ice=2,MM_Ice_Chain=..100}] at @s run kill @e[type=armor_stand,tag=MM_Ice_Spawn]




#Ice Pinball
scoreboard players add @e[type=item_display,tag=MM_Ice_Pinball] MM_Ice 1
kill @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=15}]
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=2}] at @s run data modify entity @s Motion[1] set from entity @n[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=5}] Motion[1]
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=2}] at @s if entity @n[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=5},tag=MM_Ice_Pinball_Invert] store result entity @s Motion[1] double -1 run data get entity @s Motion[1]
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=3,MM_Ice_Chain=..15}] run function mob_madness:classes/polar_bear/bounce/another

#Now it must look good
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=1}] run data modify entity @s transformation.scale[0] set value 0.5
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=2}] run data modify entity @s transformation.scale[0] set value 1
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=3}] run data modify entity @s transformation.scale[0] set value 1.5
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=4}] run data modify entity @s transformation.scale[0] set value 2
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=5}] run data modify entity @s transformation.scale[0] set value 2.5
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=1}] run data modify entity @s transformation.scale[1] set value 0.5
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=2}] run data modify entity @s transformation.scale[1] set value 1
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=3}] run data modify entity @s transformation.scale[1] set value 1.5
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=4}] run data modify entity @s transformation.scale[1] set value 2
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=5}] run data modify entity @s transformation.scale[1] set value 2.5
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=1}] run data modify entity @s transformation.scale[2] set value 0.5
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=2}] run data modify entity @s transformation.scale[2] set value 1
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=3}] run data modify entity @s transformation.scale[2] set value 1.5
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=4}] run data modify entity @s transformation.scale[2] set value 2
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=5}] run data modify entity @s transformation.scale[2] set value 2.5

execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=14}] run data modify entity @s transformation.scale[0] set value 0.5
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=13}] run data modify entity @s transformation.scale[0] set value 1
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=12}] run data modify entity @s transformation.scale[0] set value 1.5
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=11}] run data modify entity @s transformation.scale[0] set value 2
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=10}] run data modify entity @s transformation.scale[0] set value 2.5
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=14}] run data modify entity @s transformation.scale[1] set value 0.5
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=13}] run data modify entity @s transformation.scale[1] set value 1
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=12}] run data modify entity @s transformation.scale[1] set value 1.5
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=11}] run data modify entity @s transformation.scale[1] set value 2
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=10}] run data modify entity @s transformation.scale[1] set value 2.5
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=14}] run data modify entity @s transformation.scale[2] set value 0.5
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=13}] run data modify entity @s transformation.scale[2] set value 1
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=12}] run data modify entity @s transformation.scale[2] set value 1.5
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=11}] run data modify entity @s transformation.scale[2] set value 2
execute as @e[type=item_display,tag=MM_Ice_Pinball,scores={MM_Ice=10}] run data modify entity @s transformation.scale[2] set value 2.5



#Joingame
execute as @a[scores={MAIN_Game=9,MM_Joingame=1..}] run function mob_madness:joingame


#clear
execute at @e[type=marker,limit=1,tag=MM_Clear] run function mob_madness:clear