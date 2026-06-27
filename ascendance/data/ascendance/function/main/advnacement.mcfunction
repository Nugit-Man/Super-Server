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

#Check for Off with his head
advancement grant @a[scores={MAIN_Game=1,AS_Kill_Count=50,AS_Gamemode=2}] only ascendance:ascendance/off_with_his_head

#Dethroner
scoreboard players set @a[scores={MAIN_Game=1,AS_Mode=0}] AS_Crown_Take 0
advancement grant @a[scores={MAIN_Game=1,AS_Crown_Take=20,AS_Gamemode=1}] only ascendance:ascendance/dethroner

#Milestones
advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Deaths=250..}] only super_server:milestones/ascendance/philip_moment
advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Deaths=500..}] only super_server:milestones/ascendance/osmar_moment
advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Deaths=1000..}] only super_server:milestones/ascendance/classic_even
advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Deaths=2500..}] only super_server:milestones/ascendance/glitch_moment
advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Deaths=5000..}] only super_server:milestones/ascendance/sitck_drift

advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Kills=250..}] only super_server:milestones/ascendance/killing_spree
advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Kills=500..}] only super_server:milestones/ascendance/mass_murder
advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Kills=1000..}] only super_server:milestones/ascendance/big_kill
advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Kills=2500..}] only super_server:milestones/ascendance/quick_shot
advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Kills=5000..}] only super_server:milestones/ascendance/aimbot

advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Shots=250..}] only super_server:milestones/ascendance/shots_fired
advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Shots=1000..}] only super_server:milestones/ascendance/suppressing_fire
advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Shots=2500..}] only super_server:milestones/ascendance/heavy_arms
advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Shots=5000..}] only super_server:milestones/ascendance/full_auto
advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Shots=10000..}] only super_server:milestones/ascendance/fuller_auto

advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Wins=10..}] only super_server:milestones/ascendance/good_at_this_game
advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Wins=25..}] only super_server:milestones/ascendance/really_good_at_this_game
advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Wins=50..}] only super_server:milestones/ascendance/really_really_good_at_this_game
advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Wins=100..}] only super_server:milestones/ascendance/amazing_at_this_game
advancement grant @a[scores={MAIN_Game=1,AS_Milestone_Wins=250..}] only super_server:milestones/ascendance/really_amazing_at_this_game







#Dota
scoreboard players add @a[scores={MAIN_Game=1,AS_Kills=1}] AS_Dota_Killstreak 1
scoreboard players add @a[scores={MAIN_Game=1,AS_Kills=1}] AS_Dota_Multikill 1
scoreboard players set @a[scores={MAIN_Game=1,AS_Kills=1}] AS_Dota_Multikill_Timer 50


scoreboard players remove @a[scores={MAIN_Game=1,AS_Dota_Multikill_Timer=1..}] AS_Dota_Multikill_Timer 1
scoreboard players set @a[scores={MAIN_Game=1,AS_Dota_Multikill_Timer=0}] AS_Dota_Multikill 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Deaths=1}] AS_Dota_Multikill 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Deaths=1}] AS_Dota_Killstreak 0


advancement grant @a[scores={MAIN_Game=1,AS_Dota_Multikill=2,AS_Kills=1}] only ascendance:dota/double_kill
advancement grant @a[scores={MAIN_Game=1,AS_Dota_Multikill=3,AS_Kills=1}] only ascendance:dota/triple_kill
advancement grant @a[scores={MAIN_Game=1,AS_Dota_Multikill=4,AS_Kills=1}] only ascendance:dota/ultra_kill
advancement grant @a[scores={MAIN_Game=1,AS_Dota_Multikill=5,AS_Kills=1}] only ascendance:dota/rampage

execute as @a[scores={MAIN_Game=1,AS_Dota_Multikill=2,AS_Kills=1}] at @s run playsound dota.double_kill master @s
execute as @a[scores={MAIN_Game=1,AS_Dota_Multikill=3,AS_Kills=1}] at @s run playsound dota.triple_kill master @s
execute as @a[scores={MAIN_Game=1,AS_Dota_Multikill=4,AS_Kills=1}] at @s run playsound dota.ultra_kill master @s
execute as @a[scores={MAIN_Game=1,AS_Dota_Multikill=5,AS_Kills=1}] at @s run playsound dota.rampage master @s



advancement grant @a[scores={MAIN_Game=1,AS_Dota_Killstreak=3,AS_Kills=1}] only ascendance:dota/killing_spree
advancement grant @a[scores={MAIN_Game=1,AS_Dota_Killstreak=4,AS_Kills=1}] only ascendance:dota/dominating
advancement grant @a[scores={MAIN_Game=1,AS_Dota_Killstreak=5,AS_Kills=1}] only ascendance:dota/mega_kill
advancement grant @a[scores={MAIN_Game=1,AS_Dota_Killstreak=6,AS_Kills=1}] only ascendance:dota/unstoppable
advancement grant @a[scores={MAIN_Game=1,AS_Dota_Killstreak=7,AS_Kills=1}] only ascendance:dota/wicked_sick
advancement grant @a[scores={MAIN_Game=1,AS_Dota_Killstreak=8,AS_Kills=1}] only ascendance:dota/monster_kill
advancement grant @a[scores={MAIN_Game=1,AS_Dota_Killstreak=9,AS_Kills=1}] only ascendance:dota/godlike
advancement grant @a[scores={MAIN_Game=1,AS_Dota_Killstreak=10..,AS_Kills=1}] only ascendance:dota/holy_shit

execute as @a[scores={MAIN_Game=1,AS_Dota_Killstreak=3,AS_Kills=1}] at @s run playsound dota.killing_spree master @s
execute as @a[scores={MAIN_Game=1,AS_Dota_Killstreak=4,AS_Kills=1}] at @s run playsound dota.dominating master @s
execute as @a[scores={MAIN_Game=1,AS_Dota_Killstreak=5,AS_Kills=1}] at @s run playsound dota.mega_kill master @s
execute as @a[scores={MAIN_Game=1,AS_Dota_Killstreak=6,AS_Kills=1}] at @s run playsound dota.unstoppable master @s
execute as @a[scores={MAIN_Game=1,AS_Dota_Killstreak=7,AS_Kills=1}] at @s run playsound dota.wicked_sick master @s
execute as @a[scores={MAIN_Game=1,AS_Dota_Killstreak=8,AS_Kills=1}] at @s run playsound dota.monster_kill master @s
execute as @a[scores={MAIN_Game=1,AS_Dota_Killstreak=9,AS_Kills=1}] at @s run playsound dota.godlike master @s
execute as @a[scores={MAIN_Game=1,AS_Dota_Killstreak=10..,AS_Kills=1}] at @s run playsound dota.holy_shit master @s