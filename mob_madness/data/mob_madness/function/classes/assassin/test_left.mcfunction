execute at @s[tag=MM_Blue,scores={MM_Test_Dash4=..99}] anchored eyes run summon item_display ^ ^ ^2 {Tags:[MM_Dash_Test,MM_Test_New,MM_Blue,MM_Power1],item:{id:"minecraft:dead_tube_coral",count:1}}
execute at @s[tag=MM_Red,scores={MM_Test_Dash4=..99}] anchored eyes run summon item_display ^ ^ ^2 {Tags:[MM_Dash_Test,MM_Test_New,MM_Red,MM_Power1],item:{id:"minecraft:dead_tube_coral",count:1}}
execute at @s[tag=MM_Blue,scores={MM_Test_Dash4=100..199}] anchored eyes run summon item_display ^ ^ ^2 {Tags:[MM_Dash_Test,MM_Test_New,MM_Blue,MM_Power2],item:{id:"minecraft:dead_tube_coral",count:1}}
execute at @s[tag=MM_Red,scores={MM_Test_Dash4=100..199}] anchored eyes run summon item_display ^ ^ ^2 {Tags:[MM_Dash_Test,MM_Test_New,MM_Red,MM_Power2],item:{id:"minecraft:dead_tube_coral",count:1}}
execute at @s[tag=MM_Blue,scores={MM_Test_Dash4=200..299}] anchored eyes run summon item_display ^ ^ ^2 {Tags:[MM_Dash_Test,MM_Test_New,MM_Blue,MM_Power3],item:{id:"minecraft:dead_tube_coral",count:1}}
execute at @s[tag=MM_Red,scores={MM_Test_Dash4=299..299}] anchored eyes run summon item_display ^ ^ ^2 {Tags:[MM_Dash_Test,MM_Test_New,MM_Red,MM_Power3],item:{id:"minecraft:dead_tube_coral",count:1}}
execute at @s[tag=MM_Blue,scores={MM_Test_Dash4=300..399}] anchored eyes run summon item_display ^ ^ ^2 {Tags:[MM_Dash_Test,MM_Test_New,MM_Blue,MM_Power4],item:{id:"minecraft:dead_tube_coral",count:1}}
execute at @s[tag=MM_Red,scores={MM_Test_Dash4=300..399}] anchored eyes run summon item_display ^ ^ ^2 {Tags:[MM_Dash_Test,MM_Test_New,MM_Red,MM_Power4],item:{id:"minecraft:dead_tube_coral",count:1}}
execute at @s[tag=MM_Blue,scores={MM_Test_Dash4=400..499}] anchored eyes run summon item_display ^ ^ ^2 {Tags:[MM_Dash_Test,MM_Test_New,MM_Blue,MM_Power5],item:{id:"minecraft:dead_tube_coral",count:1}}
execute at @s[tag=MM_Red,scores={MM_Test_Dash4=400..499}] anchored eyes run summon item_display ^ ^ ^2 {Tags:[MM_Dash_Test,MM_Test_New,MM_Red,MM_Power5],item:{id:"minecraft:dead_tube_coral",count:1}}
execute at @s[tag=MM_Blue,scores={MM_Test_Dash4=500..}] anchored eyes run summon item_display ^ ^ ^2 {Tags:[MM_Dash_Test,MM_Test_New,MM_Blue,MM_Power6],item:{id:"minecraft:dead_tube_coral",count:1}}
execute at @s[tag=MM_Red,scores={MM_Test_Dash4=500..}] anchored eyes run summon item_display ^ ^ ^2 {Tags:[MM_Dash_Test,MM_Test_New,MM_Red,MM_Power6],item:{id:"minecraft:dead_tube_coral",count:1}}






rotate @n[type=item_display,tag=MM_Dash_Test,tag=MM_Test_New] facing entity @s
execute at @n[type=item_display,tag=MM_Dash_Test,tag=MM_Test_New] run tp @n[type=item_display,tag=MM_Dash_Test] ~ ~ ~ ~ 0
tag @e[type=item_display,tag=MM_Dash_Test,tag=MM_Test_New] remove MM_Test_New
scoreboard players set @s MM_Test_Dash3 20
scoreboard players set @s MM_Test_Dash4 0