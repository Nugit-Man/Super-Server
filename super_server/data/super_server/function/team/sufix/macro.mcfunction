$execute if entity @s[scores={MAIN_Game=0}] run team modify $(uuid) suffix {text:" [LOBBY]",color:white}
$execute if entity @s[scores={MAIN_Game=1}] run team modify $(uuid) suffix {text: " [ASC]",color:white}
$execute if entity @s[scores={MAIN_Game=2}] run team modify $(uuid) suffix {text: " [FI]",color:white}
$execute if entity @s[scores={MAIN_Game=3..4}] run team modify $(uuid) suffix {text: " [GB]",color:white}
$execute if entity @s[scores={MAIN_Game=5}] run team modify $(uuid) suffix {text: " [SKY]",color:white}
$execute if entity @s[scores={MAIN_Game=6}] run team modify $(uuid) suffix {text: " [MACE]",color:white}
$execute if entity @s[scores={MAIN_Game=7}] run team modify $(uuid) suffix {text: " [RIC]",color:white}