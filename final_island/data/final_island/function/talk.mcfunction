execute at @s run playsound entity.villager.ambient master @s
scoreboard players set @s FI_Villager_Talk_Timer 1
tellraw @s[scores={MAIN_Game=2,FI_Villager_Talk=1}] "Hey, I see you want in"
tellraw @s[scores={MAIN_Game=2,FI_Villager_Talk=2}] "Yeah well sorry, I can't let you in. Boss will be mad"
tellraw @s[scores={MAIN_Game=2,FI_Villager_Talk=3}] "He's pretty pissed because all the funding goes to the other smith"
tellraw @s[scores={MAIN_Game=2,FI_Villager_Talk=4}] "Yeah, fuck that guy"
tellraw @s[scores={MAIN_Game=2,FI_Villager_Talk=5}] "The only way I can let you in is if you do something for us"
tellraw @s[scores={MAIN_Game=2,FI_Villager_Talk=6}] "You know, our anvil is in bad shape..."
tellraw @s[scores={MAIN_Game=2,FI_Villager_Talk=7}] "If you can give me 3 Iron blocks, I'll let you in"
tag @s[scores={MAIN_Game=2,FI_Villager_Talk=7}] add FI_Quest_Village_Anvil_Start
scoreboard players set @s[scores={MAIN_Game=2,FI_Villager_Talk=7}] FI_Villager_Talk_Timer 0
tellraw @s[scores={MAIN_Game=2,FI_Villager_Talk=8}] "Hey, do you have those iron blocks?"
scoreboard players set @s[scores={MAIN_Game=2,FI_Villager_Talk=8}] FI_Villager_Talk_Timer 0
tellraw @s[scores={MAIN_Game=2,FI_Villager_Talk=9}] "Thank you very much, please come in"
tellraw @s[scores={MAIN_Game=2,FI_Villager_Talk=10}] "Just note, the boss will take a cut"
tag @s[scores={MAIN_Game=2,FI_Villager_Talk=10}] remove FI_Quest_Village_Anvil_Start
tag @s[scores={MAIN_Game=2,FI_Villager_Talk=10}] add FI_Quest_Village_Anvil
scoreboard players set @s[scores={MAIN_Game=2,FI_Villager_Talk=9}] FI_Villager_Talk_Timer 0
tellraw @s[scores={MAIN_Game=2,FI_Villager_Talk=11}] "Thanks again for the Iron blocks"
scoreboard players set @s[scores={MAIN_Game=2,FI_Villager_Talk=11}] FI_Villager_Talk_Timer 0