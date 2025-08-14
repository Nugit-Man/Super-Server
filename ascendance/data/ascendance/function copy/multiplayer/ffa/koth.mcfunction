execute if score $Config Mode matches 0 run tag @a[scores={Score=25..}] add winner
execute if score $Config Mode matches 1 run tag @a[scores={Score=50..}] add winner
execute if score $Config Mode matches 2 run tag @a[scores={Score=100..}] add winner
execute if score $Config Mode matches 3 run tag @a[scores={Score=150..}] add winner


execute as @a[tag=winner] run function ascendance:multiplayer/ffa/end
execute as @a[tag=winner] run schedule clear ascendance:multiplayer/ffa/crown
execute as @a[tag=winner] run kill @e[tag=koth]

#advancements
advancement grant @a[scores={Kills=0},tag=winner] only ascendance:ascendance/large_incline
advancement grant @a[scores={Kills=10..,Score=0}] only ascendance:ascendance/i_thought_it_was_deathmatch