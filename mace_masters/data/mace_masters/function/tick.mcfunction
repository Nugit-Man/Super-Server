function mace_masters:main/barrel


item replace entity @a[scores={MAIN_Game=6},nbt={Dimension:"mace_masters:lobby"}] inventory.13 with breeze_rod[custom_name={text:"Join Game",italic:false}]

execute as @a[scores={MAIN_Game=6},nbt={Dimension:"mace_masters:lobby"}] store result score @s MACE_Select run clear @s breeze_rod 0

execute in super_server:mace_master run clear @a[scores={MAIN_Game=6,MACE_Select=2},nbt={Dimension:"mace_masters:lobby"}]
execute in super_server:mace_master run tp @a[scores={MAIN_Game=6,MACE_Select=2},nbt={Dimension:"mace_masters:lobby"}] 0 301 0



execute as @a[scores={MAIN_Game=6,MACE_Kills=1..}] run scoreboard players add @s MACE_Killstreak 1
execute as @a[scores={MAIN_Game=6,MACE_Deaths=1..}] run scoreboard players set @s MACE_Killstreak 0

execute as @a[scores={MAIN_Game=6,MACE_Kills=1,MACE_Killstreak=5}] run tellraw @a[scores={MAIN_Game=6}] [{"selector":"@s",color:blue},{text:" Is on a 5 killstreak ",italic:false,color:blue}]
execute as @a[scores={MAIN_Game=6,MACE_Kills=1,MACE_Killstreak=10}] run tellraw @a[scores={MAIN_Game=6}] [{"selector":"@s",color:blue},{text:" Is on a 10 killstreak ",italic:false,color:blue}]
execute as @a[scores={MAIN_Game=6,MACE_Kills=1,MACE_Killstreak=15}] run tellraw @a[scores={MAIN_Game=6}] [{"selector":"@s",color:blue},{text:" Is on a 15 killstreak ",italic:false,color:blue}]
execute as @a[scores={MAIN_Game=6,MACE_Kills=1,MACE_Killstreak=20}] run tellraw @a[scores={MAIN_Game=6}] [{"selector":"@s",color:blue},{text:" Is on a 20 killstreak ",italic:false,color:blue}]