tag @e[tag=The_Cube] add spawn
execute at @e[tag=spawn,type=armor_stand,limit=1,sort=random] run spawnpoint @r[tag=player] ~ ~-51 ~
effect give @a night_vision infinite 0 true