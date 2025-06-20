execute if score $Config Mode matches 0 run tag @a[scores={Score=25..}] add winner
execute if score $Config Mode matches 1 run tag @a[scores={Score=50..}] add winner
execute if score $Config Mode matches 2 run tag @a[scores={Score=100..}] add winner
execute if score $Config Mode matches 3 run tag @a[scores={Score=150..}] add winner

item replace entity @a[tag=!Crown] armor.head with minecraft:air
item replace entity @a[tag=Crown] armor.head with minecraft:golden_helmet
effect give @a[tag=Crown] minecraft:glowing 5 0 true


tag @a[tag=winner] remove Crown
execute as @a[tag=winner] run function ascendance:multiplayer/ffa/end
execute as @a[tag=winner] run schedule clear ascendance:multiplayer/ffa/crown

#advancement
advancement grant @a[scores={Kills=50..}] only ascendance:ascendance/off_with_his_head