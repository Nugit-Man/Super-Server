advancement revoke @s only ascendance:killstreak/lightning
clear @s lightning_rod 1
summon lightning_bolt ~5 ~-50 ~-5
summon lightning_bolt ~ ~-50 ~-5
summon lightning_bolt ~-5 ~-50 ~-5
summon lightning_bolt ~5 ~-50 ~
summon lightning_bolt ~-5 ~-50 ~
summon lightning_bolt ~5 ~-50 ~5
summon lightning_bolt ~-5 ~-50 ~5
summon lightning_bolt ~ ~-50 ~5
tag @s add lightning
execute at @s run tag @a[distance=..10,tag=!lightning] add Struck
execute as @s[team=Red] run tag @a[team=Red] remove Struck
execute as @s[team=Blue] run tag @a[team=Blue] remove Struck
kill @a[tag=Struck]
execute as @a[tag=Struck] run scoreboard players add @a[tag=lightning] Killmessages 1
execute as @a[tag=Struck] run scoreboard players add @a[tag=lightning] Kills 1
execute as @a[tag=Struck] run scoreboard players add @a[tag=lightning] Killstreak 1
execute as @a[tag=Struck] run scoreboard players add @a[tag=lightning] Total_Kills 1
tag @s remove lightning
tag @a remove Struck