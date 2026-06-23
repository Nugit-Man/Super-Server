#clear schedueles if no one is playing
schedule function final_island:optimize/schedule 5s

execute if entity @a[tag=GoTo_Final_Island] run function final_island:optimize/schedule_boot
execute unless entity @a[scores={MAIN_Game=2}] run function final_island:optimize/schedule_clear