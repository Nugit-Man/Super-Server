execute as @a[scores={MAIN_Game=7,RIC_Main=0}] at @s if block ~ ~-2 ~ crying_obsidian run scoreboard players set @s RIC_Main 2
execute as @a[scores={MAIN_Game=7,RIC_Main=0}] at @s if block ~ ~-3 ~ crying_obsidian run scoreboard players set @s RIC_Main 2
execute as @a[scores={MAIN_Game=7,RIC_Main=0}] at @s if block ~ ~-4 ~ crying_obsidian run scoreboard players set @s RIC_Main 2
execute as @a[scores={MAIN_Game=7,RIC_Main=2}] store result score @s RIC_Random run random value 0..60
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=1}] wooden_axe
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=2}] wooden_sword
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=3}] wooden_shovel
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=4}] stone_axe
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=5}] stone_sword
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=6}] stone_sword
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=7}] iron_sword
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=8}] iron_shovel
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=9}] iron_axe
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=10}] golden_sword
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=11}] golden_shovel
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=12}] golden_axe
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=13}] diamond_sword
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=14}] diamond_shovel
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=15}] diamond_axe
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=16}] netherite_sword
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=17}] netherite_shovel
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=18}] netherite_axe
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=19}] mace
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=20}] trident
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=21}] bow
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=22}] crossbow
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=23}] arrow 16
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=24}] shield
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=25}] leather_boots
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=26}] leather_chestplate
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=27}] leather_leggings
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=28}] leather_helmet
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=29}] chainmail_boots
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=30}] chainmail_chestplate
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=31}] chainmail_leggings
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=32}] chainmail_helmet
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=33}] iron_boots
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=34}] iron_chestplate
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=35}] iron_leggings
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=36}] iron_helmet
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=37}] golden_boots
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=38}] golden_chestplate
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=39}] golden_leggings
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=40}] golden_helmet
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=41}] diamond_boots
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=42}] diamond_chestplate
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=43}] diamond_leggings
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=44}] diamond_helmet
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=45}] netherite_boots
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=46}] netherite_chestplate
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=47}] netherite_leggings
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=48}] netherite_helmet
