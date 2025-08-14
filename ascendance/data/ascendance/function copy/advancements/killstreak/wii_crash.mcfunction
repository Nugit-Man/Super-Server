advancement revoke @s only ascendance:killstreak/wii_crash
tag @r add wii_crash
effect give @a[tag=wii_crash] blindness 10
effect give @a[tag=wii_crash] slowness 10
effect give @a[tag=wii_crash] nausea 10
execute as @a run playsound minecraft:custom.wii_crash master @a
tag @a remove wii_crash
clear @s baked_potato 1