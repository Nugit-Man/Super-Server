execute positioned ~ ~1 ~ run scoreboard players set @e[type=villager,limit=1,sort=nearest,tag=ve.editing] ve.silent 0
data merge entity @s {data:{Silent:"No"}}

data modify entity @e[type=villager,limit=1,sort=nearest,tag=ve.editing] Silent set value false

item replace block ~ ~ ~ container.21 with goat_horn[custom_name={text:"Silent",color:"aqua",italic:false},lore=[[{text:"Current value: ",color:"green",italic:false},{text: "OFF",color:"gray",italic:false}]],custom_data={ve_ui:1b}]