tag @e[tag=Shipment] add spawn
execute at @a run tag @e[distance=..15] remove spawn
execute at @e[tag=spawn,type=armor_stand,limit=1,sort=random] run spawnpoint @r[tag=player] ~ ~3 ~