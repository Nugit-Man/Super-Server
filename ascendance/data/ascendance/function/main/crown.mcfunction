#Lose Crown
item replace entity @a[scores={MAIN_Game=1},tag=AS_Crown_Lose] armor.head with air
tag @a[tag=AS_Crown_Lose,scores={MAIN_Game=1}] remove AS_Crown
tag @a[scores={MAIN_Game=1}] remove AS_Crown_Lose

#Gain Crown
item replace entity @a[tag=AS_Crown_Gain,scores={MAIN_Game=1}] armor.head with golden_helmet[enchantments={binding_curse:1},unbreakable={},enchantment_glint_override=false,tooltip_display={hidden_components:[enchantments,unbreakable]}]
effect give @a[scores={MAIN_Game=1},tag=AS_Crown_Gain] glowing infinite 0 true
tag @a[scores={MAIN_Game=1},tag=AS_Crown_Gain] add AS_Crown
tag @a[scores={MAIN_Game=1}] remove AS_Crown_Gain