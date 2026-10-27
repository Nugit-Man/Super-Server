item replace entity @s[scores={MM_Horse_Carrot=0..49}] hotbar.2 with coal[custom_model_data={strings:[bar200]}]
item replace entity @s[scores={MM_Horse_Carrot=50..99}] hotbar.2 with coal[custom_model_data={strings:[bar201]}]
item replace entity @s[scores={MM_Horse_Carrot=100..149}] hotbar.2 with coal[custom_model_data={strings:[bar202]}]
item replace entity @s[scores={MM_Horse_Carrot=150..199}] hotbar.2 with coal[custom_model_data={strings:[bar203]}]
item replace entity @s[scores={MM_Horse_Carrot=200..249}] hotbar.2 with coal[custom_model_data={strings:[bar204]}]
item replace entity @s[scores={MM_Horse_Carrot=250..299}] hotbar.2 with coal[custom_model_data={strings:[bar205]}]
item replace entity @s[scores={MM_Horse_Carrot=300..349}] hotbar.2 with coal[custom_model_data={strings:[bar206]}]
item replace entity @s[scores={MM_Horse_Carrot=350..399}] hotbar.2 with coal[custom_model_data={strings:[bar207]}]
item replace entity @s[scores={MM_Horse_Carrot=400..449}] hotbar.2 with coal[custom_model_data={strings:[bar208]}]
item replace entity @s[scores={MM_Horse_Carrot=450..499}] hotbar.2 with coal[custom_model_data={strings:[bar209]}]
item replace entity @s[scores={MM_Horse_Carrot=500}] hotbar.2 with coal[custom_model_data={strings:[bar210]}]


item replace entity @s[scores={MM_Horse_Jump=0..19}] hotbar.7 with coal[custom_model_data={strings:[bar300]}]
item replace entity @s[scores={MM_Horse_Jump=20..39}] hotbar.7 with coal[custom_model_data={strings:[bar301]}]
item replace entity @s[scores={MM_Horse_Jump=40..59}] hotbar.7 with coal[custom_model_data={strings:[bar302]}]
item replace entity @s[scores={MM_Horse_Jump=60..79}] hotbar.7 with coal[custom_model_data={strings:[bar303]}]
item replace entity @s[scores={MM_Horse_Jump=80..99}] hotbar.7 with coal[custom_model_data={strings:[bar304]}]
item replace entity @s[scores={MM_Horse_Jump=100..119}] hotbar.7 with coal[custom_model_data={strings:[bar305]}]
item replace entity @s[scores={MM_Horse_Jump=120..139}] hotbar.7 with coal[custom_model_data={strings:[bar306]}]
item replace entity @s[scores={MM_Horse_Jump=140..159}] hotbar.7 with coal[custom_model_data={strings:[bar307]}]
item replace entity @s[scores={MM_Horse_Jump=160..179}] hotbar.7 with coal[custom_model_data={strings:[bar308]}]
item replace entity @s[scores={MM_Horse_Jump=180..199}] hotbar.7 with coal[custom_model_data={strings:[bar309]}]
item replace entity @s[scores={MM_Horse_Jump=200..219}] hotbar.7 with coal[custom_model_data={strings:[bar310]}]
item replace entity @s[scores={MM_Horse_Jump=220..239}] hotbar.7 with coal[custom_model_data={strings:[bar311]}]
item replace entity @s[scores={MM_Horse_Jump=240..259}] hotbar.7 with coal[custom_model_data={strings:[bar312]}]
item replace entity @s[scores={MM_Horse_Jump=260..279}] hotbar.7 with coal[custom_model_data={strings:[bar313]}]
item replace entity @s[scores={MM_Horse_Jump=280..299}] hotbar.7 with coal[custom_model_data={strings:[bar314]}]
item replace entity @s[scores={MM_Horse_Jump=300..319}] hotbar.7 with coal[custom_model_data={strings:[bar315]}]
item replace entity @s[scores={MM_Horse_Jump=320..339}] hotbar.7 with coal[custom_model_data={strings:[bar316]}]
item replace entity @s[scores={MM_Horse_Jump=340..359}] hotbar.7 with coal[custom_model_data={strings:[bar317]}]
item replace entity @s[scores={MM_Horse_Jump=360..379}] hotbar.7 with coal[custom_model_data={strings:[bar318]}]
item replace entity @s[scores={MM_Horse_Jump=380..399}] hotbar.7 with coal[custom_model_data={strings:[bar319]}]
item replace entity @s[scores={MM_Horse_Jump=400..419}] hotbar.7 with coal[custom_model_data={strings:[bar320]}]
item replace entity @s[scores={MM_Horse_Jump=420..439}] hotbar.7 with coal[custom_model_data={strings:[bar321]}]
item replace entity @s[scores={MM_Horse_Jump=440..459}] hotbar.7 with coal[custom_model_data={strings:[bar322]}]
item replace entity @s[scores={MM_Horse_Jump=460..479}] hotbar.7 with coal[custom_model_data={strings:[bar323]}]
item replace entity @s[scores={MM_Horse_Jump=480..499}] hotbar.7 with coal[custom_model_data={strings:[bar324]}]
item replace entity @s[scores={MM_Horse_Jump=500..519}] hotbar.7 with coal[custom_model_data={strings:[bar325]}]
item replace entity @s[scores={MM_Horse_Jump=520..539}] hotbar.7 with coal[custom_model_data={strings:[bar326]}]
item replace entity @s[scores={MM_Horse_Jump=540..559}] hotbar.7 with coal[custom_model_data={strings:[bar327]}]
item replace entity @s[scores={MM_Horse_Jump=560..579}] hotbar.7 with coal[custom_model_data={strings:[bar328]}]
item replace entity @s[scores={MM_Horse_Jump=580..599}] hotbar.7 with coal[custom_model_data={strings:[bar329]}]
item replace entity @s[scores={MM_Horse_Jump=600}] hotbar.7 with coal[custom_model_data={strings:[bar330]}]








