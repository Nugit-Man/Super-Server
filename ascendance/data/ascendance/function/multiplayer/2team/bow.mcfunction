execute if score U_Ammo Unlocks matches 0..1 run give @a[team=Red] bow[enchantments={levels:{infinity:1}},unbreakable={}]
execute if score U_Ammo Unlocks matches 2 run give @a[team=Red] bow[unbreakable={}]
execute if score $Gamemode Mode matches 5 run give @a[team=Red] shears[custom_name='["",{"text":"Flag Brakers","italic":false}]',can_break={blocks:[red_banner,blue_banner]},unbreakable={}]
give @a[team=Red] arrow
execute if score U_Ammo Unlocks matches 0..1 run give @a[team=Blue] bow[enchantments={levels:{infinity:1}},unbreakable={}]
execute if score U_Ammo Unlocks matches 2 run give @a[team=Blue] bow[unbreakable={}]
execute if score $Gamemode Mode matches 5 run give @a[team=Blue] shears[custom_name='["",{"text":"Flag Brakers","italic":false}]',can_break={blocks:[red_banner,blue_banner]},unbreakable={}]
give @a[team=Blue] arrow
team join Red Red
team join Blue Blue