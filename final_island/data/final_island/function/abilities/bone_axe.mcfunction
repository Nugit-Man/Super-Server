#skull_crush is a marker for the crushers. The crushers actually deal the damage
summon marker ^ ^ ^3 {Tags:[FI_Ability_Skull_Crush]}
tag @s add FI_Ability_Skull_Crusher

execute at @e[tag=FI_Ability_Skull_Crush] run summon marker ~ ~ ~2 {Tags:[FI_Ability_Skull_Crusher]}
execute at @e[tag=FI_Ability_Skull_Crush] run summon marker ~ ~ ~-2 {Tags:[FI_Ability_Skull_Crusher]}
execute at @e[tag=FI_Ability_Skull_Crush] run summon marker ~2 ~ ~ {Tags:[FI_Ability_Skull_Crusher]}
execute at @e[tag=FI_Ability_Skull_Crush] run summon marker ~-2 ~ ~ {Tags:[FI_Ability_Skull_Crusher]}

execute at @e[tag=FI_Ability_Skull_Crusher] run damage @e[distance=..2,tag=!FI_Ability_Skull_Crusher,limit=1,sort=nearest] 4 player_attack by @p[tag=FI_Ability_Skull_Crusher]

tag @s remove FI_Ability_Skull_Crusher
kill @e[tag=FI_Ability_Skull_Crush]
kill @e[tag=FI_Ability_Skull_Crusher]