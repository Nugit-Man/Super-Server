spawnpoint @a[tag=player] 38 25 37
tp @a[tag=player] 38 25 37
gamemode adventure @a[tag=player]
tag @e remove spawn


#Set Score
execute if score $Gamemode Mode matches 1 run scoreboard players set $Score Mode 1
execute if score $Gamemode Mode matches 2 run scoreboard players set $Score Mode 2
execute if score $Gamemode Mode matches 3 run scoreboard players set $Score Mode 2
execute if score $Gamemode Mode matches 4 run scoreboard players set $Score Mode 3
execute if score $Gamemode Mode matches 5 run scoreboard players set $Score Mode 4
execute if score $Gamemode Mode matches 6 run scoreboard players set $Score Mode 1





#Calculate winstreak
scoreboard players set @a[tag=!winner] Winstreak 0
scoreboard players add @a[tag=winner] Winstreak 1
execute as @a[tag=player] run scoreboard players operation @s Num = @s Winstreak
scoreboard players set $Score Num 1
execute as @a[tag=player] run scoreboard players operation @s Num -= $Score Num
scoreboard players set $Score Num 5
execute as @a[tag=player] run scoreboard players operation @s Num *= $Score Num
scoreboard players set @a[scores={Winstreak=..0}] Winstreak 0

###Postgame
scoreboard objectives add XP dummy
tellraw @a[tag=player] ["XP Earned:"]

#Deathmatch/Lives
execute as @a[tag=player] if score $Score Mode matches 1 run tellraw @s ["Kills (",{"score":{"objective":"Kills","name":"@s"}},"): +",{"score":{"objective":"Kills","name":"@s"}}," XP"]
execute if score $Score Mode matches 1 run tellraw @a[tag=winner] "Win: +5 XP"
execute as @a if score $Score Mode matches 1 run scoreboard players operation @s XP = @s Kills
execute if score $Score Mode matches 1 run scoreboard players add @a[tag=winner] XP 5

#kings Crown/Koth
execute if score $Score Mode matches 2 run scoreboard players set $Score Score 3
execute as @a[tag=player] if score $Score Mode matches 2 run scoreboard players operation @s XP = @s Kills
execute if score $Score Mode matches 2 run scoreboard players operation @a[tag=player] XP /= $Score Score
execute if score $Score Mode matches 2 run scoreboard players operation @a[tag=player] Score /= $Score Score
execute as @a[tag=player] if score $Score Mode matches 2 run tellraw @s ["Kills (",{"score":{"objective":"Kills","name":"@s"}},"): +",{"score":{"objective":"XP","name":"@s"}}," XP"]
execute as @a[tag=player] if score $Score Mode matches 2 run tellraw @s ["Score Bonus: +",{"score":{"objective":"Score","name":"@s"}},"XP"]
execute if score $Score Mode matches 2 run tellraw @a[tag=winner] "Win: +3 XP"
execute as @a[tag=player] if score $Score Mode matches 2 run scoreboard players operation @s XP += @s Score
execute if score $Score Mode matches 2 run scoreboard players add @a[tag=winner] XP 3


