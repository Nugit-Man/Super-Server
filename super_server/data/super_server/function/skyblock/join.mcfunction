execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=1}] in minecraft:overworld run tp @s -512 192 -451
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=1}] in minecraft:overworld run spawnpoint @s -512 192 -451
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=1}] run tag @s remove Main_Join_Skyblock
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=2}] in minecraft:overworld run tp @s 610 -31 92
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=2}] in minecraft:overworld run spawnpoint @s 610 -31 92
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=2}] run tag @s remove Main_Join_Skyblock
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=3}] in minecraft:overworld run tp @s -254 248 -188
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=3}] in minecraft:overworld run spawnpoint @s -254 248 -188
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=3}] run tag @s remove Main_Join_Skyblock
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=4}] in minecraft:overworld run tp @s 261 130 -227
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=4}] in minecraft:overworld run spawnpoint @s 261 130 -227
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=4}] run tag @s remove Main_Join_Skyblock
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=5}] in minecraft:overworld run tp @s 62 -27 307
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=5}] in minecraft:overworld run spawnpoint @s 62 -27 307
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=5}] run tag @s remove Main_Join_Skyblock
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=6}] in minecraft:overworld run tp @s -381 20 -671
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=6}] in minecraft:overworld run spawnpoint @s -381 20 -671
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=6}] run tag @s remove Main_Join_Skyblock
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=7}] in minecraft:overworld run tp @s -681 104 -712
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=7}] in minecraft:overworld run spawnpoint @s -681 104 -712
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=7}] run tag @s remove Main_Join_Skyblock
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=8}] in minecraft:overworld run tp @s -582 219 -404
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=8}] in minecraft:overworld run spawnpoint @s -582 219 -404
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=8}] run tag @s remove Main_Join_Skyblock
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=9}] in minecraft:overworld run tp @s -423 261 -513
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=9}] in minecraft:overworld run spawnpoint @s -423 261 -513
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=9}] run tag @s remove Main_Join_Skyblock
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=10}] in minecraft:overworld run tp @s -176 46 630
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=10}] in minecraft:overworld run spawnpoint @s -176 46 630
execute as @a[tag=Main_Join_Skyblock,scores={MAIN_Skyblock_Players=10}] run tag @s remove Main_Join_Skyblock

execute if score $Players MAIN_Skyblock_Players matches 10 run tellraw @a[tag=Main_Join_Skyblock] {color:"red",text:"Sorry, There are no availible islands. Go pester Nugit to add one for you."}
execute if score $Players MAIN_Skyblock_Players matches 10 run tag @a[tag=Main_Join_Skyblock] remove Main_Join_Skyblock

execute if score $Players MAIN_Skyblock_Players matches ..9 run scoreboard players operation @r[tag=Main_Join_Skyblock] MAIN_Skyblock_Players = $Players MAIN_Skyblock_Players
execute if score $Players MAIN_Skyblock_Players matches ..9 run execute as @r[tag=Main_Join_Skyblock] run scoreboard players add @s MAIN_Skyblock_Players 1
execute if score $Players MAIN_Skyblock_Players matches ..9 run execute as @r[tag=Main_Join_Skyblock] run scoreboard players add $Players MAIN_Skyblock_Players 1
