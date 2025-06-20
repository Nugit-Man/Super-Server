#Desert Tomb
execute if score $Map Mode matches 1 run execute store result score $Hill Mode run random value 1..4
execute if score $Map Mode matches 1 run execute if score $Hill Mode matches 1 run clone 1017 -52 3 1023 -52 7 1017 -2 3
execute if score $Map Mode matches 1 run execute if score $Hill Mode matches 1 run summon armor_stand 1020 -1 5 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}
execute if score $Map Mode matches 1 run execute if score $Hill Mode matches 2 run clone 1017 -52 15 1023 -52 21 1017 -2 15
execute if score $Map Mode matches 1 run execute if score $Hill Mode matches 2 run summon armor_stand 1020 -1 18 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}
execute if score $Map Mode matches 1 run execute if score $Hill Mode matches 3 run clone 1017 -52 24 1023 -52 30 1017 -2 24
execute if score $Map Mode matches 1 run execute if score $Hill Mode matches 3 run summon armor_stand 1020 -1 27 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}
execute if score $Map Mode matches 1 run execute if score $Hill Mode matches 4 run clone 1017 -48 32 1023 -48 35 1017 2 32
execute if score $Map Mode matches 1 run execute if score $Hill Mode matches 4 run summon armor_stand 1020 3 34 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}

#Tabletop
execute if score $Map Mode matches 2 run clone 2029 38 68 2035 38 74 2029 41 57
execute if score $Map Mode matches 2 run summon armor_stand 2032 42 60 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}


#Brutalism
execute if score $Map Mode matches 3 run execute store result score $Hill Mode run random value 1..4
execute if score $Map Mode matches 3 run execute if score $Hill Mode matches 1 run clone 3076 -47 25 3082 -47 31 3076 2 25
execute if score $Map Mode matches 3 run execute if score $Hill Mode matches 1 run summon armor_stand 3079 3 28 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}
execute if score $Map Mode matches 3 run execute if score $Hill Mode matches 2 run clone 3076 -47 41 3082 -47 47 3076 2 41
execute if score $Map Mode matches 3 run execute if score $Hill Mode matches 2 run summon armor_stand 3079 3 44 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}
execute if score $Map Mode matches 3 run execute if score $Hill Mode matches 3 run clone 3076 -33 61 3082 -33 67 3076 16 61
execute if score $Map Mode matches 3 run execute if score $Hill Mode matches 3 run summon armor_stand 3079 17 64 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}
execute if score $Map Mode matches 3 run execute if score $Hill Mode matches 4 run clone 3077 -33 76 3081 -33 82 3077 16 76
execute if score $Map Mode matches 3 run execute if score $Hill Mode matches 4 run summon armor_stand 3079 17 79 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}


#colosium
execute if score $Map Mode matches 4 run clone 4078 -51 78 4084 -51 84 4078 -2 78
execute if score $Map Mode matches 4 run summon armor_stand 4081 -1 81 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}


#The club
execute if score $Map Mode matches 5 run execute store result score $Hill Mode run random value 1..3
execute if score $Map Mode matches 5 run execute if score $Hill Mode matches 1 run clone 5002 -43 14 5007 -43 20 5002 6 14
execute if score $Map Mode matches 5 run execute if score $Hill Mode matches 1 run summon armor_stand 5004 7 17 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}
execute if score $Map Mode matches 5 run execute if score $Hill Mode matches 2 run clone 5014 -46 14 5020 -46 20 5014 3 14
execute if score $Map Mode matches 5 run execute if score $Hill Mode matches 2 run summon armor_stand 5017 4 17 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}
execute if score $Map Mode matches 5 run execute if score $Hill Mode matches 3 run clone 5021 -43 14 5024 -43 20 5021 6 14
execute if score $Map Mode matches 5 run execute if score $Hill Mode matches 3 run summon armor_stand 5024 7 17 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}

#Shpment
execute if score $Map Mode matches 6 run clone 6016 10 16 6021 10 21 6016 12 16
execute if score $Map Mode matches 6 run summon armor_stand 6019.0 11 19.0 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]} 



