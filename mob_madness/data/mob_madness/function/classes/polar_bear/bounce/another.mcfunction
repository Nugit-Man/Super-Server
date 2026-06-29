execute store result storage mob_madness:ice Motion_x double 0.4 run data get entity @s Motion[0]
execute store result storage mob_madness:ice Motion_y double 0.4 run data get entity @s Motion[1]
execute store result storage mob_madness:ice Motion_z double 0.4 run data get entity @s Motion[2]
execute store result storage mob_madness:ice Motion_xx double -0.8 run data get entity @s Motion[0]
execute store result storage mob_madness:ice Motion_yy double -0.8 run data get entity @s Motion[1]
execute store result storage mob_madness:ice Motion_zz double -0.8 run data get entity @s Motion[2]
execute at @s run function mob_madness:classes/polar_bear/bounce/next with storage mob_madness:ice
