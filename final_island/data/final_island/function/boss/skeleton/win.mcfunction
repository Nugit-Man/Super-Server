execute in final_island:game run tp @a[tag=FI_Boss_2,scores={MAIN_Game=2}] 69013 16 32

tellraw @a[tag=FI_Boss_2,scores={MAIN_Game=2}] "Drops:"
tellraw @a[tag=FI_Boss_2,scores={MAIN_Game=2},predicate=final_island:luck1] "Luck 1 Bonus"
tellraw @a[tag=FI_Boss_2,scores={MAIN_Game=2},predicate=final_island:luck2] "Luck 2 Bonus"
tellraw @a[tag=FI_Boss_2,scores={MAIN_Game=2},predicate=final_island:luck3] "Luck 3 Bonus"

execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2}] store result score @s FI_Boss_Drops run random value 1..10
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2},predicate=final_island:luck1] run scoreboard players add @s FI_Boss_Drops 1
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2},predicate=final_island:luck2] run scoreboard players add @s FI_Boss_Drops 2
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2},predicate=final_island:luck3] run scoreboard players add @s FI_Boss_Drops 3
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2,FI_Boss_Drops=6..}] run tellraw @s "Anchient Bow: \u2714"
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2,FI_Boss_Drops=6..}] run give @s bow[custom_name=[{"text":"Ancient Bow","italic":false}],custom_model_data={strings:['FI_Anchient_Bow']},lore=[[{"text":"A bow as old as time","italic":false}],[{"text":"that still holds high ","italic":false}],[{"text":"amounts of power","italic":false}]],enchantment_glint_override=false,enchantments={power:5,punch:5},unbreakable={},tooltip_display={hidden_components:[unbreakable]}]
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2,FI_Boss_Drops=6..}] run advancement grant @s only final_island:bow
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2,FI_Boss_Drops=..5}] run tellraw @s "Anchient Bow: X"
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2,FI_Boss_Drops=..5}] run tag @s add FI_RIP


execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2}] store result score @s FI_Boss_Drops run random value 1..10
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2},predicate=final_island:luck1] run scoreboard players add @s FI_Boss_Drops 1
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2},predicate=final_island:luck2] run scoreboard players add @s FI_Boss_Drops 2
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2},predicate=final_island:luck3] run scoreboard players add @s FI_Boss_Drops 3
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2,FI_Boss_Drops=6..}] run tellraw @s "Spider Heart: \u2714"
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2,FI_Boss_Drops=6..}] run give @s fermented_spider_eye[custom_name=[{"text":"Spider Heart","italic":false}],lore=[[{"text":"Nothing both more","italic":false}],[{"text":"pure and venous","italic":false}]],custom_model_data={strings:['FI_Spider_Heart']}]
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2,FI_Boss_Drops=6..}] run advancement grant @s only final_island:spider_heart
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2,FI_Boss_Drops=..5}] run tellraw @s "Spider Heart: X"
execute as @a[tag=FI_Boss_2,scores={MAIN_Game=2,FI_Boss_Drops=..5}] run advancement grant @s[tag=FI_RIP,predicate=final_island:luck3] only final_island:bad_luck

tag @a[tag=FI_Boss_2,scores={MAIN_Game=2}] remove FI_Boss_2