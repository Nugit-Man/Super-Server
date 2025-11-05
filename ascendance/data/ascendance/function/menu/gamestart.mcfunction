team leave @s
tellraw @a[scores={MAIN_Game=1,AS_Mode=0,AS_Gamemode=1..2}] [{selector:"@s"},{text:" is starting a game, "},{"text":"Click here to join!","click_event":{"action":"run_command","command":"trigger AS_JoinGame"},underlined:true}]
tellraw @s[scores={MAIN_Game=1,AS_Mode=0,AS_Gamemode=100}] {text:"Training starting in 10 seconds",italic:false}
scoreboard players add @s AS_Countdown 1
scoreboard players enable @a[scores={MAIN_Game=1,AS_Mode=0}] AS_JoinGame