#Team Deathmatch
execute as @a[tag=player] if score $Score Mode matches 1 run tellraw @s ["Kills (",{"score":{"objective":"Kills","name":"@s"}},"): +",{"score":{"objective":"Kills","name":"@s"}}," XP"]
execute if score $Score Mode matches 3 run tellraw @a[tag=winner] "Win: +3 XP"
execute as @a if score $Score Mode matches 3 run scoreboard players operation @s XP = @s Kills
execute if score $Score Mode matches 3 run scoreboard players add @a[tag=winner] XP 3
execute if score $Score Mode matches 3 run scoreboard players set $highest Num 0
execute if score $Score Mode matches 3 run execute as @a if score @s[team=Red] Kills > $highest Num run scoreboard players operation $highest Num = @s Kills
execute if score $Score Mode matches 3 run execute as @a if score @s[team=Red] Kills = $highest Num run tellraw @s "MVP Bonus: +5 XP"
execute if score $Score Mode matches 3 run execute as @a if score @s[team=Red] Kills = $highest Num run scoreboard players add @s Score 5
execute if score $Score Mode matches 3 run execute as @a if score @s[team=Red] Kills = $highest Num run advancement grant @s only ascendance:ascendance/not_bad_right
execute if score $Score Mode matches 3 run execute as @a if score @s[team=Red] Kills = $highest Num run tellraw @a[team=Red] ["Team MVP: ",{"selector":"@s"}]
execute if score $Score Mode matches 3 run scoreboard players set $highest Num 0
execute if score $Score Mode matches 3 run execute as @a if score @s[team=Blue] Kills > $highest Num run scoreboard players operation $highest Num = @s Kills
execute if score $Score Mode matches 3 run execute as @a if score @s[team=Blue] Kills = $highest Num run tellraw @s "MVP Bonus: +5 XP"
execute if score $Score Mode matches 3 run execute as @a if score @s[team=Blue] Kills = $highest Num run scoreboard players add @s Score 5
execute if score $Score Mode matches 3 run execute as @a if score @s[team=Blue] Kills = $highest Num run advancement grant @s only ascendance:ascendance/not_bad_right
execute if score $Score Mode matches 3 run execute as @a if score @s[team=Blue] Kills = $highest Num run tellraw @a[team=Blue] ["Team MVP: ",{"selector":"@s"}]
execute if score $Score Mode matches 3 run scoreboard players set $highest Num 0


#CTF
execute if score $Score Mode matches 4 run scoreboard players set $Score Score 10
execute as @a if score $Score Mode matches 4 run scoreboard players operation @s XP = @s Kills
execute if score $Score Mode matches 4 run scoreboard players operation @a[tag=player] XP /= $Score Score
execute as @a[tag=player] if score $Score Mode matches 4 run tellraw @s ["Kills (",{"score":{"objective":"Kills","name":"@s"}},"): +",{"score":{"objective":"Kills","name":"@s"}}," XP"]
execute if score $Score Mode matches 4 run tellraw @a[tag=winner] "Win: +3 XP"
execute if score $Score Mode matches 4 run scoreboard players set $Score Score 5
execute if score $Score Mode matches 4 run execute as @a[tag=player] run scoreboard players operation @s Score = @s Caps
execute if score $Score Mode matches 4 run scoreboard players operation @a[tag=player] Score *= $Score Score
execute as @a[tag=player] if score $Score Mode matches 4 run tellraw @s ["Kills (",{"score":{"objective":"Caps","name":"@s"}},"): +",{"score":{"objective":"Score","name":"@s"}}," XP"]
execute if score $Score Mode matches 4 run execute as @a[tag=player] run scoreboard players operation @s XP += @s Score
execute if score $Score Mode matches 4 run execute as @a if score @s[team=Red] MVP > $highest Num run scoreboard players operation $highest Num = @s Kills
execute if score $Score Mode matches 4 run execute as @a if score @s[team=Red] MVP = $highest Num run tellraw @s "MVP Bonus: +5 XP"
execute if score $Score Mode matches 4 run execute as @a if score @s[team=Red] MVP = $highest Num run scoreboard players add @s Score 5
execute if score $Score Mode matches 4 run execute as @a if score @s[team=Red] MVP = $highest Num run advancement grant @s only ascendance:ascendance/not_bad_right
execute if score $Score Mode matches 4 run execute as @a if score @s[team=Red] MVP = $highest Num run tellraw @a[team=Red] ["Team MVP: ",{"selector":"@s"}]
execute if score $Score Mode matches 4 run scoreboard players set $highest Num 0
execute if score $Score Mode matches 4 run execute as @a if score @s[team=Blue] MVP > $highest Num run scoreboard players operation $highest Num = @s Kills
execute if score $Score Mode matches 4 run execute as @a if score @s[team=Blue] MVP = $highest Num run tellraw @s "MVP Bonus: +5 XP"
execute if score $Score Mode matches 4 run execute as @a if score @s[team=Blue] MVP = $highest Num run scoreboard players add @s Score 5
execute if score $Score Mode matches 4 run execute as @a if score @s[team=Blue] MVP = $highest Num run advancement grant @s only ascendance:ascendance/not_bad_right
execute if score $Score Mode matches 4 run execute as @a if score @s[team=Blue] MVP = $highest Num run tellraw @a[team=Blue] ["Team MVP: ",{"selector":"@s"}]
execute if score $Score Mode matches 4 run scoreboard players set $highest Num 0





