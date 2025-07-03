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

advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Kills_Mobs=100..}] only super_server:milestones/final_island/mobkills/mob1
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Kills_Mobs=250..}] only super_server:milestones/final_island/mobkills/mob2
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Kills_Mobs=500..}] only super_server:milestones/final_island/mobkills/mob3
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Kills_Mobs=1000..}] only super_server:milestones/final_island/mobkills/mob4

advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Jumps=500..}] only super_server:milestones/final_island/jumps/jump1
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Jumps=1000..}] only super_server:milestones/final_island/jumps/jump2
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Jumps=2500..}] only super_server:milestones/final_island/jumps/jump3
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Jumps=5000..}] only super_server:milestones/final_island/jumps/jump4

advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Fishing=100..}] only super_server:milestones/final_island/fisherman
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Fishing=250..}] only super_server:milestones/final_island/fisherman2
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Fishing=500..}] only super_server:milestones/final_island/fisherman3
advancement grant @a[scores={MAIN_Game=2,FI_Milestone_Fishing=1000..}] only super_server:milestones/final_island/fisherman4