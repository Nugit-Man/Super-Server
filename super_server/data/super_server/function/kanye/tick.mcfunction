function super_server:kanye/chase
execute if score MAIN_1s MAIN_Time matches 1 run execute as @e[type=minecraft:wandering_trader,tag=Kanye] at @s run rotate @s facing entity @p[nbt={Dimension:"super_server:kanye"}]
#xecute if score MAIN_1s MAIN_Time matches 1 run execute as @e[type=minecraft:wandering_trader,tag=Kanye] at @s run tp @s ^ ^ ^1
#xecute if score MAIN_1s MAIN_Time matches 1 run execute as @e[type=minecraft:wandering_trader,tag=Kanye] at @s unless block ~ ~ ~ air run tp @s ^ ^ ^1



execute if score MAIN_10s MAIN_Time matches 1 at @e[type=minecraft:wandering_trader,tag=Kanye] run execute as @a[nbt={Dimension:"super_server:kanye"},distance=..10] at @s run playsound minecraft:main.lights master @s ~ ~ ~ 1
execute if score MAIN_10s MAIN_Time matches 1 at @e[type=minecraft:wandering_trader,tag=Kanye] run execute as @a[nbt={Dimension:"super_server:kanye"},distance=10..20] at @s run playsound minecraft:main.lights master @s ~ ~ ~ .75
execute if score MAIN_10s MAIN_Time matches 1 at @e[type=minecraft:wandering_trader,tag=Kanye] run execute as @a[nbt={Dimension:"super_server:kanye"},distance=20..30] at @s run playsound minecraft:main.lights master @s ~ ~ ~ .50
execute if score MAIN_10s MAIN_Time matches 1 at @e[type=minecraft:wandering_trader,tag=Kanye] run execute as @a[nbt={Dimension:"super_server:kanye"},distance=30..40] at @s run playsound minecraft:main.lights master @s ~ ~ ~ .25
execute if score MAIN_10s MAIN_Time matches 1 at @e[type=minecraft:wandering_trader,tag=Kanye] run execute as @a[nbt={Dimension:"super_server:kanye"},distance=40..] at @s run playsound minecraft:main.lights master @s ~ ~ ~ .1

effect give @a[scores={MAIN_Game=8}] speed infinite 1 true
effect give @a[scores={MAIN_Game=8}] saturation infinite 1 true






execute at @e[type=minecraft:wandering_trader,tag=Kanye] run kill @a[distance=..2]

rotate @n[type=minecraft:item_display,tag=Kanye] facing entity @p
execute as @n[type=minecraft:item_display,tag=Kanye] at @s run tp @s ~ ~ ~ ~ 0

execute as @e[type=item_display,tag=Kanye] at @e[type=minecraft:wandering_trader,limit=1,sort=nearest] rotated as @s run tp @s ~ ~2 ~ ~ 0