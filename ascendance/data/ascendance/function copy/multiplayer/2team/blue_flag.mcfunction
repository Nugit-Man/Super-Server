kill @e[tag=Blue_Flag_Tracker]
execute if score $Map Mode matches 1 run setblock 1028 0 42 minecraft:blue_banner[rotation=12]
execute if score $Map Mode matches 3 run setblock 3067 11 73 minecraft:blue_banner[rotation=4]
execute if score $Map Mode matches 7 run setblock 6993 37 75 minecraft:blue_banner[rotation=12]
execute if score $Map Mode matches 8 run setblock 8042 5 28 minecraft:blue_banner[rotation=8]
execute if score $Map Mode matches 9 run setblock 9093 14 25 minecraft:blue_banner[rotation=4]
execute if score $Map Mode matches 11 run setblock 11018 5 146 minecraft:blue_banner[rotation=8]
execute if score $Map Mode matches 12 run setblock 12035 7 3 minecraft:blue_banner

execute if score $Map Mode matches 1 run summon armor_stand 1028 0 42 {ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Blue_Flag_Marker"]}
execute if score $Map Mode matches 3 run summon armor_stand 3067 11 73 {ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Blue_Flag_Marker"]}
execute if score $Map Mode matches 7 run summon armor_stand 6993 37 75 {ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Blue_Flag_Marker"]}
execute if score $Map Mode matches 8 run summon armor_stand 8042 5 28 {ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Blue_Flag_Marker"]}
execute if score $Map Mode matches 9 run summon armor_stand 9093 14 25 {ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Blue_Flag_Marker"]}
execute if score $Map Mode matches 11 run summon armor_stand 11018 5 146 {ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Blue_Flag_Marker"]}
execute if score $Map Mode matches 12 run summon armor_stand 12035 7 3 {ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Blue_Flag_Marker"]}



execute if score $Map Mode matches 1 run summon armor_stand 1028 10 42 {ShowArms:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Blue_Flag_Tracker"]}
execute if score $Map Mode matches 3 run summon armor_stand 3067 21 73 {ShowArms:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Blue_Flag_Tracker"]}
execute if score $Map Mode matches 7 run summon armor_stand 6993 47 75 {ShowArms:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Blue_Flag_Tracker"]}
execute if score $Map Mode matches 8 run summon armor_stand 8042 15 28 {ShowArms:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Blue_Flag_Tracker"]}
execute if score $Map Mode matches 9 run summon armor_stand 9093 24 25 {ShowArms:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Blue_Flag_Tracker"]}
execute if score $Map Mode matches 11 run summon armor_stand 11018 15 146 {ShowArms:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Blue_Flag_Tracker"]}
execute if score $Map Mode matches 12 run summon armor_stand 12035 17 3 {ShowArms:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Blue_Flag_Tracker"]}