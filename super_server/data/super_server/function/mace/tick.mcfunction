item replace entity @a[scores={MAIN_Game=6}] weapon.offhand with wind_charge 64

#checkfor Mace
execute as @a[scores={MAIN_Game=6}] store result score @s MACE_Check run clear @s mace 0
give @a[scores={MAIN_Game=6,MACE_Check=0}] mace[enchantments={wind_burst:3}]

execute at @a[scores={MAIN_Game=6}] run kill @e[type=item,distance=..10]