function mace_masters:main/barrel


item replace entity @a[scores={MAIN_Game=6},nbt={Dimension:"mace_masters:lobby"}] inventory.13 with breeze_rod[custom_name={text:"Join Game",italic:false}]

execute as @a[scores={MAIN_Game=6},nbt={Dimension:"mace_masters:lobby"}] store result score @s MACE_Select run clear @s breeze_rod 0

execute in super_server:mace_master run clear @a[scores={MAIN_Game=6,MACE_Select=2},nbt={Dimension:"mace_masters:lobby"}]
execute in super_server:mace_master run tp @a[scores={MAIN_Game=6,MACE_Select=2},nbt={Dimension:"mace_masters:lobby"}] 0 301 0