#Horse Jump
scoreboard players set @s[scores={MM_Horse_Jump_Release=0}] MM_Horse_Jump 0
scoreboard players set @s[scores={MM_Horse_Jump=601..}] MM_Horse_Jump 600
scoreboard players remove @s[scores={MM_Horse_Jump_Release=1..}] MM_Horse_Jump_Release 1
execute as @s[scores={MM_Horse_Jump_Release=1}] run scoreboard players set $x player_motion.api.launch 0
execute as @s[scores={MM_Horse_Jump_Release=1}] run scoreboard players set $y player_motion.api.launch 100
execute as @s[scores={MM_Horse_Jump_Release=1}] run scoreboard players set $z player_motion.api.launch 1000
execute as @s[scores={MM_Horse_Jump_Release=1,MM_Horse_Jump=100..200}] run scoreboard players set $strength player_motion.api.launch 10000
execute as @s[scores={MM_Horse_Jump_Release=1,MM_Horse_Jump=201..300}] run scoreboard players set $strength player_motion.api.launch 12000
execute as @s[scores={MM_Horse_Jump_Release=1,MM_Horse_Jump=301..400}] run scoreboard players set $strength player_motion.api.launch 14000
execute as @s[scores={MM_Horse_Jump_Release=1,MM_Horse_Jump=401..450}] run scoreboard players set $strength player_motion.api.launch 16000
execute as @s[scores={MM_Horse_Jump_Release=1,MM_Horse_Jump=451..500}] run scoreboard players set $strength player_motion.api.launch 18000
execute as @s[scores={MM_Horse_Jump_Release=1,MM_Horse_Jump=501..550}] run scoreboard players set $strength player_motion.api.launch 20000
execute as @s[scores={MM_Horse_Jump_Release=1,MM_Horse_Jump=551..600}] run scoreboard players set $strength player_motion.api.launch 22000
execute as @s[scores={MM_Horse_Jump_Release=1,MM_Horse_Jump=100..}] at @s run function player_motion:api/launch_looking