summon text_display ~ ~ ~ {Tags:["reader"]}
data modify entity @e[type=text_display,tag=reader,limit=1] text set value {"selector":"@p"}
data modify storage parkourtrial:scratchpad username set from entity @e[type=text_display,tag=reader,limit=1] text.text
kill @e[type=text_display,tag=reader,limit=1]