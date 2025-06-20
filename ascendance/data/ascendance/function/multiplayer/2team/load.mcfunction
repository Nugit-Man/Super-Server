#Got to map Red
execute if score $Map Mode matches 1 run tp @a[team=Red] 1003.5 -2.00 29.5 180 0
execute if score $Map Mode matches 2 run tp @a[team=Red] 2032.50 40.00 24.5 0 0
execute if score $Map Mode matches 3 run tp @a[team=Red] 3071.5 10.00 73.5 90 0
execute if score $Map Mode matches 4 run tp @a[team=Red] 4081.5 -1.00 28.5 0. 0
execute if score $Map Mode matches 5 run tp @a[team=Red] 5006.5 7.00 7.0 -90 0
execute if score $Map Mode matches 7 run tp @a[team=Red] 7074.5 32.00 110.5 -90 0
execute if score $Map Mode matches 8 run tp @a[team=Red] 8017.5 4.00 5.5 0 0
execute if score $Map Mode matches 9 run tp @a[team=Red] 9070.50 18.00 87.50 180 0
execute if score $Map Mode matches 11 run tp @a[team=Red] 11018.5 11.00 29.5 0 0
execute if score $Map Mode matches 12 run tp @a[team=Red] 12035.5 6.00 102.5 180 0



#Go to map Blue
execute if score $Map Mode matches 1 run tp @a[team=Blue] 1037.5 -2.00 29.5 180 0
execute if score $Map Mode matches 2 run tp @a[team=Blue] 2032.50 40.00 96.5 180 0
execute if score $Map Mode matches 3 run tp @a[team=Blue] 3087.50 10.00 73.50 270 0
execute if score $Map Mode matches 4 run tp @a[team=Blue] 4081.5 -1.00 134.5 180 -0.0
execute if score $Map Mode matches 5 run tp @a[team=Blue] 5006.5 7.00 28.0 -90 0
execute if score $Map Mode matches 7 run tp @a[team=Blue] 7082.5 11.00 4.5 0 0
execute if score $Map Mode matches 8 run tp @a[team=Blue] 8077.5 10.00 61.5 -180 0
execute if score $Map Mode matches 9 run tp @a[team=Blue] 9092.5 16.00 45.5 45 0
execute if score $Map Mode matches 11 run tp @a[team=Blue] 11018.5 11.00 127.5 180 0
execute if score $Map Mode matches 12 run tp @a[team=Blue] 12035.5 6.00 7.5 0 0




#get what mode it is
execute if score $Gamemode Mode matches 4 run scoreboard objectives add Kills playerKillCount
execute if score $Gamemode Mode matches 4 run scoreboard objectives setdisplay list Kills
execute if score $Gamemode Mode matches 4 run scoreboard players set @a[team=Red] Kills 0
execute if score $Gamemode Mode matches 4 run scoreboard players set @a[team=Blue] Kills 0
execute if score $Gamemode Mode matches 4 run scoreboard players set $Score Mode 3
execute if score $Gamemode Mode matches 4 run scoreboard objectives add Teamkills dummy "Kills"
execute if score $Gamemode Mode matches 4 run scoreboard players set Red Teamkills 0
execute if score $Gamemode Mode matches 4 run scoreboard players set Blue Teamkills 0
execute if score $Gamemode Mode matches 4 run scoreboard objectives setdisplay sidebar Teamkills



execute if score $Gamemode Mode matches 5 run scoreboard objectives add Kills playerKillCount
execute if score $Gamemode Mode matches 5 run scoreboard objectives setdisplay list Kills
execute if score $Gamemode Mode matches 5 run scoreboard players set @a[team=Red] Kills 0
execute if score $Gamemode Mode matches 5 run scoreboard players set @a[team=Blue] Kills 0
execute if score $Gamemode Mode matches 5 run scoreboard players set $Score Mode 3
execute if score $Gamemode Mode matches 5 run scoreboard objectives add Captures dummy
execute if score $Gamemode Mode matches 5 run scoreboard players set Red Captures 0
execute if score $Gamemode Mode matches 5 run scoreboard players set Blue Captures 0
execute if score $Gamemode Mode matches 5 run scoreboard objectives setdisplay sidebar Captures
execute if score $Gamemode Mode matches 5 run schedule function ascendance:multiplayer/2team/blue_flag 3s
execute if score $Gamemode Mode matches 5 run schedule function ascendance:multiplayer/2team/red_flag 3s
execute if score $Gamemode Mode matches 5 run scoreboard objectives add Flagstate dummy
execute if score $Gamemode Mode matches 5 run scoreboard players set Red Flagstate 0
execute if score $Gamemode Mode matches 5 run scoreboard players set Blue Flagstate 0
execute if score $Gamemode Mode matches 5 run scoreboard objectives add Red_Flags minecraft.mined:red_banner
execute if score $Gamemode Mode matches 5 run scoreboard objectives add Blue_Flags minecraft.mined:blue_banner
execute if score $Gamemode Mode matches 5 run scoreboard objectives add Caps dummy
execute if score $Gamemode Mode matches 5 run execute if score U_TF2 Unlocks matches 2 run execute at @a[team=Red] run playsound minecraft:custom.tf2-start master @a
execute if score $Gamemode Mode matches 5 run execute if score U_TF2 Unlocks matches 2 run execute at @a[team=Blue] run playsound minecraft:custom.tf2-start master @a














schedule function ascendance:multiplayer/2team/bow 3s