team leave @s
tellraw @a[scores={MAIN_Game=1,AS_Mode=0}] [{selector:"@s"},{text:" is starting a game, "},{"text":"Click here to join!","click_event":{"action":"run_command","command":"trigger AS_JoinGame"},underlined:true}]
scoreboard players add @s AS_Countdown 1
team join Ascendance @s