#Count Deaths Per game
scoreboard players set @a[scores={MAIN_Game=1,AS_Mode=0}] AS_Deaths_Count 0
scoreboard players add @a[scores={MAIN_Game=1,AS_Mode=1,AS_Deaths=1..}] AS_Deaths_Count 1



#Count Kills Per game
scoreboard players set @a[scores={MAIN_Game=1,AS_Mode=0}] AS_Kill_Count 0
scoreboard players add @a[scores={MAIN_Game=1,AS_Mode=1,AS_Kills=1..}] AS_Kill_Count 1



#Check for deah club
scoreboard players set @a[scores={MAIN_Game=1,AS_Mode=0}] AS_Death_Club 0
scoreboard players add @a[scores={MAIN_Game=1,AS_Mode=1,AS_Deaths=1..,AS_Map=5}] AS_Death_Club 1
advancement grant @a[scores={MAIN_Game=1,AS_Death_Club=100..}] only ascendance:ascendance/death_club

#Cehck for did I win?
advancement grant @a[scores={MAIN_Game=1,AS_Deaths_Count=0,AS_Gamemode=1},tag=AS_Winner] only ascendance:ascendance/did_i_win

#First blood
advancement grant @a[scores={MAIN_Game=1,AS_Kills=1,AS_Gamemode=1..}] only ascendance:ascendance/first_blood

#Check for not that kind of deathmatch
advancement grant @a[scores={MAIN_Game=1,AS_Deaths_Count=50,AS_Gamemode=1}] only ascendance:ascendance/not_that_kind_of_deathmatch

#Check for Dethroner
advancement grant @a[scores={MAIN_Game=1,AS_Kill_Count=50,AS_Gamemode=1}] only ascendance:ascendance/off_with_his_head