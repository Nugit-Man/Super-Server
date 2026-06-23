execute at @s[tag=MM_Blue] anchored eyes run summon armor_stand ^ ^ ^1 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["MM_Chicken_New","MM_Chicken_Ride","MM_Blue"],Passengers:[{id:"minecraft:item_display",Tags:["MM_Chicken_Egg","MM_Chicken_New","MM_Blue"],item:{id:"minecraft:egg",count:1}}]}
execute at @s[tag=MM_Red] run summon armor_stand ^ ^ ^1 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["MM_Chicken_New","MM_Chicken_Ride","MM_Red"],Passengers:[{id:"minecraft:item_display",Tags:["MM_Chicken_Egg","MM_Chicken_New","MM_Red"],item:{id:"minecraft:egg",count:1}}]}
#summon armor_stand ^ ^ ^1 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["MM_Chicken_New","MM_Chicken_Ride"]}
#execute as @n[type=armor_stand,tag=MM_Chicken_New] at @s run tp @s ~ ~1.62 ~

#ride @n[type=minecraft:item_display,tag=MM_Chicken_New] mount @n[type=armor_stand,tag=MM_Chicken_New]


rotate @n[type=armor_stand,tag=MM_Chicken_New] facing entity @s feet
rotate @n[type=item_display,tag=MM_Chicken_New] facing entity @s eyes



tag @e[type=item_display,tag=MM_Chicken_Egg,tag=MM_Chicken_New] remove MM_Chicken_New
tag @e[type=armor_stand,tag=MM_Chicken_Ride,tag=MM_Chicken_New] remove MM_Chicken_New

scoreboard players remove @s MM_Chicken_Song_Bar 10
scoreboard players set @s MM_Chicken_Song_Bar_Cooldown 10
scoreboard players set @s MM_Chicken_Main_Cooldown 10

playsound minecraft:entity.egg.throw master @a ~ ~ ~ 100 0