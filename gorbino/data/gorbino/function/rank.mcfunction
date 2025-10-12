schedule function gorbino:rank 300s

execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_1] text set value "1st:"
execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_2] text set value "2nd:"
execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_3] text set value "3rd:"
execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_4] text set value "4th:"
execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_5] text set value "5th:"
execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_6] text set value "6th:"
execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_7] text set value "7th:"
execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_8] text set value "8th:"
execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_9] text set value "9th:"
execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_10] text set value "10th:"

scoreboard players set @a GB_Rank 0
scoreboard players set $$ GB_Rank 1

scoreboard players set $ GB_Milestones_Wins 0
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins > $ GB_Milestones_Wins run scoreboard players operation $ GB_Milestones_Wins > @s GB_Milestones_Wins
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins = $ GB_Milestones_Wins run scoreboard players set @s GB_Rank 1

scoreboard players set $ GB_Milestones_Wins 0
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins > $ GB_Milestones_Wins run scoreboard players operation $ GB_Milestones_Wins = @s GB_Milestones_Wins
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins = $ GB_Milestones_Wins run scoreboard players set @s GB_Rank 2

scoreboard players set $ GB_Milestones_Wins 0
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins > $ GB_Milestones_Wins run scoreboard players operation $ GB_Milestones_Wins = @s GB_Milestones_Wins
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins = $ GB_Milestones_Wins run scoreboard players set @s GB_Rank 3

scoreboard players set $ GB_Milestones_Wins 0
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins > $ GB_Milestones_Wins run scoreboard players operation $ GB_Milestones_Wins = @s GB_Milestones_Wins
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins = $ GB_Milestones_Wins run scoreboard players set @s GB_Rank 4

scoreboard players set $ GB_Milestones_Wins 0
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins > $ GB_Milestones_Wins run scoreboard players operation $ GB_Milestones_Wins = @s GB_Milestones_Wins
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins = $ GB_Milestones_Wins run scoreboard players set @s GB_Rank 5

scoreboard players set $ GB_Milestones_Wins 0
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins > $ GB_Milestones_Wins run scoreboard players operation $ GB_Milestones_Wins = @s GB_Milestones_Wins
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins = $ GB_Milestones_Wins run scoreboard players set @s GB_Rank 6

scoreboard players set $ GB_Milestones_Wins 0
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins > $ GB_Milestones_Wins run scoreboard players operation $ GB_Milestones_Wins = @s GB_Milestones_Wins
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins = $ GB_Milestones_Wins run scoreboard players set @s GB_Rank 7

scoreboard players set $ GB_Milestones_Wins 0
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins > $ GB_Milestones_Wins run scoreboard players operation $ GB_Milestones_Wins = @s GB_Milestones_Wins
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins = $ GB_Milestones_Wins run scoreboard players set @s GB_Rank 8

scoreboard players set $ GB_Milestones_Wins 0
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins > $ GB_Milestones_Wins run scoreboard players operation $ GB_Milestones_Wins = @s GB_Milestones_Wins
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins = $ GB_Milestones_Wins run scoreboard players set @s GB_Rank 9

scoreboard players set $ GB_Milestones_Wins 0
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins > $ GB_Milestones_Wins run scoreboard players operation $ GB_Milestones_Wins = @s GB_Milestones_Wins
execute as @a[scores={GB_Rank=0}] if score @s GB_Milestones_Wins = $ GB_Milestones_Wins run scoreboard players set @s GB_Rank 10

execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_1] text set value ["1st: ",{"selector":"@r[scores={GB_Rank=1}]"}," ",{"score":{"name":"@r[scores={GB_Rank=1}]","objective":"GB_Milestones_Wins"}}]
execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_2] text set value ["2nd: ",{"selector":"@r[scores={GB_Rank=2}]"}," ",{"score":{"name":"@r[scores={GB_Rank=2}]","objective":"GB_Milestones_Wins"}}]
execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_3] text set value ["3rd: ",{"selector":"@r[scores={GB_Rank=3}]"}," ",{"score":{"name":"@r[scores={GB_Rank=3}]","objective":"GB_Milestones_Wins"}}]
execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_4] text set value ["4th: ",{"selector":"@r[scores={GB_Rank=4}]"}," ",{"score":{"name":"@r[scores={GB_Rank=4}]","objective":"GB_Milestones_Wins"}}]
execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_5] text set value ["5th: ",{"selector":"@r[scores={GB_Rank=5}]"}," ",{"score":{"name":"@r[scores={GB_Rank=5}]","objective":"GB_Milestones_Wins"}}]
execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_6] text set value ["6th: ",{"selector":"@r[scores={GB_Rank=6}]"}," ",{"score":{"name":"@r[scores={GB_Rank=6}]","objective":"GB_Milestones_Wins"}}]
execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_7] text set value ["7th: ",{"selector":"@r[scores={GB_Rank=7}]"}," ",{"score":{"name":"@r[scores={GB_Rank=7}]","objective":"GB_Milestones_Wins"}}]
execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_8] text set value ["8th: ",{"selector":"@r[scores={GB_Rank=8}]"}," ",{"score":{"name":"@r[scores={GB_Rank=8}]","objective":"GB_Milestones_Wins"}}]
execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_9] text set value ["9th: ",{"selector":"@r[scores={GB_Rank=9}]"}," ",{"score":{"name":"@r[scores={GB_Rank=9}]","objective":"GB_Milestones_Wins"}}]
execute in gorbino:lobby run data modify entity @e[type=text_display,limit=1,sort=arbitrary,tag=GB_10] text set value ["10th: ",{"selector":"@r[scores={GB_Rank=10}]"}," ",{"score":{"name":"@r[scores={GB_Rank=10}]","objective":"GB_Milestones_Wins"}}]
