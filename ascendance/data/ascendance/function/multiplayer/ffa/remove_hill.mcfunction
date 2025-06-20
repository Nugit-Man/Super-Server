#Desert Tomb
execute if score $Map Mode matches 1 run execute if score $Hill Mode matches 1 run clone 1017 -53 3 1023 -53 7 1017 -2 3
execute if score $Map Mode matches 1 run execute if score $Hill Mode matches 2 run clone 1017 -53 15 1023 -53 21 1017 -2 15
execute if score $Map Mode matches 1 run execute if score $Hill Mode matches 3 run clone 1017 -53 24 1023 -53 30 1017 -2 24
execute if score $Map Mode matches 1 run execute if score $Hill Mode matches 4 run clone 1017 -49 32 1023 -49 35 1017 2 32


#Tabletop
execute if score $Map Mode matches 2 run clone 2029 39 57 2035 39 63 2029 41 57

#brtualism
execute if score $Map Mode matches 3 run execute if score $Hill Mode matches 1 run clone 3076 -48 25 3082 -48 31 3076 2 25
execute if score $Map Mode matches 3 run execute if score $Hill Mode matches 2 run clone 3076 -48 41 3082 -48 47 3076 2 41
execute if score $Map Mode matches 3 run execute if score $Hill Mode matches 3 run clone 3076 -34 61 3082 -34 67 3076 16 61
execute if score $Map Mode matches 3 run execute if score $Hill Mode matches 4 run clone 3077 -34 76 3081 -34 82 3077 16 76





#colosium
execute if score $Map Mode matches 4 run clone 4078 -52 78 4084 -52 84 4078 -2 78


#The Club
execute if score $Map Mode matches 5 run execute if score $Hill Mode matches 1 run clone 5002 -44 14 5007 -44 20 5002 6 14
execute if score $Map Mode matches 5 run execute if score $Hill Mode matches 2 run clone 5014 -47 14 5020 -47 20 5014 3 14
execute if score $Map Mode matches 5 run execute if score $Hill Mode matches 3 run clone 5021 -44 14 5024 -44 20 5021 6 14


#Shipment
execute if score $Map Mode matches 6 run clone 6016 8 16 6021 8 21 6016 12 16



#Final Island
execute if score $Map Mode matches 7 run execute if score $Hill Mode matches 1 run clone 7197 37 13 7201 37 17 7197 40 13
execute if score $Map Mode matches 7 run execute if score $Hill Mode matches 2 run clone 7081 27 34 7085 27 38 7085 29 38
execute if score $Map Mode matches 7 run execute if score $Hill Mode matches 3 run clone 7099 35 124 7103 35 128 7099 37 124







#Caves
execute if score $Map Mode matches 8 run execute if score $Hill Mode matches 1 run clone 8006 2 24 8010 2 28 8006 4 24
execute if score $Map Mode matches 8 run execute if score $Hill Mode matches 2 run clone 8044 2 50 8048 2 54 8044 4 50
execute if score $Map Mode matches 8 run execute if score $Hill Mode matches 3 run clone 8069 2 52 8073 2 56 8069 4 52



#Ravine
execute if score $Map Mode matches 9 run execute if score $Hill Mode matches 1 run clone 9030 -1 66 9036 -1 72 9036 1 72
execute if score $Map Mode matches 9 run execute if score $Hill Mode matches 2 run clone 9079 9 32 9085 9 38 9079 11 32
execute if score $Map Mode matches 9 run execute if score $Hill Mode matches 3 run clone 9097 10 76 9101 10 80 9097 12 80





#Cube
execute if score $Map Mode matches 10 run execute if score $Hill Mode matches 1 run clone 10013 -1 13 10019 -1 19 10014 2 13
execute if score $Map Mode matches 10 run execute if score $Hill Mode matches 2 run clone 10013 -3 13 10019 -3 19 10014 28 13





#Ice Spikes
execute if score $Map Mode matches 12 run clone 11016 17 78 11020 17 82 11016 11 78


#Jungle Pieks
execute if score $Map Mode matches 12 run execute store result score $Hill Mode run random value 1..2
execute if score $Map Mode matches 12 run execute if score $Hill Mode matches 1 run clone 12019 0 52 12024 0 57 12019 4 52
execute if score $Map Mode matches 12 run execute if score $Hill Mode matches 2 run clone 12056 -1 52 12061 -1 57 12056 3 52





kill @e[tag=koth]