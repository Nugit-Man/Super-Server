execute as @s[scores={MM_Test_Dash3=0},tag=MM_Class_Assassin] if items entity @s weapon.mainhand *[custom_data~{MM_Test:1b}] run function mob_madness:classes/assassin/test_left

execute as @s[scores={MM_Chicken_Main_Cooldown=0,MM_Chicken_Song_Bar=10..},tag=MM_Class_Chicken] if items entity @s weapon.mainhand *[custom_data~{MM_Chicken:1b}] run function mob_madness:classes/chicken/left
execute as @s[scores={MM_Chicken_Main_Cooldown=0,MM_Chicken_Song_Bar=10..},tag=MM_Class_Chicken] if items entity @s weapon.mainhand *[custom_data~{MM_Chicken2:1b}] run function mob_madness:classes/chicken/left
execute as @s[scores={MM_Chicken_Main_Cooldown=0,MM_Chicken_Song_Bar=10..},tag=MM_Class_Chicken] if items entity @s weapon.mainhand *[custom_data~{MM_Chicken3:1b}] run function mob_madness:classes/chicken/left
execute as @s[scores={MM_Chicken_Main_Cooldown=0,MM_Chicken_Song_Bar=10..},tag=MM_Class_Chicken] if items entity @s weapon.mainhand *[custom_data~{MM_Chicken4:1b}] run function mob_madness:classes/chicken/left

execute as @s[tag=MM_Class_Polar_Bear,scores={MM_Polar_Cooldown=0}] if items entity @s weapon.mainhand *[custom_data~{MM_Polar:1b}] run function mob_madness:classes/polar_bear/left
execute as @s[tag=MM_Class_Skeleton,scores={MM_Skeleton_Arrow=2..,MM_Skeleton_Arrow_Cooldown=0..12}] if items entity @s weapon.mainhand *[custom_data~{MM_Skeleton:1b}] run function mob_madness:classes/skeleton/left