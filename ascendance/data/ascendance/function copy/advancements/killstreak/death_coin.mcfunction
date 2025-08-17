advancement revoke @s only ascendance:killstreak/death_coin
clear @s bamboo_sign 1
tag @s add Coin
playsound custom.coin master @a[tag=player]
execute as @a[tag=player] run execute store result score @s Num run random value 1..2
execute as @s[team=Red] run scoreboard players set @a[team=Red] Num 0
execute as @s[team=Blue] run scoreboard players set @a[team=Blue] Num 0
kill @a[scores={Num=1},tag=!Coin]
execute as @a[scores={Num=1},tag=!Coin] run scoreboard players add @a[tag=Coin] Kills 1
execute as @a[scores={Num=1},tag=!Coin] run scoreboard players add @a[tag=Coin] Killmessages 1
execute as @a[scores={Num=1},tag=!Coin] run scoreboard players add @a[tag=Coin] Killstreak 1
execute as @a[scores={Num=1},tag=!Coin] run scoreboard players add @a[tag=Coin] Total_Kills 1
tag @s remove Coin