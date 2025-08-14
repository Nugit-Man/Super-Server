execute if score U_Ammo Unlocks matches 0..1 run give @a[team=Red] bow[enchantments={levels:{infinity:1}},unbreakable={}]
execute if score U_Ammo Unlocks matches 2 run give @a[team=Red] bow[unbreakable={}]
give @a[team=Red] arrow
team empty Red

execute if score $Gamemode Mode matches 6 run execute if score $Config Mode matches 0 run scoreboard players set @a[tag=player] Lives 1
execute if score $Gamemode Mode matches 6 run execute if score $Config Mode matches 1 run scoreboard players set @a[tag=player] Lives 3
execute if score $Gamemode Mode matches 6 run execute if score $Config Mode matches 2 run scoreboard players set @a[tag=player] Lives 5
execute if score $Gamemode Mode matches 6 run execute if score $Config Mode matches 3 run scoreboard players set @a[tag=player] Lives 10