#Final Island
execute if score $Map Mode matches 7 run execute store result score $Hill Mode run random value 1..3
execute if score $Map Mode matches 7 run execute if score $Hill Mode matches 1 run clone 7197 38 13 7201 38 17 7197 40 13
execute if score $Map Mode matches 7 run execute if score $Hill Mode matches 1 run summon armor_stand 7200 41 15 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}
execute if score $Map Mode matches 7 run execute if score $Hill Mode matches 2 run clone 7081 28 34 7085 28 38 7085 29 38
execute if score $Map Mode matches 7 run execute if score $Hill Mode matches 2 run summon armor_stand 7085 30 35 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}
execute if score $Map Mode matches 7 run execute if score $Hill Mode matches 3 run clone 7099 36 124 7103 36 128 7099 37 124
execute if score $Map Mode matches 7 run execute if score $Hill Mode matches 3 run summon armor_stand 8071 5 55 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}




#Caves
execute if score $Map Mode matches 8 run execute store result score $Hill Mode run random value 1..3
execute if score $Map Mode matches 8 run execute if score $Hill Mode matches 1 run clone 8006 3 24 8010 3 28 8006 4 24
execute if score $Map Mode matches 8 run execute if score $Hill Mode matches 1 run summon armor_stand 8008 5 26 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}
execute if score $Map Mode matches 8 run execute if score $Hill Mode matches 2 run clone 8044 3 50 8048 3 54 8044 4 50
execute if score $Map Mode matches 8 run execute if score $Hill Mode matches 2 run summon armor_stand 9082 12 35 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}
execute if score $Map Mode matches 8 run execute if score $Hill Mode matches 3 run clone 8069 3 52 8073 3 56 8069 4 52
execute if score $Map Mode matches 8 run execute if score $Hill Mode matches 3 run summon armor_stand 7101 40 126 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}


#Ravine
execute if score $Map Mode matches 9 run execute store result score $Hill Mode run random value 1..3
execute if score $Map Mode matches 9 run execute if score $Hill Mode matches 1 run clone 9030 0 66 9036 0 72 9036 1 72
execute if score $Map Mode matches 9 run execute if score $Hill Mode matches 1 run summon armor_stand 9033 3 69 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}
execute if score $Map Mode matches 9 run execute if score $Hill Mode matches 2 run clone 9079 10 32 9085 10 38 9079 11 32
execute if score $Map Mode matches 9 run execute if score $Hill Mode matches 2 run summon armor_stand 9082 12 35 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}
execute if score $Map Mode matches 9 run execute if score $Hill Mode matches 3 run clone 9097 11 76 9101 11 80 9097 12 80
execute if score $Map Mode matches 9 run execute if score $Hill Mode matches 3 run summon armor_stand 9099 13 78 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}





#Cube
execute if score $Map Mode matches 10 run execute store result score $Hill Mode run random value 1..2
execute if score $Map Mode matches 10 run execute if score $Hill Mode matches 1 run clone 10013 0 13 10019 0 19 10014 2 13
execute if score $Map Mode matches 10 run execute if score $Hill Mode matches 1 run summon armor_stand 10016 3 16 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}
execute if score $Map Mode matches 10 run execute if score $Hill Mode matches 2 run clone 10013 -2 13 10019 -2 19 10014 28 13
execute if score $Map Mode matches 10 run execute if score $Hill Mode matches 2 run summon armor_stand 10016 29 16 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}





#Ice Spikes
execute if score $Map Mode matches 11 run clone 11016 16 78 11020 16 82 11016 11 78
execute if score $Map Mode matches 11 run summon armor_stand 11018 12 80 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}





#Jungle Pieks
execute if score $Map Mode matches 12 run execute store result score $Hill Mode run random value 1..2
execute if score $Map Mode matches 12 run execute if score $Hill Mode matches 1 run clone 12019 2 52 12024 2 57 12019 4 52
execute if score $Map Mode matches 12 run execute if score $Hill Mode matches 1 run summon armor_stand 12021 5 55 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}
execute if score $Map Mode matches 12 run execute if score $Hill Mode matches 2 run clone 12056 1 52 12061 1 57 12056 3 52
execute if score $Map Mode matches 12 run execute if score $Hill Mode matches 2 run summon armor_stand 12059.00 4 55.00 {Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["koth"]}