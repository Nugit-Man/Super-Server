#run a thing depending on the team count
execute if score $Team Mode matches 1 run function ascendance:multiplayer/ffa/load
execute if score $Team Mode matches 2 run function ascendance:multiplayer/2team/load

#killstreak and custom death messages
scoreboard objectives add Killstreak playerKillCount
scoreboard objectives add Killmessages playerKillCount
scoreboard objectives add Deathmessages deathCount
scoreboard objectives add Dotakills playerKillCount
scoreboard objectives add Multikill dummy

#there is no up here advancement
scoreboard objectives add Jumps minecraft.custom:jump

#Tag the current "Players" for spawing
tag @a[team=Red] add player
tag @a[team=Blue] add player

#modifyers
execute if score U_Shield Unlocks matches 2 run item replace entity @a[tag=player] weapon.offhand with shield[unbreakable={}]
execute if score U_Fall Unlocks matches 2 run gamerule fallDamage true
execute if score U_Mayhem Unlocks matches 2 run schedule function ascendance:multiplayer/mayhem 3s
execute if score U_Ammo Unlocks matches 2 run schedule function ascendance:multiplayer/ammo 3s
execute if score U_Team_Attack Unlocks matches 2 run team modify Red friendlyFire true
execute if score U_Team_Attack Unlocks matches 2 run team modify Blue friendlyFire true