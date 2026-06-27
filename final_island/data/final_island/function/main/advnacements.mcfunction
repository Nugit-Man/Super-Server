schedule function final_island:main/advnacements 5t

#beetroot milestones
execute as @a[scores={MAIN_Game=2}] if items entity @s inventory.* beetroot run advancement grant @s only super_server:milestones/final_island/beetroot1
execute as @a[scores={MAIN_Game=2}] if items entity @s hotbar.* beetroot run advancement grant @s only super_server:milestones/final_island/beetroot1
execute as @a[scores={MAIN_Game=2}] if items entity @s inventory.* *[minecraft:custom_data~{Beetroot2:1b}] run advancement grant @s only super_server:milestones/final_island/beetroot2
execute as @a[scores={MAIN_Game=2}] if items entity @s hotbar.* *[minecraft:custom_data~{Beetroot2:1b}] run advancement grant @s only super_server:milestones/final_island/beetroot2
execute as @a[scores={MAIN_Game=2}] if items entity @s inventory.* *[minecraft:custom_data~{Beetroot3:1b}] run advancement grant @s only super_server:milestones/final_island/beetroot3
execute as @a[scores={MAIN_Game=2}] if items entity @s hotbar.* *[minecraft:custom_data~{Beetroot3:1b}] run advancement grant @s only super_server:milestones/final_island/beetroot3
execute as @a[scores={MAIN_Game=2}] if items entity @s inventory.* *[minecraft:custom_data~{Beetroot4:1b}] run advancement grant @s only super_server:milestones/final_island/beetroot4
execute as @a[scores={MAIN_Game=2}] if items entity @s hotbar.* *[minecraft:custom_data~{Beetroot4:1b}] run advancement grant @s only super_server:milestones/final_island/beetroot4
execute as @a[scores={MAIN_Game=2}] if items entity @s inventory.* *[minecraft:custom_data~{Beetroot5:1b}] run advancement grant @s only super_server:milestones/final_island/beetroot5
execute as @a[scores={MAIN_Game=2}] if items entity @s hotbar.* *[minecraft:custom_data~{Beetroot5:1b}] run advancement grant @s only super_server:milestones/final_island/beetroot5

advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Deaths=1..}] only super_server:milestones/final_island/deaths/deaths1
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Deaths=10..}] only super_server:milestones/final_island/deaths/deaths2
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Deaths=100..}] only super_server:milestones/final_island/deaths/deaths3
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Deaths=1000..}] only super_server:milestones/final_island/deaths/deaths4
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Deaths=2500..}] only super_server:milestones/final_island/deaths/deaths5

scoreboard players set @a[scores={MAIN_Game=2,FI_Milestone_Kills_Mobs=..-1}] FI_Milestone_Kills_Mobs 0
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Kills_Mobs=100..}] only super_server:milestones/final_island/mobkills/mob1
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Kills_Mobs=250..}] only super_server:milestones/final_island/mobkills/mob2
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Kills_Mobs=500..}] only super_server:milestones/final_island/mobkills/mob3
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Kills_Mobs=1000..}] only super_server:milestones/final_island/mobkills/mob4
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Kills_Mobs=2500..}] only super_server:milestones/final_island/mobkills/mob5

advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Jumps=500..}] only super_server:milestones/final_island/jumps/jump1
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Jumps=1000..}] only super_server:milestones/final_island/jumps/jump2
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Jumps=2500..}] only super_server:milestones/final_island/jumps/jump3
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Jumps=5000..}] only super_server:milestones/final_island/jumps/jump4
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Jumps=10000..}] only super_server:milestones/final_island/jumps/jump5

advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Fishing=100..}] only super_server:milestones/final_island/fisherman
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Fishing=250..}] only super_server:milestones/final_island/fisherman2
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Fishing=500..}] only super_server:milestones/final_island/fisherman3
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Fishing=1000..}] only super_server:milestones/final_island/fisherman4
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Fishing=2500..}] only super_server:milestones/final_island/fisherman5

execute as @a[scores={MAIN_Game=2}] if items entity @s inventory.* *[minecraft:custom_data~{FI_Pig_Sword:1b}] run advancement grant @s only final_island:pig_sword
execute as @a[scores={MAIN_Game=2}] if items entity @s hotbar.* *[minecraft:custom_data~{FI_Pig_Sword:1b}] run advancement grant @s only final_island:pig_sword

execute as @a[scores={MAIN_Game=2}] if items entity @s inventory.* *[minecraft:custom_data~{FI_Yuck_Rod:1b}] run advancement grant @s only final_island:yuck
execute as @a[scores={MAIN_Game=2}] if items entity @s hotbar.* *[minecraft:custom_data~{FI_Yuck_Rod:1b}] run advancement grant @s only final_island:yuck

advancement grant @a[scores={MAIN_Game=2,FI_Mana_Max=160..}] only final_island:manaflux
advancement grant @a[scores={MAIN_Game=2,FI_Mana_Regen=3..}] only final_island:knowledge


execute as @a[scores={MAIN_Game=2}] run execute store result score @s FI_gray_crystal_check run clear @s player_head[minecraft:custom_data~{FI_Mana_Crystal_Gray:1b}] 0
advancement grant @a[scores={MAIN_Game=2,FI_gray_crystal_check=2..}] only final_island:disapointment


advancement grant @a[scores={MAIN_Game=2,FI_Health=60..}] only final_island:imortal


advancement grant @a[scores={MAIN_Game=2,FI_Sword_Break_Wood=1..}] only final_island:break1
advancement grant @a[scores={MAIN_Game=2,FI_Sword_Break_Gold=1..}] only final_island:break2

advancement grant @a[scores={MAIN_Game=2,FI_Sugar_Cane=10000..}] only final_island:road_to_1mil