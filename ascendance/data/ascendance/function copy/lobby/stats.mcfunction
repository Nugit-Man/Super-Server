scoreboard players add @a[tag=Stats_Check] Stats_Check 1


#text 1-2
execute at @a[scores={Stats_Check=40}] run playsound minecraft:entity.villager.ambient neutral @a[scores={Stats_Check=1}]
tellraw @a[scores={Stats_Check=1}] ["Hello, I am Maxwell."]
execute at @a[scores={Stats_Check=40}] run playsound minecraft:entity.villager.ambient neutral @a[scores={Stats_Check=40}]
tellraw @a[scores={Stats_Check=40}] ["You want to see your stats do you?"]






#text 3
execute at @a[scores={Stats_Check=80}] run playsound minecraft:entity.villager.ambient neutral @a[scores={Stats_Check=80}]
tellraw @a[scores={Stats_Check=80,Total_Wins=..9}] ["Well ... you kinda ",{"text":"suck","color":"red"}]
tellraw @a[scores={Stats_Check=80,Total_Wins=10..24}] ["Well, I guess I could show you a couple ..."]
tellraw @a[scores={Stats_Check=80,Total_Wins=25..99}] ["I think there is a few I can show you"]
tellraw @a[scores={Stats_Check=80,Total_Wins=100..}] ["You seem quite good at this game so I guess I can show you a some"]






#text 4
execute at @a[scores={Stats_Check=120}] run playsound minecraft:entity.villager.ambient neutral @a[scores={Stats_Check=120}]
tellraw @a[scores={Stats_Check=120,Total_Wins=..9}] ["Come back when you have some ",{"text":"Wins","color":"yellow","underlined":true,"bold":true}]
execute as @a[scores={Stats_Check=120,Total_Wins=10..24}] run tellraw @s ["You currently only have ",{"score":{"objective":"Total_Kills","name":"@s"}}," kills."]
execute as @a[scores={Stats_Check=120,Total_Wins=25..}] run tellraw @s ["You have ",{"score":{"objective":"Total_Kills","name":"@s"}}," kills."]


#text 5
execute at @a[scores={Stats_Check=160,Total_Wins=10..}] run playsound minecraft:entity.villager.ambient neutral @a[scores={Stats_Check=160,Total_Wins=10..}]
execute as @a[scores={Stats_Check=160,Total_Wins=10..24}] run tellraw @s ["And you have died ",{"score":{"objective":"Total_Deaths","name":"@s"}}," Times."]
execute as @a[scores={Stats_Check=160,Total_Wins=25..}] run tellraw @s ["And have died ",{"score":{"objective":"Total_Deaths","name":"@s"}}," times."]






#text 6
execute at @a[scores={Stats_Check=200,Total_Wins=10..}] run playsound minecraft:entity.villager.ambient neutral @a[scores={Stats_Check=200,Total_Wins=10..}]
execute as @a[scores={Stats_Check=200,Total_Wins=10..24}] run tellraw @s ["Win a few more times if you want to see more stats."]
execute as @a[scores={Stats_Check=200,Total_Wins=25..}] run tellraw @s ["On top of that you have ",{"score":{"objective":"Total_Wins","name":"@s"}}," wins."]







#text 7
execute at @a[scores={Stats_Check=240,Total_Wins=25..}] run playsound minecraft:entity.villager.ambient neutral @a[scores={Stats_Check=200,Total_Wins=25..}]
execute as @a[scores={Stats_Check=240,Total_Wins=25..99,KDR=..9999}] run tellraw @s ["And lastly, your KDR is: ",{"score":{"objective":"Snowball","name":"@s"}},".0",{"score":{"objective":"KDR","name":"@s"}}]
execute as @a[scores={Stats_Check=240,Total_Wins=25..99,KDR=10000..}] run tellraw @s ["And lastly, your KDR is: ",{"score":{"objective":"Snowball","name":"@s"}},".",{"score":{"objective":"KDR","name":"@s"}}]
execute as @a[scores={Stats_Check=240,Total_Wins=100..,KDR=..9999}] run tellraw @s ["You have a KDR of: ",{"score":{"objective":"Snowball","name":"@s"}},".0",{"score":{"objective":"KDR","name":"@s"}}]
execute as @a[scores={Stats_Check=240,Total_Wins=100..,KDR=10000..}] run tellraw @s ["You have a KDR of: ",{"score":{"objective":"Snowball","name":"@s"}},".",{"score":{"objective":"KDR","name":"@s"}}]




#text 8 (More to come later, I just dont want to do any more)
execute at @a[scores={Stats_Check=280,Total_Wins=100..}] run playsound minecraft:entity.villager.ambient neutral @a[scores={Stats_Check=200,Total_Wins=100..}]
execute as @a[scores={Stats_Check=280,Total_Wins=100..}] run tellraw @s ["Lastly, you have jumped ",{"score":{"objective":"Total_Jumps","name":"@s"}}," times"]







tag @a[scores={Stats_Check=500..}] remove Stats_Check