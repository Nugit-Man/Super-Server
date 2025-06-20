execute if score U_Dota Unlocks matches 2 run execute at @a[scores={Killmessages=1..,Multikill=2}] run playsound minecraft:custom.double_kill master @a[scores={Killmessages=1..,Multikill=2}]
scoreboard players add @a[scores={Killmessages=1..,Multikill=2}] BonusXP 3
execute if score U_Dota Unlocks matches 2 run advancement grant @a[scores={Killmessages=1..,Multikill=2}] only ascendance:dota/double_kill
execute if score U_Dota Unlocks matches 2 run execute at @a[scores={Killmessages=1..,Multikill=3}] run playsound minecraft:custom.triple_kill master @a[scores={Killmessages=1..,Multikill=3}]
scoreboard players add @a[scores={Killmessages=1..,Multikill=3}] BonusXP 5
execute if score U_Dota Unlocks matches 2 run advancement grant @a[scores={Killmessages=1..,Multikill=3}] only ascendance:dota/triple_kill
execute if score U_Dota Unlocks matches 2 run execute at @a[scores={Killmessages=1..,Multikill=4}] run playsound minecraft:custom.mega_kill master @a[scores={Killmessages=1..,Multikill=4}]
scoreboard players add @a[scores={Killmessages=1..,Multikill=4}] BonusXP 10
execute if score U_Dota Unlocks matches 2 run advancement grant @a[scores={Killmessages=1..,Multikill=4}] only ascendance:dota/mega_kill
execute if score U_Dota Unlocks matches 2 run execute at @a[scores={Killmessages=1..,Multikill=5}] run playsound minecraft:custom.ultra_kill master @a[scores={Killmessages=1..,Multikill=5}]
scoreboard players add @a[scores={Killmessages=1..,Multikill=5}] BonusXP 20
execute if score U_Dota Unlocks matches 2 run advancement grant @a[scores={Killmessages=1..,Multikill=5}] only ascendance:dota/ultra_kill
execute if score U_Dota Unlocks matches 2 run execute at @a[scores={Killmessages=1..,Multikill=6..9}] run playsound minecraft:custom.monster_kill master @a[scores={Killmessages=1..,Multikill=6..9}]
scoreboard players add @a[scores={Killmessages=1..,Multikill=6..10}] BonusXP 50
execute if score U_Dota Unlocks matches 2 run advancement grant @a[scores={Killmessages=1..,Multikill=6..9}] only ascendance:dota/monster_kill
execute if score U_Dota Unlocks matches 2 run execute at @a[scores={Killmessages=1..,Multikill=10..}] run playsound minecraft:custom.combo_whore master @a[scores={Killmessages=1..,Multikill=10..}]
scoreboard players add @a[scores={Killmessages=1..,Multikill=10..}] BonusXP 20
execute if score U_Dota Unlocks matches 2 run advancement grant @a[scores={Killmessages=1..,Multikill=10..}] only ascendance:dota/combo_whore
execute if score U_Dota Unlocks matches 2 run execute at @a[scores={Dotakills=3,Killmessages=1..}] run playsound minecraft:custom.killing_spree master @a[scores={Dotakills=3,Killmessages=1..}]
scoreboard players add @a[scores={Dotakills=3,Killmessages=1..}] BonusXP 5
execute if score U_Dota Unlocks matches 2 run advancement grant @a[scores={Dotakills=3,Killmessages=1..}] only ascendance:dota/killing_spree
execute if score U_Dota Unlocks matches 2 run execute at @a[scores={Dotakills=5,Killmessages=1..}] run playsound minecraft:custom.ownage master @a[scores={Dotakills=5,Killmessages=1..}]
scoreboard players add @a[scores={Dotakills=5,Killmessages=1..}] BonusXP 2
execute if score U_Dota Unlocks matches 2 run advancement grant @a[scores={Dotakills=5,Killmessages=1..}] only ascendance:dota/ownage
execute if score U_Dota Unlocks matches 2 run execute at @a[scores={Dotakills=7,Killmessages=1..}] run playsound minecraft:custom.dominating master @a[scores={Dotakills=7,Killmessages=1..}]
scoreboard players add @a[scores={Dotakills=7,Killmessages=1..}] BonusXP 3
execute if score U_Dota Unlocks matches 2 run advancement grant @a[scores={Dotakills=7,Killmessages=1..}] only ascendance:dota/dominating
execute if score U_Dota Unlocks matches 2 run execute at @a[scores={Dotakills=10,Killmessages=1..}] run playsound minecraft:custom.unstoppable master @a[scores={Dotakills=10,Killmessages=1..}]
scoreboard players add @a[scores={Dotakills=10,Killmessages=1..}] BonusXP 5
execute if score U_Dota Unlocks matches 2 run advancement grant @a[scores={Dotakills=10,Killmessages=1..}] only ascendance:dota/unstoppable
execute if score U_Dota Unlocks matches 2 run execute at @a[scores={Dotakills=15,Killmessages=1..}] run playsound minecraft:custom.rampage master @a[scores={Dotakills=15,Killmessages=1..}]
scoreboard players add @a[scores={Dotakills=15,Killmessages=1..}] BonusXP 7
execute if score U_Dota Unlocks matches 2 run advancement grant @a[scores={Dotakills=15,Killmessages=1..}] only ascendance:dota/rampage
execute if score U_Dota Unlocks matches 2 run execute at @a[scores={Dotakills=20,Killmessages=1..}] run playsound minecraft:custom.wicked_sick master @a[scores={Dotakills=20,Killmessages=1..}]
scoreboard players add @a[scores={Dotakills=20,Killmessages=1..}] BonusXP 10
execute if score U_Dota Unlocks matches 2 run advancement grant @a[scores={Dotakills=20,Killmessages=1..}] only ascendance:dota/wicked_sick
execute if score U_Dota Unlocks matches 2 run execute at @a[scores={Dotakills=25,Killmessages=1..}] run playsound minecraft:custom.godlike master @a[scores={Dotakills=25,Killmessages=1..}]
scoreboard players add @a[scores={Dotakills=25,Killmessages=1..}] BonusXP 20
execute if score U_Dota Unlocks matches 2 run advancement grant @a[scores={Dotakills=25,Killmessages=1..}] only ascendance:dota/godlike
execute if score U_Dota Unlocks matches 2 run execute at @a[scores={Dotakills=30,Killmessages=1..}] run playsound minecraft:custom.holy_shit master @a[scores={Dotakills=30,Killmessages=1..}]
scoreboard players add @a[scores={Dotakills=30,Killmessages=1..}] BonusXP 30
execute if score U_Dota Unlocks matches 2 run advancement grant @a[scores={Dotakills=30,Killmessages=1..}] only ascendance:dota/holy_shit