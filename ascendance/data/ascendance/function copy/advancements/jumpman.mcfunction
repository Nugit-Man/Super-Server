tellraw @s "Rewards:"
tellraw @s "+30 XP"
tag @s add Advancement-jumpman
scoreboard players add @s BonusXP 30
function ascendance:multiplayer/xp