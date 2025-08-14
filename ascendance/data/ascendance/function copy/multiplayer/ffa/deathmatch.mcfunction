execute if score $Config Mode matches 0 run tag @a[scores={Kills=5..}] add winner
execute if score $Config Mode matches 1 run tag @a[scores={Kills=10..}] add winner
execute if score $Config Mode matches 2 run tag @a[scores={Kills=25..}] add winner
execute if score $Config Mode matches 3 run tag @a[scores={Kills=40..}] add winner

execute as @a[tag=winner] run function ascendance:multiplayer/ffa/end

#advancement
advancement grant @a[scores={Deaths=50..}] only ascendance:ascendance/not_that_kind_of_deathmatch