execute in mob_madness:game run tp @s[scores={MM_Joingame=2}] 1032 0 0 90 0
execute in mob_madness:game run tp @s[scores={MM_Joingame=4}] 1032 0 0 90 0
execute in mob_madness:game run tp @s[scores={MM_Joingame=6}] 1032 0 0 90 0
execute in mob_madness:game run tp @s[scores={MM_Joingame=8}] 1032 0 0 90 0
execute in mob_madness:game run tp @s[scores={MM_Joingame=10}] 1032 0 0 90 0
execute in mob_madness:game run tp @s[scores={MM_Joingame=12}] 1032 0 0 90 0
execute in mob_madness:game run tp @s[scores={MM_Joingame=1}] 968 0 0 -90 0
execute in mob_madness:game run tp @s[scores={MM_Joingame=3}] 968 0 0 -90 0
execute in mob_madness:game run tp @s[scores={MM_Joingame=5}] 968 0 0 -90 0
execute in mob_madness:game run tp @s[scores={MM_Joingame=7}] 968 0 0 -90 0
execute in mob_madness:game run tp @s[scores={MM_Joingame=9}] 968 0 0 -90 0
execute in mob_madness:game run tp @s[scores={MM_Joingame=11}] 968 0 0 -90 0


tag @s[scores={MM_Joingame=1..2}] add MM_Class_Assassin
execute as @s[scores={MM_Joingame=1..2}] run function mob_madness:classes/assassin/test
tag @s[scores={MM_Joingame=3..4}] add MM_Class_Chicken
execute as @s[scores={MM_Joingame=3..4}] run function mob_madness:classes/chicken/test
tag @s[scores={MM_Joingame=5..6}] add MM_Class_Polar_Bear
execute as @s[scores={MM_Joingame=5..6}] run function mob_madness:classes/polar_bear/test
tag @s[scores={MM_Joingame=7..8}] add MM_Class_Skeleton
execute as @s[scores={MM_Joingame=7..8}] run function mob_madness:classes/skeleton/test

tag @s[scores={MM_Joingame=2}] add MM_Blue
tag @s[scores={MM_Joingame=4}] add MM_Blue
tag @s[scores={MM_Joingame=6}] add MM_Blue
tag @s[scores={MM_Joingame=8}] add MM_Blue
tag @s[scores={MM_Joingame=10}] add MM_Blue
tag @s[scores={MM_Joingame=12}] add MM_Blue
tag @s[scores={MM_Joingame=1}] add MM_Red
tag @s[scores={MM_Joingame=3}] add MM_Red
tag @s[scores={MM_Joingame=5}] add MM_Red
tag @s[scores={MM_Joingame=7}] add MM_Red
tag @s[scores={MM_Joingame=9}] add MM_Red
tag @s[scores={MM_Joingame=11}] add MM_Red




scoreboard players set @s MM_Joingame 0

scoreboard players set @s MM_Health 100
effect give @s saturation 5 10