execute as @s[scores={MM_Test_Dash3=0},tag=MM_Class_Assassin] if items entity @s weapon.mainhand *[custom_data~{MM_Test:1b}] run function mob_madness:classes/assassin/test_left

execute as @s[scores={MM_Test_Dash3=0},tag=MM_Class_Chicken] if items entity @s weapon.mainhand *[custom_data~{MM_Chicken:1b}] run function mob_madness:classes/chicken/left
execute as @s[scores={MM_Test_Dash3=0},tag=MM_Class_Chicken] if items entity @s weapon.mainhand *[custom_data~{MM_Chicken2:1b}] run function mob_madness:classes/chicken/left
execute as @s[scores={MM_Test_Dash3=0},tag=MM_Class_Chicken] if items entity @s weapon.mainhand *[custom_data~{MM_Chicken3:1b}] run function mob_madness:classes/chicken/left
execute as @s[scores={MM_Test_Dash3=0},tag=MM_Class_Chicken] if items entity @s weapon.mainhand *[custom_data~{MM_Chicken4:1b}] run function mob_madness:classes/chicken/left