#Winstreak bonus
execute as @a[scores={Winstreak=1..}] run tellraw @s ["Winstreak Bonus: +",{"score":{"objective":"Num","name":"@s"}},"XP"]
execute as @a[scores={Winstreak=1..}] run scoreboard players operation @s XP += @s Num

#Bonus XP
execute as @a[tag=player] run tellraw @s ["Bonus XP: +",{"score":{"objective":"BonusXP","name":"@s"}},"XP"]
execute as @a[tag=player] run scoreboard players operation @s XP += @s BonusXP
scoreboard players set @a BonusXP 0
execute as @a[tag=player] run tellraw @s ["Total XP: ",{"score":{"objective":"XP","name":"@s"}},"XP"]
function ascendance:multiplayer/xp






schedule clear ascendance:multiplayer/mayhem
schedule clear ascendance:multiplayer/killstreak
schedule clear ascendance:multiplayer/ammo

#track wins and give advancements
scoreboard players add @a[tag=winner] Total_Wins 1
advancement grant @a[scores={Total_Wins=10}] only ascendance:milestones/good_at_this_game
advancement grant @a[scores={Total_Wins=25}] only ascendance:milestones/really_good_at_this_game
advancement grant @a[scores={Total_Wins=50}] only ascendance:milestones/really_really_good_at_this_game
advancement grant @a[scores={Total_Wins=100}] only ascendance:milestones/amazing_at_this_game
advancement grant @a[scores={Total_Wins=250}] only ascendance:milestones/really_amazing_at_this_game
advancement grant @a[scores={Winstreak=3..}] only ascendance:ascendance/chicken_dinner
execute as @a[tag=winner] run advancement grant @s[tag=Champion] only ascendance:ascendance/colosium_champion
execute if score $Gamemode Mode matches 1 run advancement grant @a[scores={Deaths=0}] only ascendance:ascendance/did_i_win

#Wheres my team advancement
execute if score $Config Mode matches 1 run execute if score $Gamemode Mode matches 4 run advancement grant @a[scores={Kills=4..}] only ascendance:ascendance/wheres_my_team
execute if score $Config Mode matches 2 run execute if score $Gamemode Mode matches 4 run advancement grant @a[scores={Kills=7..}] only ascendance:ascendance/wheres_my_team
execute if score $Config Mode matches 3 run execute if score $Gamemode Mode matches 4 run advancement grant @a[scores={Kills=17..}] only ascendance:ascendance/wheres_my_team
execute if score $Config Mode matches 4 run execute if score $Gamemode Mode matches 4 run advancement grant @a[scores={Kills=27..}] only ascendance:ascendance/wheres_my_team


team modify Red friendlyFire false
team modify Blue friendlyFire false
team empty Red
team empty Blue

#remove scores and 
tag @a remove player
tag @a remove winner
tag @a remove Champion
scoreboard objectives remove Dethrones
scoreboard objectives remove Jumps
scoreboard objectives remove Kills
scoreboard objectives remove Score
scoreboard objectives remove Deaths
scoreboard objectives remove Dotakills

