execute store result score @s GB_Gamble run random value 0..1001
attribute @s[scores={GB_Gamble=0..249}] attack_damage modifier add 1751433328294 0.3 add_value
tellraw @s[scores={GB_Gamble=0..249}] "Attack Damage Up"
attribute @s[scores={GB_Gamble=250..499}] attack_knockback modifier add 1751433328294 0.3 add_value
tellraw @s[scores={GB_Gamble=250..499}] "Knockback Up"
attribute @s[scores={GB_Gamble=500..749}] attack_speed modifier add 1751433328294 0.3 add_value
tellraw @s[scores={GB_Gamble=500..749}] "Attack Speed Up"
attribute @s[scores={GB_Gamble=750..1000}] entity_interaction_range modifier add 1751433328294 0.3 add_value
tellraw @s[scores={GB_Gamble=750..1000}] "Reach Up"
advancement grant @s[scores={GB_Gamble=1001}] only gorbino:gamble