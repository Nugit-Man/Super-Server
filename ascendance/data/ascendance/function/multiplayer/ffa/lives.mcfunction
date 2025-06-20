scoreboard players remove @a[scores={Deathmessages=1..},tag=player] Lives 1
gamemode spectator @a[scores={Lives=0},tag=player]

#Count players
scoreboard players set $Count Mode 0
execute as @a[tag=player,scores={Lives=1..}] run scoreboard players add $Count Mode 1
execute if score $Count Mode matches 1 run tag @a[tag=player,scores={Lives=1..}] add winner


execute as @a[tag=winner] run function ascendance:multiplayer/ffa/end