scoreboard players set @a[scores={MAIN_Game=7},tag=!RIC_Welcome] RIC_Menu 0
tag @a[scores={MAIN_Game=7}] add RIC_Welcome

scoreboard players set @a[scores={MAIN_Game=7,RIC_Menu=0}] RIC_Main 0
execute as @a[scores={MAIN_Game=7,RIC_Menu=0}] run function ric:menu/menu0
execute as @a[scores={MAIN_Game=7,RIC_Menu=1}] run function ric:menu/menu1




#See how many players are where
scoreboard players set $In_Que RIC_Main 0
execute store result score $In_Que RIC_Main if entity @a[scores={MAIN_Game=7,RIC_Main=0,RIC_Menu=1}]

scoreboard players set $In_Game RIC_Main 0
execute store result score $In_Game RIC_Main if entity @a[scores={MAIN_Game=7,RIC_Main=1}]



#Countdown for when the game is starting
execute if score $In_Game RIC_Main matches 0 if score $In_Que RIC_Main matches 2.. run scoreboard players add $Countdown RIC_Main 1
execute if score $In_Game RIC_Main matches 0 if score $In_Que RIC_Main matches 2.. if score $Countdown RIC_Main matches 1 run tellraw @a[scores={MAIN_Game=7}] "Game Starting in 30 seconds!"


execute if score $In_Que RIC_Main matches ..1 run scoreboard players set $Countdown RIC_Main 0
execute if score $In_Game RIC_Main matches 0 if score $In_Que RIC_Main matches ..1 if score $Countdown RIC_Main matches 1.. run tellraw @a[scores={MAIN_Game=7}] "Game canceled"

execute if score $In_Game RIC_Main matches 0 if score $In_Que RIC_Main matches 0.. if score $Countdown RIC_Main matches 600.. run function ric:gamestart




execute if score $In_Game RIC_Main matches 1 run title @a[scores={MAIN_Game=7}] title "WINEER"
execute if score $In_Game RIC_Main matches 1 run damage @a[limit=1,scores={RIC_Main=1}] 1 generic_kill



scoreboard players set @a[scores={MAIN_Game=7,RIC_Deaths=1,RIC_Main=1}] RIC_Main 0