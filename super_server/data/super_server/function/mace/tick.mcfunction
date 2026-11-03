item replace entity @a[scores={MAIN_Game=6},nbt={Dimension:"super_server:mace_master"}] weapon.offhand with wind_charge 64

#checkfor Mace
execute as @a[scores={MAIN_Game=6},nbt={Dimension:"super_server:mace_master"}] store result score @s MACE_Check run clear @s mace 0
give @a[scores={MAIN_Game=6,MACE_Check=0},nbt={Dimension:"super_server:mace_master"}] mace[enchantments={wind_burst:3}]

execute at @a[scores={MAIN_Game=6}] run kill @e[type=item,distance=..10]