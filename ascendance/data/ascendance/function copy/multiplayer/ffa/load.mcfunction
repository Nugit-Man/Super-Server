#go to map
execute if score $Map Mode matches 1 run tp @a[team=Red] 1020.50 -1.00 10.50 720 0
execute if score $Map Mode matches 2 run tp @a[team=Red] 2032.5 42.00 60.5 180 0
execute if score $Map Mode matches 3 run tp @a[team=Red] 3079.5 3.00 23.5 0 0
execute if score $Map Mode matches 4 run tp @a[team=Red] 4081.58 -1.00 81.5 180.00 0.00
execute if score $Map Mode matches 5 run tp @a[team=Red] 5002.5 7.00 17.5 270 0
execute if score $Map Mode matches 6 run tp @a[team=Red] 6003.5 13.00 3.5 315 0
execute if score $Map Mode matches 7 run tp @a[team=Red] 7103.5 31 35.5 90 0
execute if score $Map Mode matches 8 run tp @a[team=Red] 8017.5 4.00 5.5 0 0
execute if score $Map Mode matches 9 run tp @a[team=Red] 9019.50 3.00 84.5 225 0
execute if score $Map Mode matches 10 run tp @a[team=Red] 10016.50 3.00 16.50 0 0
execute if score $Map Mode matches 11 run tp @a[team=Red] 11018.5 12.00 67.5 0 0
execute if score $Map Mode matches 12 run tp @a[team=Red] 12067.5 6.00 55.00 90 0

#get what mode it is
execute if score $Gamemode Mode matches 1..3 run scoreboard objectives add Kills playerKillCount
execute if score $Gamemode Mode matches 1 run scoreboard objectives setdisplay sidebar Kills
execute if score $Gamemode Mode matches 1..3 run scoreboard players set @a[team=Red] Kills 0
execute if score $Gamemode Mode matches 1..3 run scoreboard objectives add Deaths deathCount
execute if score $Gamemode Mode matches 1 run scoreboard objectives setdisplay list Deaths
execute if score $Gamemode Mode matches 1..3 run scoreboard players set @a[team=Red] Deaths 0
execute if score $Gamemode Mode matches 1 run scoreboard players set $Score Mode 1


execute if score $Gamemode Mode matches 2..3 run scoreboard objectives setdisplay list Kills
execute if score $Gamemode Mode matches 2..3 run scoreboard players set $Score Mode 2
execute if score $Gamemode Mode matches 2..3 run scoreboard objectives add Score dummy
execute if score $Gamemode Mode matches 2..3 run scoreboard objectives setdisplay sidebar Score
execute if score $Gamemode Mode matches 2..3 run scoreboard players set @a[team=Red] Score 0
execute if score $Gamemode Mode matches 2 run schedule function ascendance:multiplayer/ffa/crown 5s
execute if score $Gamemode Mode matches 3 run schedule function ascendance:multiplayer/ffa/hill 5s
execute if score $Gamemode Mode matches 3 run schedule function ascendance:multiplayer/ffa/hill_place 3s

execute if score $Gamemode Mode matches 6 run scoreboard objectives add Lives dummy
execute if score $Gamemode Mode matches 6 run scoreboard objectives setdisplay sidebar Lives


#So The lives thing never seemed to load properly so I'm gonna try putting them in the bow thing to give it more time and hopefully that works
execute if score $Gamemode Mode matches 6 run scoreboard players set $Score Mode 1
execute if score $Gamemode Mode matches 6 run scoreboard objectives add Kills playerKillCount
execute if score $Gamemode Mode matches 6 run scoreboard objectives setdisplay list Kills
execute if score $Gamemode Mode matches 6 run scoreboard players set @a[tag=player] Kills 0


#set up dethroner advacnement
execute if score $Gamemode Mode matches 2 run scoreboard objectives add Dethrones dummy

#set up champion advancment
execute if score $Map Mode matches 4 run tag @a[team=Red] add Champion

schedule function ascendance:multiplayer/ffa/bow 3s